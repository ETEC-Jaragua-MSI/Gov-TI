# Diagnóstico do Cenário Atual

> **Projeto:** Implantação de Gestão de Incidentes ITIL v4 na Escola Técnica InfoPro
> **Data:** 20/06/2026
> **Autor(es):** Ana Carolina Santos, Bruno Ferreira Lima
> **Versão:** 1.0

---

## 1. Identificação da Organização

| Campo | Detalhe |
|-------|---------|
| **Nome** | Escola Técnica InfoPro (nome fictício) |
| **Segmento** | Educação — Ensino técnico profissionalizante |
| **Porte** | Pequena |
| **Nº de colaboradores** | 42 (20 professores, 12 administrativos, 8 terceirizados, 2 técnicos de TI) |
| **Nº de usuários de TI** | ~360 (320 alunos + 20 professores + 12 admin + 8 terceirizados) |
| **Localização** | São Paulo/SP |

## 2. Infraestrutura de TI Atual

### 2.1 Parque Tecnológico

| Recurso | Quantidade | Idade Média | Estado Geral |
|---------|-----------|-------------|--------------|
| Desktops (labs) | 90 (3 labs × 30) | 4,5 anos | Regular |
| Desktops (admin) | 15 | 3 anos | Bom |
| Notebooks (professores) | 8 | 2 anos | Bom |
| Impressoras | 4 (2 jato de tinta, 2 laser) | 3 anos | Regular |
| Servidores | 1 (arquivo + DHCP) | 6 anos | Ruim |
| Switches | 6 (3 nos labs, 3 na admin) | 5 anos | Regular |
| Access Points | 4 | 2 anos | Bom |
| Projetores | 6 (2 por lab) | 4 anos | Regular |

### 2.2 Softwares e Sistemas

| Sistema / Software | Finalidade | Versão | Licenciamento |
|--------------------|-----------|--------|---------------|
| Windows 10 Pro | Sistema operacional (labs) | 22H2 | Volume (Centro Paula Souza) |
| Windows 11 Pro | Sistema operacional (admin) | 23H2 | OEM |
| LibreOffice | Produtividade | 7.6 | Livre |
| Visual Studio Code | Desenvolvimento (aulas) | 1.88 | Livre |
| Google Workspace for Education | E-mail e colaboração | - | Educacional gratuito |
| Packet Tracer | Simulação de redes (aulas) | 8.2.2 | Educacional (Cisco) |

### 2.3 Equipe de TI

| Cargo / Função | Quantidade | Formação | Dedicação |
|----------------|-----------|----------|-----------|
| Técnico de informática | 2 | Técnico em informática | Integral (40h/sem) |
| Coordenador pedagógico (acumula TI) | 1 | Sup. em Sistemas de Informação | Parcial (~5h/sem para TI) |

## 3. Processo Analisado: Gestão de Incidentes de TI

### 3.1 Situação Atual (AS-IS)

O tratamento de incidentes de TI nos laboratórios da InfoPro ocorre de forma completamente informal. Quando um aluno identifica um problema em uma estação (tela azul, mouse quebrado, software que não abre), ele reporta verbalmente ao professor da aula. O professor, por sua vez, anota a ocorrência em um caderno que fica na mesa do professor em cada laboratório.

Ao final do dia ou quando tem oportunidade, o professor repassa a informação ao técnico de informática por WhatsApp ou pessoalmente no corredor. O técnico então prioriza os problemas com base na própria experiência e disponibilidade, sem critérios formais. Muitas vezes, informações se perdem entre o relato do aluno e a chegada ao técnico — detalhes como número da máquina, horário e sintomas são omitidos ou simplificados.

A resolução depende exclusivamente da memória e experiência dos 2 técnicos. Não existe documentação de soluções aplicadas, e quando um técnico está de férias ou licença, o outro frequentemente refaz diagnósticos já realizados. Após a resolução, não há comunicação formal ao professor ou aluno — eles descobrem que o problema foi resolvido ao usar a máquina novamente.

Não existem metas de tempo de resolução, relatórios gerenciais, indicadores de desempenho ou qualquer forma de avaliação sistemática da qualidade do suporte. A coordenação só toma conhecimento de problemas de TI quando o impacto é grande o suficiente para gerar reclamação formal de professores.

### 3.2 Ferramentas Utilizadas Atualmente

