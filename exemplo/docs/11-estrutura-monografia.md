# Estrutura da Monografia — Sumário Detalhado

> **Título:** Implantação de Gestão de Incidentes ITIL v4 na Escola Técnica InfoPro
> **Formato:** ABNT (NBR 14724:2011)
> **Páginas:** 42 páginas

---

## Capítulo 1 — Introdução (p. 10-13, 4 páginas)

**1.1 Contextualização**
A governança de TI tem se tornado essencial mesmo em organizações de pequeno porte, onde a dependência de recursos tecnológicos cresce continuamente. No contexto educacional, laboratórios de informática são infraestrutura crítica que impacta diretamente a qualidade do ensino técnico.

**1.2 Problema de Pesquisa**
> "De que forma a aplicação das práticas de Incident Management do ITIL v4 pode reduzir o tempo médio de resolução de incidentes de TI em laboratórios de uma escola técnica?"

**1.3 Justificativa**
- 47 incidentes/mês sem processo formal
- MTTR de 5,3 dias, 12 aulas impactadas/mês
- Aplicação prática e contribuição direta à instituição

**1.4 Objetivo Geral**
Propor e validar um modelo de gestão de incidentes de TI baseado em ITIL v4 para os laboratórios da Escola Técnica InfoPro, visando reduzir o MTTR em pelo menos 40%.

**1.5 Objetivos Específicos**
1. Diagnosticar o cenário atual de tratamento de incidentes
2. Mapear o processo AS-IS em notação BPMN
3. Projetar o processo TO-BE baseado em ITIL v4
4. Elaborar catálogo de incidentes e base de conhecimento
5. Validar a proposta por simulação com dados reais

**1.6 Estrutura do Trabalho**
Organizado em 5 capítulos: introdução, referencial teórico, metodologia, diagnóstico e proposta, considerações finais.

---

## Capítulo 2 — Referencial Teórico (p. 14-25, 12 páginas)

**2.1 Governança de TI** (p. 14-16, 3 pg)
- Conceito segundo Weill & Ross e ISO 38500
- Diferença entre governança e gestão
- Importância em organizações de pequeno porte

**2.2 ITIL v4** (p. 16-21, 5 pg)
- 2.2.1 Histórico e evolução (ITIL v2 → v3 → v4)
- 2.2.2 Service Value System (SVS)
- 2.2.3 Cadeia de Valor de Serviço
- 2.2.4 **Incident Management** — detalhamento completo (2 pg)
- 2.2.5 **Knowledge Management** — captura e reuso de conhecimento (1 pg)
- 2.2.6 **Service Level Management** — definição de SLAs (0,5 pg)

**2.3 Gestão de Serviços de TI (ITSM)** (p. 21-23, 2 pg)
- Conceito e ISO 20000
- Service Desk e modelos de suporte (N1/N2/N3)
- ITSM em contexto educacional

**2.4 Trabalhos Relacionados** (p. 23-25, 2 pg)
- Silva (2023): ITIL em empresa de médio porte — resultado: -35% MTTR
- Oliveira (2024): Service Desk em escola pública — resultado: 100% de registro
- Santos (2022): COBIT + ITIL em PME — resultado: maturidade de 1,2 para 3,1

---

## Capítulo 3 — Metodologia (p. 26-29, 4 páginas)

**3.1** Estudo de caso com pesquisa-ação (GIL, 2022; YIN, 2015)
**3.2** Abordagem mista (quali-quanti)
**3.3** Cenário: escola técnica com 3 labs, 90 PCs, 360 usuários
**3.4** Participantes: 2 técnicos (entrevista), 8 professores (questionário)
**3.5** Instrumentos: entrevista semiestruturada, questionário Google Forms, observação participante (60 dias), análise documental (cadernos de registro)
**3.6** Análise: tabulação em planilha, estatística descritiva, simulação retrospectiva
**3.7** Ética: dados anonimizados (LGPD), autorização da coordenação

---

## Capítulo 4 — Diagnóstico e Proposta (p. 30-44, 15 páginas)

**4.1 Diagnóstico do Cenário Atual (AS-IS)** (p. 30-35, 6 pg)
- 4.1.1 Infraestrutura: 90 PCs, idade média 4,5 anos, 2 técnicos
- 4.1.2 Processo AS-IS mapeado (Figura 3: diagrama BPMN)
- 4.1.3 Métricas baseline: MTTR 5,3 dias, 34% reincidência, NPS 23
- 4.1.4 Análise de aderência: maturidade 0,1/5 (Tabela 5)
- 4.1.5 Resultados do questionário: 87% sem feedback, 75% > 3 dias

**4.2 Proposta de Melhoria (TO-BE)** (p. 35-41, 6 pg)
- 4.2.1 Processo TO-BE (Figura 4: diagrama BPMN)
- 4.2.2 Formulário digital como Service Desk (SPOC)
- 4.2.3 Catálogo de incidentes: 20 tipos, 4 categorias (Tabela 6)
- 4.2.4 Base de conhecimento: 23 artigos (Quadro 2)
- 4.2.5 Matriz de prioridade + SLAs por P1-P4 (Tabela 7)
- 4.2.6 Matriz RACI: 12 atividades × 4 atores (Tabela 8)
- 4.2.7 Justificativa teórica: cada atividade → prática ITIL correspondente

**4.3 Validação por Simulação** (p. 41-44, 3 pg)
- 4.3.1 Método: 141 incidentes reprocessados pelo fluxo TO-BE
- 4.3.2 Resultados: MTTR -52%, reincidência -68%, registro 100% (Tabela 9)
- 4.3.3 Análise: meta de -40% superada; 3 vetores independentes de melhoria

---

## Capítulo 5 — Considerações Finais (p. 45-47, 3 páginas)

1. **Objetivo atingido:** simulação demonstra -52% no MTTR (meta: -40%)
2. **Problema organizacional, não técnico:** falta de processo > falta de equipamento
3. **ITIL adaptável:** não precisa implementar tudo — Incident + Knowledge Management já geram impacto
4. **Ferramentas gratuitas viáveis:** Google Forms + Sheets + Trello atendem a realidade
5. **Limitações:** simulação (não implementação), 3 meses de dados, função N1 inexistente
6. **Trabalhos futuros:** implementação piloto, Problem Management, implantação do GLPI

---

## Referências (p. 48-50) — 9 fontes principais + complementares

## Apêndices
- Apêndice A: Roteiro de entrevista
- Apêndice B: Questionário aplicado (Google Forms)
- Apêndice C: Dados brutos — 141 incidentes tabulados
- Apêndice D: Base de conhecimento completa (23 artigos)
- Apêndice E: Catálogo de incidentes (planilha)
