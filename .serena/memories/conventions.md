# Conventions — gov-ti

## Conteúdo (artefatos de TCC)

- Idioma **pt-BR** em tudo: docs, comentários, mensagens de commit, nomes de labels/issues.
- Placeholders no `template/` usam `{{chave}}` (chaves duplas). Preencher = substituir todos;
  arquivos "prontos" não podem conter `{{}}` (é um dos gaps rastreados).
- Artefatos numerados `NN-nome-kebab.md` (01–12), numeração **estável e espelhada** entre
  `template/` e `exemplo/`. Sufixo de versão: `-TEMPLATE` vs `-INFOPRO` nos XLSX.
- README de projeto de aluno segue seções fixas (Sobre, Problema, Objetivos, Framework, Escopo,
  Entregáveis, Cronograma, Estrutura, Resultados, Referências, Glossário, Equipe). Referências em
  **ABNT** (mínimo 8 fontes é critério de completude).
- Emojis são usados intencionalmente em headings de README/índice (padrão do material didático) —
  não "limpar".

## Código (scripts de automação)

- Bash: `set -e`/`set -euo pipefail`, saída verbosa com emojis e blocos `───`, mensagens ao usuário
  em pt-BR. Flags: `--create` (efetiva) vs default dry-run; `--project NUM` opcional.
- Python (`xlsx-to-issues.py`): docstrings em pt-BR, type hints modernos (`str | None`), funções
  puras de parse (`parse_catalogo`/`parse_raci`/`parse_sla`) separadas de geração e escrita.
  `slugify()` remove acentos pt-BR manualmente (mapa de regex) — reusar, não reimplementar.
- **Labels são um contrato compartilhado** entre 3 lugares e devem concordar:
  `gaps-to-issues.sh` (labels de projeto/severidade), `xlsx-to-issues.py` (`PRIORITY_MAP`,
  `CATEGORY_COLORS`, `RACI_LABELS`) e `.github/workflows/update-readme-badge.yml` (array
  `PROJETOS`). Adicionar/renomear label exige revisar os três.
- Nomes de projeto usados como label preservam a forma "slug do GitHub" (ex.:
  `Automa-o-de-tratamento-de-dados`, `App-de-Libras`) — não normalizar/"corrigir" à toa; precisam
  bater com os repositórios reais dos alunos.
- Prioridade P1–P4 derivada de `impacto × urgência` em `calc_priority` (limiares 20/12/6). SLAs:
  P1 4h, P2 8h, P3 24h, P4 72h — valores replicados no README/exemplo; manter consistentes.
