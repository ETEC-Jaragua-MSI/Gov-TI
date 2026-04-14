# Mapa de Artefatos do TCC — Governança de TI

> **Curso:** Manutenção e Suporte em Informática
> **Disciplina:** Governança de TI
> **Conteúdo:** 12 artefatos × 2 versões (template + exemplo preenchido)

## Dashboard de Scores

Acesse o dashboard de acompanhamento dos TCCs em **GitHub Pages**: [`docs/index.html`](docs/index.html)

Para habilitar: Settings → Pages → Source: Deploy from branch → `main` → `/docs` → Save

### Script de Gaps → Issues

```bash
# Preview (dry-run)
bash scripts/gaps-to-issues.sh

# Criar issues no GitHub
bash scripts/gaps-to-issues.sh --create

# Criar e adicionar ao Project V2
bash scripts/gaps-to-issues.sh --create --project 1
```

---

## Resumo

| # | Artefato | Formato | Template | Exemplo (InfoPro) |
|---|---------|---------|----------|-------------------|
| 01 | Diagnóstico do cenário atual | MD | `template/docs/01-diagnostico-cenario-atual.md` | `exemplo/docs/01-diagnostico-cenario-atual.md` |
| 02 | Questionário aplicado + respostas | MD | `template/dados/02-questionario-aplicado.md` | `exemplo/dados/02-questionario-aplicado.md` |
| 03 | Mapeamento do processo AS-IS | MD (Mermaid) | `template/diagramas/03-processo-as-is.md` | `exemplo/diagramas/03-processo-as-is.md` |
| 04 | Mapeamento do processo TO-BE | MD (Mermaid) | `template/diagramas/04-processo-to-be.md` | `exemplo/diagramas/04-processo-to-be.md` |
| 05 | Catálogo de incidentes recorrentes | XLSX | `template/dados/05-catalogo-incidentes-TEMPLATE.xlsx` | `exemplo/dados/05-catalogo-incidentes-INFOPRO.xlsx` |
| 06 | Base de conhecimento | MD | `template/docs/06-base-conhecimento.md` | `exemplo/docs/06-base-conhecimento.md` |
| 07 | Matriz de prioridade + SLAs | XLSX | `template/dados/07-matriz-prioridade-sla-TEMPLATE.xlsx` | `exemplo/dados/07-matriz-prioridade-sla-INFOPRO.xlsx` |
| 08 | Matriz RACI | XLSX | `template/diagramas/08-matriz-raci-TEMPLATE.xlsx` | `exemplo/diagramas/08-matriz-raci-INFOPRO.xlsx` |
| 09 | Relatório de simulação/validação | MD | `template/docs/09-relatorio-simulacao.md` | `exemplo/docs/09-relatorio-simulacao.md` |
| 10 | Plano de implementação | MD | `template/docs/10-plano-implementacao.md` | `exemplo/docs/10-plano-implementacao.md` |
| 11 | Estrutura da monografia | MD | `template/docs/11-estrutura-monografia.md` | `exemplo/docs/11-estrutura-monografia.md` |
| 12 | Roteiro dos slides da defesa | MD | `template/apresentacao/12-roteiro-slides-defesa.md` | `exemplo/apresentacao/12-roteiro-slides-defesa.md` |

---

## Como Usar

1. Copie a **pasta `template/`** para o repositório do seu TCC
2. Substitua todos os `{{placeholders}}` pelo conteúdo do seu projeto
3. Consulte a **pasta `exemplo/`** sempre que tiver dúvida de como preencher
4. Use o **checklist do README** para verificar completude antes de entregar

---

## Progresso dos Projetos

<!-- PROGRESS-START -->

## Progresso por Projeto

> Atualizado automaticamente em: 13/04/2026 às 22:29 (BRT)

| Projeto | Issues Abertas | Issues Fechadas | Progresso (%) |
|---------|:--------------:|:---------------:|:-------------:|
| Sigatccompact (Ativos) | 0 | 0 | 0% |
| App de Libras | 0 | 0 | 0% |
| S.O.S. EPIs | 0 | 0 | 0% |
| Automacao Residencial | 0 | 0 | 0% |
| Automacao Trat. Dados | 0 | 0 | 0% |
| Gestao Incidentes InfoPro | 0 | 0 | 0% |
|---------|:--------------:|:---------------:|:-------------:|
| **Total** | **0** | **0** | **0%** |

<!-- PROGRESS-END -->

---

## Fluxo de Produção Sugerido

```
Fase 1: DIAGNÓSTICO              Fase 2: PROPOSTA                Fase 3: VALIDAÇÃO + ESCRITA
─────────────────────────         ─────────────────────           ─────────────────────────────
① Diagnóstico ──────────┐        ④ Processo TO-BE ──────┐       ⑨ Relatório de simulação
② Questionário          ├──→     ⑤ Catálogo             ├──→    ⑩ Plano de implementação
③ Processo AS-IS ───────┘        ⑥ Base de conhecimento │       ⑪ Monografia (redação)
                                 ⑦ Matriz Prioridade/SLA│       ⑫ Slides da defesa
                                 ⑧ Matriz RACI ─────────┘
```

---

## Projeto-Exemplo: Escola Técnica InfoPro

| Campo | Detalhe |
|-------|---------|
| **Título** | Implantação de Gestão de Incidentes ITIL v4 na Escola Técnica InfoPro |
| **Framework** | ITIL v4 (Incident Management, Knowledge Management, Service Desk, SLM) |
| **Problema** | MTTR 5,3 dias, 34% reincidência, 60% sem registro, NPS 23 |
| **Proposta** | Formulário digital + base de conhecimento + SLAs + N1/N2/N3 |
| **Resultado** | Simulação: -52% MTTR, -68% reincidência, 100% registro |
| **Ferramentas** | Google Forms + Sheets + Trello (custo: R$ 15) |

> Este exemplo é **fictício** e foi criado para demonstrar o preenchimento dos artefatos. Os dados são verossímeis mas não representam uma organização real.
