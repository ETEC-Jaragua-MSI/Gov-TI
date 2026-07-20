# Automação — core (scripts + workflows)

Toda a lógica executável do repo. Objetivo: transformar artefatos/README dos TCCs em GitHub Issues
e manter um painel de progresso. Ferramenta central: `gh` CLI autenticado.

## scripts/

- **`setup-project.sh`** — cria um Project V2 (`gh project create`) e campos custom
  (Fase=SINGLE_SELECT, Tipo=SINGLE_SELECT, Prazo=DATE). Pré-req: `gh auth refresh -s project`, `jq`.
  Views são criadas manualmente (não automatizado). Imprime próximos passos (PAT `PROJECT_TOKEN`,
  editar workflows com o nº do project).
- **`gaps-to-issues.sh`** — issues a partir de lista **hardcoded** `GAPS` (formato
  `PROJETO|SEVERIDADE|AREA|DESCRICAO`). Cria labels `sev-*`, `gap-readme` e uma label por projeto.
  Default = dry-run; `--create` efetiva; `--project NUM` adiciona ao Project. Título
  `[GAP-<SEV>] <proj>: <desc>` truncado a 120 chars.
- **`xlsx-to-issues.py`** — lê 3 planilhas por *padrão de nome* via `find_xlsx` (busca recursiva a
  partir de `--base`, default `.`): `catalogo-incidentes*` → 1 issue/incidente; `matriz-raci*`
  (aba obrigatória "Matriz RACI") → 1 issue/atividade; `prioridade-sla*` (aba "SLAs InfoPro") →
  labels+milestones. Sem flags: escreve `.md` com frontmatter YAML em `.github/issues/{incidentes,processo}/`
  e `scripts/labels-generated.json`. `--create` cria via `gh`; `--dry-run` preview.
  ATENÇÃO: como busca por padrão, roda por default sobre os XLSX de `exemplo/` (InfoPro).
- **`labels-generated.json`** — saída gerada pelo Python; não editar à mão.

## .github/workflows/

- **`update-readme-badge.yml`** — em push na `main` e cron diário `0 6 * * *` (03:00 BRT) +
  `workflow_dispatch`. Conta issues abertas/fechadas por label de projeto (array `PROJETOS`
  inline), monta tabela markdown e substitui o bloco entre `<!-- PROGRESS-START -->` e
  `<!-- PROGRESS-END -->` em `00-INDICE-ARTEFATOS.md` (via heredoc Python). Commita como
  `github-actions[bot]` com `[skip ci]`. Permissões: `contents: write`, `issues: read`.
- **`jekyll-gh-pages.yml`** — push na `main` + `workflow_dispatch`. Build Jekyll do repo inteiro
  e deploy no GitHub Pages (dashboard `docs/index.html`). Concurrency group `pages`.

## Invariantes cruzando arquivos

- As labels de projeto/prioridade/categoria são um **contrato** entre os 3 scripts/workflow — ver
  lista de pontos a sincronizar em `mem:conventions`.
- O array `PROJETOS` do workflow e as labels criadas em `gaps-to-issues.sh` precisam usar
  exatamente os mesmos slugs, senão a contagem de progresso zera silenciosamente.
- `xlsx-to-issues.py` assume layout de colunas fixo nas planilhas (índices posicionais em
  `parse_catalogo`/`parse_raci`); mudar o schema dos XLSX quebra o parser sem erro claro.
