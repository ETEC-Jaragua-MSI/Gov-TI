# Tech Stack — gov-ti

Não é app: sem servidor, sem build de produto, sem framework de aplicação. Stack = ferramentas de
automação e publicação em torno de conteúdo Markdown/XLSX.

## Linguagens / ferramentas

- **Markdown** — formato principal dos artefatos e docs. Diagramas em Mermaid embutido (arquivos
  `03-processo-as-is.md`, `04-processo-to-be.md`).
- **XLSX** — catálogo de incidentes, matriz prioridade/SLA, matriz RACI (em `template/` e `exemplo/`).
- **Python 3** — `scripts/xlsx-to-issues.py`. Dependência: **openpyxl** (import direto). Sintaxe
  usa type hints com `X | None` → requer Python **3.10+**. NÃO há `requirements.txt`/`pyproject.toml`/
  lockfile: instalar openpyxl manualmente (`pip install openpyxl`).
- **Bash** — `scripts/setup-project.sh`, `scripts/gaps-to-issues.sh`. Dependem de **GitHub CLI
  (`gh`)** autenticado e, no setup, de **`jq`**. Usam bash arrays associativos → precisam de bash
  real (não `sh`/dash).
- **GitHub CLI (`gh`)** — orquestra criação de issues, labels, milestones e Projects V2. É a
  dependência central da automação.
- **GitHub Actions** — dois workflows (ver `mem:automacao/core`).
- **Jekyll** — `jekyll-gh-pages.yml` builda o site com `actions/jekyll-build-pages`. Não há
  `_config.yml` nem Gemfile no repo → usa defaults do GitHub Pages.

## Sem gerenciador de pacotes

Nenhum `package.json`, `requirements.txt`, `Gemfile` ou lockfile. Dependências são implícitas
(`openpyxl`, `gh`, `jq`) e instaladas à mão. Ao editar scripts, não presumir ambiente resolvido.
