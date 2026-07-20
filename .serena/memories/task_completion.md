# Task Completion — gov-ti

**Não há suíte de testes, linter, formatter ou type checker configurados.** Sem CI de qualidade de
código (os workflows só criam issues e publicam Pages). Verificação é manual.

## Ao mexer nos scripts de automação

- `xlsx-to-issues.py`: rodar em modo seguro antes de qualquer criação real —
  `python3 scripts/xlsx-to-issues.py --dry-run` (não toca no GitHub). Confirmar contagens de
  incidentes/atividades/labels na saída.
- `gaps-to-issues.sh`: rodar **sem** flags = dry-run (`bash scripts/gaps-to-issues.sh`); só usar
  `--create` após revisar o preview. Idempotência não garantida: `--create` cria issues novas a
  cada execução (não deduplica) — evitar re-run acidental.
- Sanidade opcional de sintaxe: `python3 -m py_compile scripts/xlsx-to-issues.py`;
  `bash -n scripts/gaps-to-issues.sh`.
- Ao alterar labels, garantir concordância entre os 3 pontos (ver `mem:conventions`).

## Ao mexer em conteúdo (template/exemplo/README)

- Não pode restar `{{placeholder}}` em arquivo tido como preenchido.
- Manter espelhamento `template/` ↔ `exemplo/` e coerência com `00-INDICE-ARTEFATOS.md`.
- A tabela de progresso do índice (entre `<!-- PROGRESS-START -->`/`<!-- PROGRESS-END -->`) é
  gerada pelo workflow — **não editar à mão**; edições serão sobrescritas.

## Ao mexer em workflows

- `update-readme-badge.yml` depende de marcadores `<!-- PROGRESS-START/END -->` presentes em
  `00-INDICE-ARTEFATOS.md` e do array `PROJETOS` (labels reais). Sem forma de rodar localmente;
  validar YAML e testar via `workflow_dispatch` na aba Actions.
