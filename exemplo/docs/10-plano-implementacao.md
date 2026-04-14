# Plano de Implementação — Gestão de Incidentes InfoPro

> **Projeto:** Implantação de Gestão de Incidentes ITIL v4 na Escola Técnica InfoPro
> **Data:** 08/08/2026
> **Horizonte:** 12 semanas (Semestre 2026.2 — Out a Dez)

---

## 1. Visão Geral

Este plano descreve as etapas necessárias para implementar o processo de gestão de incidentes proposto nos laboratórios de informática da InfoPro. A implementação segue uma abordagem incremental: piloto em 1 lab (4 semanas) → expansão para os 3 labs (4 semanas) → estabilização e melhoria (4 semanas). Todas as ferramentas são gratuitas (Google Workspace + Trello), respeitando a restrição de orçamento zero.

## 2. Fases de Implementação

### Fase 1 — Preparação (Semanas 1-2)

| Atividade | Responsável | Prazo | Recurso | Entregável |
|----------|-------------|-------|---------|-----------|
| Apresentar proposta à coordenação | Equipe TCC | Sem 1 | Slides do TCC | Aprovação formal |
| Configurar Google Forms (formulário de incidentes) | Técnico TI | Sem 1 | Google Workspace | Formulário publicado |
| Configurar Google Sheets (dashboard automático) | Técnico TI | Sem 1 | Google Sheets + Apps Script | Planilha com fórmulas |
| Criar board no Trello (Kanban de incidentes) | Técnico TI | Sem 1 | Trello Free | Board configurado |
| Imprimir QR Codes com link do formulário (1 por lab) | Equipe TCC | Sem 1 | Impressora | QR Codes nos labs |
| Treinar monitores de lab (N1) — 2h | Técnico TI | Sem 2 | Base de conhecimento | 3 monitores treinados |
| Comunicar professores sobre novo processo | Coordenação | Sem 2 | E-mail + reunião 30min | Professores informados |

### Fase 2 — Piloto no Lab 1 (Semanas 3-6)

| Atividade | Responsável | Prazo | Recurso | Entregável |
|----------|-------------|-------|---------|-----------|
| Iniciar operação do processo TO-BE no Lab 1 | Monitor N1 + Técnico | Sem 3 | Formulário + Trello | Processo em operação |
| Monitorar diariamente: chamados, SLA, resolução N1 | Técnico TI | Sem 3-6 | Dashboard Sheets | Relatório semanal |
| Coletar feedback de professores do Lab 1 | Equipe TCC | Sem 4 e 6 | Google Forms | 2 pesquisas rápidas |
| Ajustar processo com base no feedback | Técnico TI | Contínuo | — | Ajustes documentados |
| Validar base de conhecimento (completar artigos) | Monitor N1 + Técnico | Sem 3-6 | Base MD | Base atualizada |

### Fase 3 — Expansão para Labs 2 e 3 (Semanas 7-10)

| Atividade | Responsável | Prazo | Recurso | Entregável |
|----------|-------------|-------|---------|-----------|
| Treinar monitores dos Labs 2 e 3 | Técnico TI | Sem 7 | Base de conhecimento | Monitores treinados |
| Ativar formulário e Trello para Labs 2 e 3 | Técnico TI | Sem 7 | Google Workspace | 3 labs ativos |
| Monitorar indicadores consolidados | Técnico TI | Sem 7-10 | Dashboard | Relatório semanal |
| Apresentar resultados parciais à coordenação | Equipe TCC | Sem 9 | Dashboard + slides | Reunião de status |

### Fase 4 — Estabilização e Melhoria (Semanas 11-12)

| Atividade | Responsável | Prazo | Recurso | Entregável |
|----------|-------------|-------|---------|-----------|
| Comparar métricas AS-IS vs TO-BE (real) | Equipe TCC | Sem 11 | Planilha comparativa | Relatório final |
| Documentar lições aprendidas | Equipe TCC | Sem 11 | — | Documento MD |
| Entregar processo formalizado à coordenação | Equipe TCC | Sem 12 | Todos os artefatos | Handoff completo |
| Definir responsável permanente pelo processo | Coordenação | Sem 12 | — | Designação formal |

## 3. Orçamento

| Item | Custo | Observação |
|------|-------|-----------|
| Google Forms + Sheets | Gratuito | Já disponível via Google Workspace for Education |
| Trello (plano Free) | Gratuito | Até 10 boards, suficiente |
| Impressão de QR Codes (3 cartazes A4) | R$ 15,00 | Impressão colorida na secretaria |
| Treinamento de monitores | R$ 0 | Técnico da escola em horário regular |
| **Total** | **R$ 15,00** | |

## 4. Riscos e Mitigação

| Risco | Probabilidade | Impacto | Mitigação |
|-------|--------------|---------|-----------|
| Professores não usam o formulário | Alta | Alto | Comunicação, QR Code visível, coordenação reforça |
| Monitor de lab não designado | Média | Alto | Identificar alunos voluntários do curso de MSI |
| Técnico resiste ao novo processo | Baixa | Alto | Envolver técnicos desde o design; mostrar que reduz carga |
| Google Workspace indisponível | Baixa | Médio | Plano B: formulário offline em papel com digitação posterior |
| Base de conhecimento incompleta | Média | Médio | Priorizar os 10 incidentes mais frequentes primeiro |

## 5. Critérios de Sucesso

| Critério | Meta | Como Medir | Prazo |
|---------|------|-----------|-------|
| MTTR | ≤ 3 dias (redução ≥ 40%) | Dashboard automático | Após Fase 2 |
| Taxa de registro | 100% dos incidentes | Chamados / mês vs. baseline | Após Fase 3 |
| Resolução em N1 | ≥ 30% | Dashboard | Após Fase 3 |
| NPS professores | ≥ 40 | Pesquisa ao final da Fase 4 | Semana 12 |
| Aderência ao SLA | ≥ 70% | Dashboard | Após Fase 3 |

## 6. Próximos Passos (Imediatos)

1. Agendar reunião com coordenação para apresentar proposta (Sem 1)
2. Técnico cria formulário Google Forms com campos definidos no TO-BE
3. Identificar 3 monitores de lab (alunos do curso de MSI, último semestre)