| Etapa do Processo | Ferramenta Atual | Problemas Identificados |
|-------------------|-----------------|------------------------|
| Registro de chamados | Caderno físico no lab | Sem rastreabilidade, ilegível às vezes, sem data/hora, sem categorização |
| Comunicação usuário→técnico | WhatsApp pessoal | Mensagens perdidas, sem histórico formal, mistura com conversas pessoais |
| Diagnóstico | Memória do técnico | Dependência de 2 pessoas, conhecimento não documentado |
| Acompanhamento de status | Nenhuma | Ninguém sabe se o chamado está sendo tratado |
| Feedback ao usuário | Nenhuma | Usuário descobre que foi resolvido ao usar a máquina |
| Relatórios gerenciais | Nenhuma | Coordenação sem visibilidade, decisões sem dados |

### 3.3 Pontos Críticos Identificados

| # | Problema | Evidência / Dado | Impacto | Severidade |
|---|---------|-----------------|---------|------------|
| 1 | Sem sistema de registro formal | 100% dos registros em caderno, ~60% dos incidentes sem nenhum registro | Perda total de rastreabilidade e histórico | 🔴 Alto |
| 2 | Tempo de resolução excessivo | MTTR = 5,3 dias úteis (análise de 141 registros em 3 meses) | 12 aulas/mês impactadas | 🔴 Alto |
| 3 | Alta taxa de reincidência | 34% dos incidentes são repetidos (48 de 141) | Retrabalho do técnico, frustração dos usuários | 🔴 Alto |
| 4 | Sem base de conhecimento | 0 soluções documentadas; conhecimento na memória de 2 técnicos | Risco de perda total se técnico sair | 🔴 Alto |
| 5 | Sem priorização formal | Técnico decide por "feeling" o que resolver primeiro | Labs inteiros parados enquanto problemas menores são resolvidos | 🟡 Médio |
| 6 | Comunicação fragmentada | WhatsApp pessoal como canal de suporte | Mensagens perdidas, sem SLA, sem registro | 🟡 Médio |
| 7 | Sem indicadores de gestão | Zero métricas ou relatórios para coordenação | Decisões de investimento sem base em dados | 🟡 Médio |

## 4. Métricas do Cenário Atual (Baseline)

| Métrica / KPI | Valor Atual | Método de Medição | Período |
|---------------|-------------|-------------------|---------|
| Volume de incidentes/mês | 47 (média) | Contagem do caderno + estimativa de não registrados | Mar-Mai/2026 |
| Tempo médio de resolução (MTTR) | 5,3 dias úteis | Datas de registro vs. datas de resolução anotadas | Mar-Mai/2026 |
| Taxa de reincidência | 34% | Incidentes com mesma descrição/máquina / total | Mar-Mai/2026 |
| % de incidentes formalmente registrados | ~40% | Estimativa cruzando caderno vs. entrevistas | Mar-Mai/2026 |
| Aulas impactadas/mês | 12 | Relato de professores no questionário | Mar-Mai/2026 |
| Satisfação do usuário (NPS) | 23 | Questionário com 8 professores | Mai/2026 |
| Custo estimado de retrabalho | ~R$ 2.400/mês | Horas extras técnicos × valor/hora | Mar-Mai/2026 |

## 5. Coleta de Dados

### 5.1 Métodos Utilizados

| Método | Público-alvo | Amostra | Período | Instrumento |
|--------|-------------|---------|---------|-------------|
| Entrevista semiestruturada | Técnicos de TI | 2 pessoas | 12-13/Mar | Roteiro de 15 perguntas |
| Questionário online | Professores que usam labs | 8 de 12 (67%) | 17-24/Mar | Google Forms (12 perguntas) |
| Observação participante | Laboratórios 1, 2 e 3 | 60 dias, 3h/dia | Mar-Mai/2026 | Diário de campo |
| Análise documental | Cadernos de registro dos labs | 3 cadernos, 3 meses | Mar-Mai/2026 | Planilha de tabulação |

### 5.2 Resumo das Entrevistas

**Entrevistado 1 — Técnico de Informática (8 anos na escola):**
- Estima que resolve 60-70% dos problemas "de cabeça", sem consultar documentação
- Maior frustração: resolver o mesmo problema pela 3ª ou 4ª vez porque não anotou a solução
- Reconhece que prioriza pedidos de professores que "cobram mais" em vez de criticidade real
- Gostaria de um sistema simples para registrar soluções

