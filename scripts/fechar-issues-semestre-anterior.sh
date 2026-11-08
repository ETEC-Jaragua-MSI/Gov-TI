#!/usr/bin/env bash
# ─────────────────────────────────────────────────────────────
# fechar-issues-semestre-anterior.sh
#
# Fecha em massa todas as issues abertas do semestre anterior.
# Execute APENAS uma vez ao início de cada novo semestre.
#
# USO:
#   bash scripts/fechar-issues-semestre-anterior.sh
#   bash scripts/fechar-issues-semestre-anterior.sh --dry-run
#
# PRÉ-REQUISITOS:
#   - gh CLI instalado e autenticado (gh auth login)
#   - Permissão de escrita no repositório
# ─────────────────────────────────────────────────────────────

set -euo pipefail

REPO="${REPO:-ETEC-Jaragua-MSI/Gov-TI}"
DRY_RUN=false
MOTIVO="Encerrado: issue do semestre anterior. O projeto será reavaliado no novo semestre caso necessário."

while [[ $# -gt 0 ]]; do
  case "$1" in
    --dry-run) DRY_RUN=true; shift ;;
    --repo) REPO="$2"; shift 2 ;;
    --motivo) MOTIVO="$2"; shift 2 ;;
    *) echo "Uso: $0 [--dry-run] [--repo owner/repo] [--motivo 'texto']"; exit 1 ;;
  esac
done

echo ""
echo "╔══════════════════════════════════════════════════════╗"
echo "║   🗂️  Encerramento de Issues — Semestre Anterior     ║"
echo "╚══════════════════════════════════════════════════════╝"
echo ""
echo "Repositório: $REPO"
echo "Modo: $([ "$DRY_RUN" = true ] && echo 'DRY-RUN (nenhuma ação será executada)' || echo 'EXECUÇÃO REAL')"
echo ""

# Listar todas as issues abertas
echo "📋 Buscando issues abertas..."
ISSUES=$(gh issue list \
  --repo "$REPO" \
  --state open \
  --limit 500 \
  --json number,title,labels \
  --jq '.[] | "\(.number)|\(.title)"')

if [ -z "$ISSUES" ]; then
  echo "✅ Nenhuma issue aberta encontrada. Nada a fazer."
  exit 0
fi

TOTAL=$(echo "$ISSUES" | wc -l)
echo "Encontradas $TOTAL issues abertas:"
echo ""

FECHADAS=0
ERROS=0

while IFS='|' read -r NUM TITULO; do
  echo "  #$NUM — $TITULO"

  if [ "$DRY_RUN" = false ]; then
    if gh issue close "$NUM" \
      --repo "$REPO" \
      --comment "$MOTIVO" \
      --reason "not_planned" 2>/dev/null; then
      FECHADAS=$((FECHADAS + 1))
      echo "         ✅ Fechada"
    else
      ERROS=$((ERROS + 1))
      echo "         ⚠️  Erro ao fechar"
    fi
    # Pequena pausa para não exceder rate limit da API
    sleep 0.5
  else
    echo "         [DRY-RUN] seria fechada"
    FECHADAS=$((FECHADAS + 1))
  fi
done <<< "$ISSUES"

echo ""
echo "══════════════════════════════════════════════════════"
echo "Resumo:"
echo "  Total encontradas: $TOTAL"
echo "  Fechadas:          $FECHADAS"
echo "  Erros:             $ERROS"
if [ "$DRY_RUN" = true ]; then
  echo ""
  echo "  ℹ️  Este foi um DRY-RUN. Execute sem --dry-run para fechar de verdade."
fi
echo "══════════════════════════════════════════════════════"
