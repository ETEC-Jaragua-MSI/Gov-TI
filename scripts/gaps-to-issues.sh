#!/usr/bin/env bash
# ─────────────────────────────────────────────────────────────
# gaps-to-issues.sh — Cria issues de gaps no GitHub Projects
#
# USO:
#   bash scripts/gaps-to-issues.sh                  # Dry-run (preview)
#   bash scripts/gaps-to-issues.sh --create         # Cria issues no GitHub
#   bash scripts/gaps-to-issues.sh --create --project NUM  # Adiciona ao Project V2
#
# FONTE DE DADOS:
#   scripts/gaps.tsv — edite este arquivo para adicionar/remover gaps
#   sem precisar alterar o script.
#
# PRE-REQUISITOS:
#   - gh CLI autenticado (gh auth login)
#   - Repositorio com remote configurado
# ─────────────────────────────────────────────────────────────

set -euo pipefail

CREATE=false
PROJECT=""

while [[ $# -gt 0 ]]; do
  case "$1" in
    --create) CREATE=true; shift ;;
    --project) PROJECT="$2"; shift 2 ;;
    *) echo "Uso: $0 [--create] [--project NUM]"; exit 1 ;;
  esac
done

# Labels de severidade
declare -A SEV_COLORS=(
  [critica]="b60205"
  [alta]="e11d48"
  [media]="f97316"
  [baixa]="0ea5e9"
)

# Mapeamento de slug do projeto → nome de exibição
# Chave: slug usado como label (lowercase, sem acentos, sem espaços)
# Valor: nome legível para exibição nas Issues
declare -A PROJ_DISPLAY=(
  [sigatccompact]="Sigatccompact (Ativos)"
  [app-de-libras]="App de Libras"
  [sos-epis]="S.O.S. EPIs"
  [automacao-residencial]="Automacao Residencial"
  [automacao-tratamento-dados]="Automacao Trat. Dados"
  [gestao-incidentes-infopro]="Gestao Incidentes InfoPro"
)

# ─────────────────────────────────────────────────────────────
# DADOS: carregados do arquivo gaps.tsv
# Formato das colunas (separadas por TAB):
#   projeto  severidade  area  descricao
# ─────────────────────────────────────────────────────────────

GAPS_FILE="$(dirname "$0")/gaps.tsv"

if [ ! -f "$GAPS_FILE" ]; then
  echo "❌ Arquivo de gaps não encontrado: $GAPS_FILE"
  echo "   Crie o arquivo scripts/gaps.tsv com os gaps do semestre."
  exit 1
fi

# Ler TSV e converter para array (pula cabeçalho)
mapfile -t GAPS < <(tail -n +2 "$GAPS_FILE" | awk -F'\t' '{print $1"|"$2"|"$3"|"$4}')

echo "================================================="
echo " Gaps README → GitHub Issues"
echo " Total: ${#GAPS[@]} gaps"
echo "================================================="
echo ""

# Criar labels se necessario
if $CREATE; then
  echo ">>> Criando labels de severidade..."
  for sev in "${!SEV_COLORS[@]}"; do
    gh label create "sev-${sev}" --color "${SEV_COLORS[$sev]}" --description "Severidade: ${sev}" --force 2>/dev/null || true
  done
  gh label create "gap-readme" --color "5319e7" --description "Gap identificado no README do TCC" --force 2>/dev/null || true

  echo ">>> Criando labels de projeto (para o workflow de progresso)..."
  # Labels gerados a partir do mapeamento PROJ_DISPLAY (slugs normalizados)
  declare -A PROJ_COLORS=(
    [sigatccompact]="1d76db"
    [app-de-libras]="0e8a16"
    [sos-epis]="d93f0b"
    [automacao-residencial]="fbca04"
    [automacao-tratamento-dados]="c5def5"
    [gestao-incidentes-infopro]="0075ca"
  )
  for slug in "${!PROJ_COLORS[@]}"; do
    display="${PROJ_DISPLAY[$slug]:-$slug}"
    gh label create "$slug" \
      --color "${PROJ_COLORS[$slug]}" \
      --description "Projeto: $display" \
      --force 2>/dev/null || true
  done
  echo ""
fi

# Gerar issues
COUNT=0
for gap in "${GAPS[@]}"; do
  IFS='|' read -r PROJ SEV AREA DESC <<< "$gap"
  COUNT=$((COUNT + 1))

  TITLE="[GAP-${SEV^^}] ${PROJ}: ${DESC}"
  # Truncar titulo se muito longo
  if [ ${#TITLE} -gt 120 ]; then
    TITLE="${TITLE:0:117}..."
  fi

  BODY="## Gap no README

**Projeto:** \`${PROJ}\`
**Severidade:** ${SEV^^}
**Area:** ${AREA}

### Descricao
${DESC}

### Acao necessaria
Preencher/corrigir a secao \`${AREA}\` do README.md seguindo o modelo do projeto InfoPro (pasta \`exemplo/\`).

### Referencia
- Consulte \`exemplo/\` neste repositorio como modelo
- Veja o [Indice de Artefatos](../00-INDICE-ARTEFATOS.md) para a lista completa"

  echo "  #${COUNT} [${SEV^^}] ${PROJ} — ${DESC}"

  if $CREATE; then
    ISSUE_URL=$(gh issue create \
      --title "${TITLE}" \
      --body "${BODY}" \
      --label "gap-readme,sev-${SEV},${PROJ}" \
      2>&1)
    echo "       → ${ISSUE_URL}"

    if [ -n "$PROJECT" ]; then
      ISSUE_NUM=$(echo "$ISSUE_URL" | grep -oP '\d+$')
      gh project item-add "$PROJECT" --owner "@me" --url "$ISSUE_URL" 2>/dev/null || true
    fi
  fi
done

echo ""
echo "================================================="
echo " Resumo: ${COUNT} issues"
if $CREATE; then
  echo " Status: CRIADAS no GitHub"
else
  echo " Status: DRY-RUN (use --create para criar)"
fi
echo "================================================="
