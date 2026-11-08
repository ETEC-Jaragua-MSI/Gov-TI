#!/usr/bin/env bash
# ─────────────────────────────────────────────────────────────────────────────
# review-readme.sh — Gerador de relatório de completude do README de TCC
#
# USO:
#   bash scripts/review-readme.sh OWNER/REPO
#   bash scripts/review-readme.sh OWNER/REPO --output relatorio.md
#   bash scripts/review-readme.sh OWNER/REPO --issues   # cria Issues dos gaps
#
# EXEMPLOS:
#   bash scripts/review-readme.sh ETEC-Jaragua-MSI/tcc-app-libras
#   bash scripts/review-readme.sh ETEC-Jaragua-MSI/tcc-sos-epis --output /tmp/sos-relatorio.md
#
# PRÉ-REQUISITOS:
#   - gh CLI autenticado (gh auth login)
# ─────────────────────────────────────────────────────────────────────────────

set -euo pipefail

# ─── Argumentos ──────────────────────────────────────────────────────────────
if [ $# -lt 1 ]; then
  echo "Uso: $0 OWNER/REPO [--output arquivo.md] [--issues]"
  echo "Ex:  $0 ETEC-Jaragua-MSI/tcc-app-de-libras"
  exit 1
fi

REPO="$1"
OUTPUT=""
CRIAR_ISSUES=false

shift
while [[ $# -gt 0 ]]; do
  case "$1" in
    --output) OUTPUT="$2"; shift 2 ;;
    --issues) CRIAR_ISSUES=true; shift ;;
    *) echo "Opção desconhecida: $1"; exit 1 ;;
  esac
done

# ─── Seções esperadas no README ──────────────────────────────────────────────
# Formato: "slug|Título esperado no README|peso (1-3)"
# Peso 3 = obrigatório / 2 = importante / 1 = complementar
declare -a SECOES=(
  "sobre|Sobre o Projeto|3"
  "problema|Problema|3"
  "objetivos|Objetivos|3"
  "framework|Framework|3"
  "escopo|Escopo|2"
  "entregaveis|Entregáveis|3"
  "cronograma|Cronograma|2"
  "resultados|Resultados|3"
  "referencias|Referências|3"
  "glossario|Glossário|2"
  "equipe|Equipe|2"
  "licenca|Licença|1"
)

# ─── Baixar README via gh CLI ────────────────────────────────────────────────
echo "📥 Baixando README.md de $REPO..."
README_CONTEUDO=$(gh api "repos/$REPO/contents/README.md" \
  --jq '.content' 2>/dev/null | base64 -d 2>/dev/null || true)

if [ -z "$README_CONTEUDO" ]; then
  echo "❌ Não foi possível ler o README.md de $REPO"
  echo "   Verifique se o repositório existe e se você tem acesso."
  exit 1
fi

echo "✅ README.md carregado ($(echo "$README_CONTEUDO" | wc -c) bytes)"

# ─── Análise ─────────────────────────────────────────────────────────────────
DATA=$(TZ="America/Sao_Paulo" date "+%d/%m/%Y às %H:%M (BRT)")

# Contar placeholders
PLACEHOLDERS=$(echo "$README_CONTEUDO" | grep -oP '\{\{[^}]+\}\}' | sort -u || true)
QTD_PLACEHOLDERS=$(echo "$PLACEHOLDERS" | grep -c '{{' || echo "0")

# Verificar checklist
CONCLUIDOS=$(echo "$README_CONTEUDO" | grep -cP '^\s*-\s*\[x\]' || echo "0")
PENDENTES=$(echo "$README_CONTEUDO" | grep -cP '^\s*-\s*\[ \]' || echo "0")
TOTAL_CHECK=$(( CONCLUIDOS + PENDENTES ))
if [ "$TOTAL_CHECK" -gt 0 ]; then
  SCORE_CHECK=$(( (CONCLUIDOS * 100) / TOTAL_CHECK ))
else
  SCORE_CHECK=0
fi

# Verificar seções
SECOES_OK=()
SECOES_FALTANDO=()
PESO_TOTAL=0
PESO_OK=0

for entrada in "${SECOES[@]}"; do
  IFS='|' read -r slug titulo peso <<< "$entrada"
  PESO_TOTAL=$(( PESO_TOTAL + peso ))

  # Busca variações do título (case insensitive, sem acentos opcionais)
  if echo "$README_CONTEUDO" | grep -qiP "^#+\s*.*${slug//[-_]/.?}"; then
    SECOES_OK+=("$titulo ($peso⭐)")
    PESO_OK=$(( PESO_OK + peso ))
  else
    SECOES_FALTANDO+=("$titulo (peso: $peso)")
  fi
done

# Score geral (média ponderada: 60% seções + 40% checklist, descontando placeholders)
if [ "$PESO_TOTAL" -gt 0 ]; then
  SCORE_SECOES=$(( (PESO_OK * 100) / PESO_TOTAL ))
else
  SCORE_SECOES=0
fi

SCORE_GERAL=$(( (SCORE_SECOES * 60 + SCORE_CHECK * 40) / 100 ))

# Desconto por placeholders (cada 5 placeholders = -5 pontos, máx -30)
DESCONTO=$(( (QTD_PLACEHOLDERS / 5) * 5 ))
if [ "$DESCONTO" -gt 30 ]; then DESCONTO=30; fi
SCORE_FINAL=$(( SCORE_GERAL - DESCONTO ))
if [ "$SCORE_FINAL" -lt 0 ]; then SCORE_FINAL=0; fi

