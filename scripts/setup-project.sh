#!/bin/bash
###############################################################################
# 🛠️ Setup do Project V2 para TCC de Governança de TI
#
# USAGE:
#   chmod +x scripts/setup-project.sh
#   ./scripts/setup-project.sh
#
# PRÉ-REQUISITOS:
#   - GitHub CLI instalado (https://cli.github.com)
#   - Autenticado: gh auth login
#   - Escopo: gh auth refresh -s project
###############################################################################

set -e

echo "🚀 Setup do Project V2 — TCC Governança de TI"
echo "================================================"
echo ""

# Detecta owner e repo
OWNER=$(gh repo view --json owner -q '.owner.login' 2>/dev/null || echo "")
REPO=$(gh repo view --json name -q '.name' 2>/dev/null || echo "")

if [ -z "$OWNER" ] || [ -z "$REPO" ]; then
  echo "❌ Execute este script dentro do repositório do TCC."
  echo "   cd seu-repo && ./scripts/setup-project.sh"
  exit 1
fi

echo "📦 Repositório: $OWNER/$REPO"
echo ""

# ──────────────────────────────────────
# 1. Criar Project V2
# ──────────────────────────────────────
echo "📋 Criando Project V2..."

PROJECT_URL=$(gh project create --owner "$OWNER" --title "TCC Gov TI — $REPO" --format json 2>/dev/null | jq -r '.url' || echo "")

if [ -z "$PROJECT_URL" ]; then
  echo "⚠️  Não foi possível criar o Project automaticamente."
  echo "   Crie manualmente em: https://github.com/$OWNER?tab=projects"
  echo ""
  read -p "Cole a URL do Project criado: " PROJECT_URL
fi

# Extrai o número do project da URL
PROJECT_NUMBER=$(echo "$PROJECT_URL" | grep -oP 'projects/\K[0-9]+')
echo "✅ Project #$PROJECT_NUMBER criado: $PROJECT_URL"
echo ""

# ──────────────────────────────────────
# 2. Criar campos customizados
# ──────────────────────────────────────
echo "🏷️ Criando campos customizados no Project..."

# Campo: Fase (Single Select)
gh project field-create "$PROJECT_NUMBER" --owner "$OWNER" \
  --name "Fase" \
  --data-type "SINGLE_SELECT" \
  --single-select-options "Fase 1 — Diagnóstico,Fase 2 — Proposta,Fase 3 — Validação" \
  2>/dev/null && echo "  ✅ Campo 'Fase' criado" || echo "  ⏭️ Campo 'Fase' já existe"

# Campo: Tipo (Single Select)
gh project field-create "$PROJECT_NUMBER" --owner "$OWNER" \
  --name "Tipo" \
  --data-type "SINGLE_SELECT" \
  --single-select-options "docs,dados,diagramas,apresentacao" \
  2>/dev/null && echo "  ✅ Campo 'Tipo' criado" || echo "  ⏭️ Campo 'Tipo' já existe"

# Campo: Prazo (Date)
gh project field-create "$PROJECT_NUMBER" --owner "$OWNER" \
  --name "Prazo" \
  --data-type "DATE" \
  2>/dev/null && echo "  ✅ Campo 'Prazo' criado" || echo "  ⏭️ Campo 'Prazo' já existe"

echo ""

# ──────────────────────────────────────
# 3. Configurar views
# ──────────────────────────────────────
echo "📊 Configuração de views..."
echo "   As views (Board por Fase, Table, Timeline) devem ser"
echo "   configuradas manualmente na interface do Project."
echo ""
echo "   Sugestões de views:"
echo "   • Board: agrupar por campo 'Status' (Todo / In Progress / Done)"
echo "   • Table: todas as issues com campos Fase, Tipo, Prazo"
echo "   • Board por Fase: agrupar por campo 'Fase'"
echo ""

# ──────────────────────────────────────
# 4. Resumo
# ──────────────────────────────────────
echo "================================================"
echo "✅ Setup concluído!"
echo ""
echo "📋 Project: $PROJECT_URL"
echo "📦 Repo:    https://github.com/$OWNER/$REPO"
echo ""
echo "📌 Próximos passos:"
echo "   1. Crie um PAT com scope 'project' em:"
echo "      https://github.com/settings/tokens/new"
echo "   2. Adicione como secret PROJECT_TOKEN no repositório:"
echo "      gh secret set PROJECT_TOKEN"
echo "   3. Edite .github/workflows/auto-add-to-project.yml"
echo "      com o número correto do Project ($PROJECT_NUMBER)"
echo "   4. Edite .github/workflows/seed-issues.yml"
echo "      descomente project-number: $PROJECT_NUMBER"
echo ""
echo "🎉 Quando os alunos usarem 'Use this template',"
echo "   as 12 issues serão criadas automaticamente!"
