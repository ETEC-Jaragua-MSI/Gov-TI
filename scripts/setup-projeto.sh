#!/usr/bin/env bash
# ─────────────────────────────────────────────────────────────
# setup-projeto.sh — Configura rapidamente um novo projeto TCC
#
# USO (rode no terminal com gh CLI autenticado):
#   bash scripts/setup-projeto.sh
#
# O script vai:
#   1. Perguntar os dados do projeto interativamente
#   2. Criar a label do projeto no GitHub
#   3. Criar o milestone do semestre
#   4. Gerar o arquivo README.md pré-preenchido na pasta atual
#   5. Abrir a issue de cadastro no navegador
#
# PRÉ-REQUISITOS:
#   - gh CLI instalado e autenticado (gh auth login)
#   - git configurado com remote para o repo do projeto
# ─────────────────────────────────────────────────────────────

set -euo pipefail

REPO_GOVTI="ETEC-Jaragua-MSI/Gov-TI"
TEMPLATE_BASE="https://raw.githubusercontent.com/ETEC-Jaragua-MSI/Gov-TI/main/template"

echo ""
echo "╔══════════════════════════════════════════════════════╗"
echo "║   🎓 Setup de Projeto TCC — Governança de TI        ║"
echo "║      ETEC Jaraguá — MSI                              ║"
echo "╚══════════════════════════════════════════════════════╝"
echo ""

# ─────────────────────────────────────────────────────────────
# 1. Coletar dados do projeto
# ─────────────────────────────────────────────────────────────

