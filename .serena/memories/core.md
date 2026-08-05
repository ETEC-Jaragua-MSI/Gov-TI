# Core — gov-ti

Repositório **educacional/template**, NÃO é aplicação executável. Serve a uma turma de TCC de
Governança de TI (ETEC Jaraguá / Centro Paula Souza), curso Manutenção e Suporte em Informática.

## O que é (invariantes de topo)

- Entrega = **documentos** (Markdown + XLSX), não software. O produto são 12 artefatos de TCC
  em duas versões: `template/` (com `{{placeholders}}`) e `exemplo/` (projeto fictício InfoPro,
  ITIL v4, gestão de incidentes) usado como referência de preenchimento.
- `template/` e `exemplo/` são **espelhados**: mesma numeração 01–12, mesmas subpastas
  (`docs/ dados/ diagramas/ apresentacao/`). Ao mudar a estrutura de um, replicar no outro.
- `00-INDICE-ARTEFATOS.md` é o mapa canônico dos 12 artefatos (template ↔ exemplo). Fonte de
  verdade da correspondência de arquivos; atualizar ao adicionar/renomear artefato.
- `README.md` na raiz é o **exemplo InfoPro preenchido** (não é doc do repo em si) — modelo do que
  o aluno deve produzir. Não confundir com documentação do template.
- Único código real = automação (scripts + GitHub Actions) que transforma os artefatos/README em
  GitHub Issues e mantém um dashboard de progresso. Ver `mem:automacao/core`.

## Domínios (quando ler cada memória)

- Stack, linguagens e dependências (Python/openpyxl sem lockfile, Bash+gh, Actions, Jekyll):
  `mem:tech_stack`.
- Comandos reais que a usuária roda (rodar scripts de issues, dry-run vs `--create`, deploy Pages),
  com notas de shell no Windows: `mem:suggested_commands`.
- Convenções de conteúdo e de código (placeholders `{{}}`, numeração NN-, nomenclatura de labels,
  pt-BR, padrões dos scripts): `mem:conventions`.
- O que verificar ao concluir uma tarefa (não há testes; validação por dry-run e leitura):
  `mem:task_completion`.
- Detalhe dos scripts de automação e workflows (contratos de I/O, dependências entre eles,
  pegadinhas): `mem:automacao/core`.

## Estrutura

- `template/`, `exemplo/` — os 12 artefatos (ver índice).
- `scripts/` — `setup-project.sh`, `gaps-to-issues.sh`, `xlsx-to-issues.py`, `labels-generated.json`.
- `.github/workflows/` — `jekyll-gh-pages.yml` (deploy Pages), `update-readme-badge.yml` (tabela de progresso).
- `.github/ISSUE_TEMPLATE/` — templates de issue (bug, feature, custom, gap-readme).
- `docs/` — guias do aluno (`guia-aluno-github.md`, `guia-projects-v2.md`) + `index.html` (dashboard GH Pages).