# Classificação
if [ "$SCORE_FINAL" -ge 90 ]; then
  CLASSIFICACAO="🟢 EXCELENTE"
elif [ "$SCORE_FINAL" -ge 75 ]; then
  CLASSIFICACAO="🟡 BOM"
elif [ "$SCORE_FINAL" -ge 50 ]; then
  CLASSIFICACAO="🟠 REGULAR"
else
  CLASSIFICACAO="🔴 INSUFICIENTE"
fi

# Barra de progresso
BLOCOS=20
PREENCHIDOS=$(( (SCORE_FINAL * BLOCOS) / 100 ))
BARRA=$(printf '█%.0s' $(seq 1 $PREENCHIDOS 2>/dev/null || true))
BARRA_VAZIA=$(printf '░%.0s' $(seq 1 $(( BLOCOS - PREENCHIDOS )) 2>/dev/null || true))

# ─── Montar relatório ─────────────────────────────────────────────────────────
RELATORIO=$(cat <<MDEOF
# 📊 Relatório de Completude — README.md

> **Repositório:** \`$REPO\`
> **Gerado em:** $DATA
> **Ferramenta:** \`scripts/review-readme.sh\`

---

## Score Geral

\`\`\`
[$BARRA$BARRA_VAZIA] $SCORE_FINAL / 100
\`\`\`

**Classificação: $CLASSIFICACAO**

| Dimensão | Score | Peso |
|----------|-------|------|
| Seções presentes | ${SCORE_SECOES}% | 60% |
| Checklist concluído | ${SCORE_CHECK}% | 40% |
| Desconto placeholders | -${DESCONTO} pts | — |
| **Score final** | **${SCORE_FINAL}/100** | — |

---

## Seções do README

### ✅ Seções encontradas (${#SECOES_OK[@]}/${#SECOES[@]})

MDEOF
)

for sec in "${SECOES_OK[@]}"; do
  RELATORIO+="- ✅ $sec
"
done

RELATORIO+="
### ❌ Seções faltando ou sem título reconhecido (${#SECOES_FALTANDO[@]})

"
for sec in "${SECOES_FALTANDO[@]}"; do
  RELATORIO+="- ❌ $sec
"
done

RELATORIO+="
---

## Checklist de Entrega

| Item | Valor |
|------|-------|
| ✅ Itens concluídos | $CONCLUIDOS |
| ⬜ Itens pendentes | $PENDENTES |
| 📋 Total de itens | $TOTAL_CHECK |
| 📊 Score checklist | ${SCORE_CHECK}% |

---

## Placeholders não preenchidos

"

if [ "$QTD_PLACEHOLDERS" -eq 0 ]; then
  RELATORIO+="✅ Nenhum placeholder \`{{}}\` encontrado.

"
else
  RELATORIO+="⚠️ **$QTD_PLACEHOLDERS campo(s) ainda com template:**

"
  while IFS= read -r ph; do
    [ -n "$ph" ] && RELATORIO+="- \`$ph\`
"
  done <<< "$PLACEHOLDERS"
  RELATORIO+="
"
fi

RELATORIO+="---

## Recomendações

"

if [ "${#SECOES_FALTANDO[@]}" -gt 0 ]; then
  RELATORIO+="1. **Adicionar seções faltando:** ${SECOES_FALTANDO[*]}
"
fi
if [ "$QTD_PLACEHOLDERS" -gt 0 ]; then
  RELATORIO+="2. **Substituir $QTD_PLACEHOLDERS placeholder(s)** pelos dados reais do projeto.
"
fi
if [ "$PENDENTES" -gt 0 ]; then
  RELATORIO+="3. **Concluir $PENDENTES item(ns) do checklist** antes da entrega.
"
fi
if [ "$SCORE_FINAL" -ge 90 ]; then
  RELATORIO+="✅ README está ótimo! Revise apenas os detalhes antes da defesa.
"
fi

RELATORIO+="
---
*Relatório gerado por \`scripts/review-readme.sh\` — Governança de TI / ETEC Jaraguá*"

# ─── Output ──────────────────────────────────────────────────────────────────
if [ -n "$OUTPUT" ]; then
  echo "$RELATORIO" > "$OUTPUT"
  echo ""
  echo "📄 Relatório salvo em: $OUTPUT"
else
  echo ""
  echo "$RELATORIO"
fi

echo ""
echo "══════════════════════════════════════"
echo " Score: $SCORE_FINAL/100 — $CLASSIFICACAO"
echo " Repositório: $REPO"
echo "══════════════════════════════════════"

# ─── Criar Issues se solicitado ──────────────────────────────────────────────
if $CRIAR_ISSUES && [ "${#SECOES_FALTANDO[@]}" -gt 0 ]; then
  echo ""
  echo "📌 Criando Issues para seções faltando..."
  for sec in "${SECOES_FALTANDO[@]}"; do
    TITULO="[GAP] $REPO: Seção '$sec' ausente ou não identificada"
    CORPO="## Gap identificado pelo review-readme.sh

**Repositório:** \`$REPO\`
**Seção faltando:** $sec

### Ação necessária
Adicionar (ou corrigir o título de) a seção no README.md.

### Referência
Consulte \`exemplo/\` neste repositório como modelo.

*Gerado em $DATA*"
    gh issue create \
      --repo "$(gh repo view --json nameWithOwner -q '.nameWithOwner')" \
      --title "$TITULO" \
      --body "$CORPO" \
      --label "gap-readme" 2>/dev/null || true
    echo "  ✅ Issue criada: $TITULO"
  done
fi