read -rp "📛 Nome do projeto (slug, sem espaços): " PROJ_SLUG
# Normalizar slug
PROJ_SLUG=$(echo "$PROJ_SLUG" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/--*/-/g' | sed 's/^-//' | sed 's/-$//')

read -rp "📌 Título completo do projeto: " PROJ_TITULO
read -rp "📅 Semestre (ex: 2026.2): " SEMESTRE
read -rp "👩‍🏫 Nome do(a) orientador(a): " ORIENTADOR
read -rp "🔧 Framework principal (ex: ITIL v4, COBIT 2019): " FRAMEWORK

echo ""
echo "👥 Integrantes da equipe (pressione ENTER em branco para finalizar):"
EQUIPE=()
while true; do
  read -rp "   Nome | RA | Função: " INTEGRANTE
  [ -z "$INTEGRANTE" ] && break
  EQUIPE+=("$INTEGRANTE")
done

# ─────────────────────────────────────────────────────────────
# 2. Confirmar dados
# ─────────────────────────────────────────────────────────────

echo ""
echo "══════════════════════════════════════════════════════"
echo "📋 Resumo do projeto:"
echo "   Slug:       $PROJ_SLUG"
echo "   Título:     $PROJ_TITULO"
echo "   Semestre:   $SEMESTRE"
echo "   Orientador: $ORIENTADOR"
echo "   Framework:  $FRAMEWORK"
echo "   Equipe:     ${#EQUIPE[@]} integrante(s)"
echo "══════════════════════════════════════════════════════"
read -rp "Confirmar? [s/N] " CONFIRMA
[[ "$CONFIRMA" =~ ^[sS]$ ]] || { echo "Cancelado."; exit 0; }

# ─────────────────────────────────────────────────────────────
# 3. Criar label no repositório Gov-TI
# ─────────────────────────────────────────────────────────────

echo ""
echo "🏷️  Criando label '$PROJ_SLUG' no Gov-TI..."

# Gerar cor única baseada no slug
COR=$(echo -n "$PROJ_SLUG" | md5sum | cut -c1-6)

gh label create "$PROJ_SLUG" \
  --color "$COR" \
  --description "Projeto TCC: $PROJ_TITULO" \
  --repo "$REPO_GOVTI" \
  --force 2>/dev/null && echo "   ✅ Label criada: #$COR" || echo "   ℹ️  Label já existe ou sem permissão — ok"

# ─────────────────────────────────────────────────────────────
# 4. Criar milestone no Gov-TI
# ─────────────────────────────────────────────────────────────

MILESTONE="TCC $SEMESTRE"
echo "📅 Criando milestone '$MILESTONE'..."

EXISTE=$(gh api "repos/$REPO_GOVTI/milestones" \
  --jq ".[] | select(.title == \"$MILESTONE\") | .number" 2>/dev/null || echo "")

if [ -z "$EXISTE" ]; then
  gh api "repos/$REPO_GOVTI/milestones" \
    --method POST \
    -f title="$MILESTONE" \
    -f description="Issues do semestre $SEMESTRE" \
    -f state="open" > /dev/null
  echo "   ✅ Milestone '$MILESTONE' criado"
else
  echo "   ℹ️  Milestone '$MILESTONE' já existe"
fi

# ─────────────────────────────────────────────────────────────
# 5. Baixar e pré-preencher o template do README
# ─────────────────────────────────────────────────────────────

README_DEST="README.md"
if [ -f "$README_DEST" ]; then
  echo ""
  read -rp "⚠️  README.md já existe. Sobrescrever? [s/N] " SOBRESCREVER
  [[ "$SOBRESCREVER" =~ ^[sS]$ ]] || { echo "   Pulando geração do README."; README_DEST=""; }
fi

if [ -n "$README_DEST" ]; then
  echo "📝 Baixando e pré-preenchendo README..."
  curl -sSL "$TEMPLATE_BASE/README.md" -o "$README_DEST.tmp" 2>/dev/null || {
    echo "   ⚠️  Não foi possível baixar o template online. Copie manualmente de template/README.md"
    README_DEST=""
  }

  if [ -n "$README_DEST" ] && [ -f "$README_DEST.tmp" ]; then
    # Substituir placeholders básicos
    sed \
      -e "s/\[\[NOME-DO-PROJETO\]\]/$PROJ_SLUG/g" \
      -e "s/\[\[TITULO-COMPLETO\]\]/$PROJ_TITULO/g" \
      -e "s/\[\[SEMESTRE\]\]/$SEMESTRE/g" \
      -e "s/\[\[ORIENTADOR\]\]/$ORIENTADOR/g" \
      -e "s/\[\[FRAMEWORK\]\]/$FRAMEWORK/g" \
      -e "s/{{nome do projeto}}/$PROJ_TITULO/g" \
      -e "s/{{semestre}}/$SEMESTRE/g" \
      -e "s/{{orientador}}/$ORIENTADOR/g" \
      "$README_DEST.tmp" > "$README_DEST"
    rm "$README_DEST.tmp"
    echo "   ✅ README.md gerado com dados básicos pré-preenchidos"
    echo "   👉 Abra README.md e complete os campos restantes"
  fi
fi

# ─────────────────────────────────────────────────────────────
# 6. Montar corpo da issue de cadastro
# ─────────────────────────────────────────────────────────────

EQUIPE_MD=""
for I in "${EQUIPE[@]}"; do
  EQUIPE_MD+="- $I
"
done

echo ""
echo "🌐 Abrindo issue de cadastro no Gov-TI..."
echo "   (Você pode editar os dados antes de publicar)"
echo ""

# Montar URL de abertura de issue com dados pré-preenchidos
TITLE_ENC=$(python3 -c "import urllib.parse; print(urllib.parse.quote('[PROJETO] $PROJ_TITULO — $SEMESTRE'))")
gh issue create \
  --repo "$REPO_GOVTI" \
  --title "[PROJETO] $PROJ_TITULO — $SEMESTRE" \
  --label "novo-projeto" \
  --body "### Nome do Projeto (slug)

$PROJ_SLUG

### Título Completo do Projeto

$PROJ_TITULO

### Semestre

$SEMESTRE

### Framework de Governança

$FRAMEWORK

### Equipe

$EQUIPE_MD
### Orientador(a)

$ORIENTADOR

### Usuários GitHub dos integrantes

_(preencha após abrir a issue)_

### Confirmações

- [x] Li o guia do aluno em \`docs/guia-aluno-github.md\`
- [x] Entendo que as issues de gaps serão criadas automaticamente após análise do README
" 2>/dev/null || echo "   ⚠️  Não foi possível criar a issue automaticamente. Acesse o Gov-TI e crie manualmente."

# ─────────────────────────────────────────────────────────────
# 7. Resumo final
# ─────────────────────────────────────────────────────────────

echo ""
echo "╔══════════════════════════════════════════════════════╗"
echo "║   🎉 Setup concluído!                                ║"
echo "╚══════════════════════════════════════════════════════╝"
echo ""
echo "Próximos passos:"
echo "  1. Complete o README.md com todos os campos"
echo "  2. Faça commit e push do seu repositório"
echo "  3. Aguarde a professora aprovar o cadastro"
echo "  4. Acompanhe as issues criadas automaticamente"
echo ""
echo "Links:"
echo "  Repositório Gov-TI: https://github.com/$REPO_GOVTI"
echo "  Guia do Aluno:      https://github.com/$REPO_GOVTI/blob/main/docs/guia-aluno-github.md"
echo ""