**Entrevistado 2 — Técnico de Informática (2 anos na escola):**
- Sente dificuldade por não ter acesso ao histórico de manutenções
- Frequentemente descobre problemas ao chegar no lab, não por comunicação formal
- Relata que perde ~2h/dia em deslocamento entre labs para verificar status de máquinas
- Sugere formulário online para abertura de chamados

### 5.3 Resultados do Questionário

- **"Como você reporta problemas de TI?"** → 62% verbalmente ao técnico, 25% WhatsApp, 13% caderno do lab
- **"Você recebe retorno sobre o status?"** → 87% disseram "nunca" ou "raramente"
- **"Quanto tempo leva para resolver?"** → 75% estimaram "mais de 3 dias"
- **"Nota de 0 a 10 para o suporte de TI?"** → Média: 4,8
- **"Principal problema do suporte?"** → 50% "demora", 25% "não sei se registraram meu pedido", 25% "problema volta a acontecer"

## 6. Análise de Aderência ao Framework (ITIL v4 — Incident Management)

| Prática / Requisito ITIL v4 | Situação Atual | Gap Identificado | Maturidade (0-5) |
|------------------------------|---------------|-----------------|-------------------|
| Registro e categorização de incidentes | Caderno físico, sem categorias | Sem sistema digital, sem taxonomia | 1 — Inicial |
| Priorização por impacto × urgência | Inexistente — "feeling" do técnico | Sem critérios, sem matriz de prioridade | 0 — Inexistente |
| Escalonamento funcional (N1→N2→N3) | Inexistente — 2 técnicos fazem tudo | Sem níveis, sem gatilhos de escalonamento | 0 — Inexistente |
| SLAs de resolução | Inexistente | Sem metas de tempo por prioridade | 0 — Inexistente |
| Base de conhecimento / KEDB | Inexistente | 100% do conhecimento tácito (nas pessoas) | 0 — Inexistente |
| Service Desk (ponto único de contato) | Inexistente — múltiplos canais informais | Sem SPOC, sem fila, sem rastreio | 0 — Inexistente |
| Monitoramento e métricas | Inexistente | Zero indicadores, zero relatórios | 0 — Inexistente |
| Melhoria contínua | Inexistente | Sem revisão periódica, sem feedback loop | 0 — Inexistente |

**Nível de maturidade geral:** 0,1 (praticamente inexistente — apenas registro rudimentar em caderno)

## 7. Diagrama do Processo Atual (AS-IS)

> Ver diagrama completo em `diagramas/processo-as-is.drawio`

```
Aluno detecta problema
    ↓
Reporta verbalmente ao professor
    ↓
Professor anota no caderno (às vezes)
    ↓
Professor avisa técnico por WhatsApp (quando lembra)
    ↓
Técnico recebe (se vir a mensagem)
    ↓
Técnico vai ao lab quando pode
    ↓
Técnico diagnostica de memória
    ↓
Resolve? ─── SIM → Máquina volta a funcionar (sem feedback)
    │
    NÃO → Máquina fica parada (sem prazo, sem comunicação)
```

## 8. Conclusão do Diagnóstico

### Principais Achados

1. **A gestão de incidentes é praticamente inexistente** — nível de maturidade 0,1 em uma escala de 0 a 5, com único ponto acima de zero sendo o registro rudimentar em caderno.
2. **O impacto é mensurável e significativo** — 5,3 dias de MTTR, 34% de reincidência, 12 aulas/mês impactadas e R$ 2.400/mês em retrabalho estimado.
3. **O problema é organizacional, não tecnológico** — a escola tem equipamentos em estado razoável; o que falta é processo, documentação e ferramentas de gestão.
4. **Há receptividade para mudança** — ambos os técnicos e a maioria dos professores demonstraram interesse em um processo mais estruturado.

### Recomendação

Com base no diagnóstico, este projeto propõe a implantação de um processo de Gestão de Incidentes baseado nas práticas do ITIL v4, utilizando ferramentas gratuitas (Google Forms + Sheets + Trello) adequadas à realidade orçamentária da escola. O foco será em registro formalizado, categorização, priorização por SLA e criação de base de conhecimento para os incidentes recorrentes que representam 34% do volume atual.

---

**Próximo artefato:** [Mapeamento AS-IS (BPMN)](../diagramas/processo-as-is.md)
