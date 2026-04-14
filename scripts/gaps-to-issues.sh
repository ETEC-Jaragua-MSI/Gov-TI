#!/usr/bin/env bash
# ─────────────────────────────────────────────────────────────
# gaps-to-issues.sh — Cria issues de gaps no GitHub Projects
#
# USO:
#   bash scripts/gaps-to-issues.sh                  # Dry-run (preview)
#   bash scripts/gaps-to-issues.sh --create         # Cria issues no GitHub
#   bash scripts/gaps-to-issues.sh --create --project NUM  # Adiciona ao Project V2
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

# ─────────────────────────────────────────────────────────────
# DADOS: gaps por projeto
# Formato: "PROJETO|SEVERIDADE|AREA|DESCRICAO"
# ─────────────────────────────────────────────────────────────

GAPS=(
  # App de Libras
  "App-de-Libras|critica|badges|Remover placeholders dos badges (Status, Framework)"
  "App-de-Libras|critica|framework|Definir e preencher framework de governanca utilizado"
  "App-de-Libras|critica|framework|Preencher detalhamento de praticas aplicadas"
  "App-de-Libras|critica|referencias|Adicionar referencias bibliograficas (minimo 8 fontes ABNT)"
  "App-de-Libras|alta|sobre|Corrigir formatacao da tabela Sobre o Projeto"
  "App-de-Libras|alta|metodologia|Preencher amostra/participantes da metodologia"
  "App-de-Libras|alta|glossario|Preencher glossario com termos especificos do projeto"
  "App-de-Libras|alta|equipe|Preencher secao Equipe com nomes, RA, funcoes e contatos"
  "App-de-Libras|alta|entregaveis|Preencher entregaveis com localizacao real dos arquivos"
  "App-de-Libras|alta|resultados|Preencher resultados e conclusoes"
  "App-de-Libras|media|cronograma|Corrigir periodo de coleta — datas incoerentes com semestre"
  "App-de-Libras|media|template|Remover comentarios HTML do template"
  "App-de-Libras|baixa|palavras-chave|Padronizar palavras-chave sem placeholders"

  # S.O.S. EPIs
  "SOS-EPIs|critica|badges|Remover placeholders dos badges (Status, Framework)"
  "SOS-EPIs|critica|framework|Preencher tabela de frameworks"
  "SOS-EPIs|critica|framework|Preencher detalhamento de praticas aplicadas"
  "SOS-EPIs|critica|referencias|Adicionar referencias bibliograficas (minimo 8 fontes ABNT)"
  "SOS-EPIs|critica|equipe|Preencher secao Equipe"
  "SOS-EPIs|alta|entregaveis|Substituir nomes de arquivos genericos nos entregaveis"
  "SOS-EPIs|alta|cronograma|Refazer cronograma — 4 fases com atividade identica repetida"
  "SOS-EPIs|alta|resultados|Preencher resultados e conclusoes com metricas ou projecoes"
  "SOS-EPIs|alta|glossario|Preencher glossario com termos especificos (RFID, ESP32, etc.)"
  "SOS-EPIs|media|estrutura|Corrigir estrutura do repositorio — tem placeholders"
  "SOS-EPIs|media|template|Remover comentarios HTML do template"
  "SOS-EPIs|media|cronograma|Confirmar periodo de coleta (Ago 2025 a Dez 2025)"
  "SOS-EPIs|baixa|licenca|Preencher ano e instituicao na licenca"

  # Automacao Residencial
  "automacao-residencial|critica|geral|Template completamente intocado — NENHUMA secao preenchida"
  "automacao-residencial|critica|titulo|Definir titulo do projeto"
  "automacao-residencial|critica|resumo|Escrever resumo (contexto, problema, abordagem, entregaveis, resultado)"
  "automacao-residencial|critica|problema|Definir problema com dados concretos e mensuraveis"
  "automacao-residencial|critica|objetivo|Definir objetivo geral com meta mensuravel"
  "automacao-residencial|critica|objetivos-especificos|Listar objetivos especificos (3-5)"
  "automacao-residencial|critica|framework|Definir framework de governanca e detalhar aplicacao"
  "automacao-residencial|critica|escopo|Definir escopo (dentro/fora) e premissas/restricoes"
  "automacao-residencial|critica|entregaveis|Listar entregaveis com formatos e localizacao"
  "automacao-residencial|critica|cronograma|Criar cronograma com datas reais"
  "automacao-residencial|critica|referencias|Adicionar referencias bibliograficas (minimo 8)"
  "automacao-residencial|critica|equipe|Preencher equipe, glossario e checklist"

  # Automacao de Tratamento de Dados
  "Automa-o-de-tratamento-de-dados|critica|geral|Template completamente intocado — NENHUMA secao preenchida"
  "Automa-o-de-tratamento-de-dados|critica|titulo|Definir titulo do projeto"
  "Automa-o-de-tratamento-de-dados|critica|resumo|Escrever resumo (contexto, problema, abordagem, entregaveis, resultado)"
  "Automa-o-de-tratamento-de-dados|critica|problema|Definir problema com dados concretos e mensuraveis"
  "Automa-o-de-tratamento-de-dados|critica|objetivo|Definir objetivo geral com meta mensuravel"
  "Automa-o-de-tratamento-de-dados|critica|objetivos-especificos|Listar objetivos especificos (3-5)"
  "Automa-o-de-tratamento-de-dados|critica|framework|Definir framework de governanca e detalhar aplicacao"
  "Automa-o-de-tratamento-de-dados|critica|escopo|Definir escopo (dentro/fora) e premissas/restricoes"
  "Automa-o-de-tratamento-de-dados|critica|entregaveis|Listar entregaveis com formatos e localizacao"
  "Automa-o-de-tratamento-de-dados|critica|cronograma|Criar cronograma com datas reais"
  "Automa-o-de-tratamento-de-dados|critica|referencias|Adicionar referencias bibliograficas (minimo 8)"
  "Automa-o-de-tratamento-de-dados|critica|equipe|Preencher equipe, glossario e checklist"

  # Sigatccompact
  "sigatccompact|alta|checklist|Preencher itens pendentes: diagramas AS-IS/TO-BE, RACI, dados"
  "sigatccompact|media|orientador|Informar orientador(a) — campo diz A definir"
  "sigatccompact|media|referencias|Formatar referencias em padrao ABNT completo"
  "sigatccompact|baixa|diagramas|Adicionar diagramas AS-IS e TO-BE dos processos"
  "sigatccompact|baixa|verificacao|Verificar que todos os arquivos referenciados existem no repo"
)

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
  gh label create "sigatccompact" --color "1d76db" --description "Projeto: Sigatccompact" --force 2>/dev/null || true
  gh label create "App-de-Libras" --color "0e8a16" --description "Projeto: App de Libras" --force 2>/dev/null || true
  gh label create "SOS-EPIs" --color "d93f0b" --description "Projeto: S.O.S. EPIs" --force 2>/dev/null || true
  gh label create "automacao-residencial" --color "fbca04" --description "Projeto: Automacao Residencial" --force 2>/dev/null || true
  gh label create "Automa-o-de-tratamento-de-dados" --color "c5def5" --description "Projeto: Automacao Trat. Dados" --force 2>/dev/null || true
  gh label create "gestao-incidentes-infopro" --color "0075ca" --description "Projeto: Gestao Incidentes InfoPro" --force 2>/dev/null || true
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
