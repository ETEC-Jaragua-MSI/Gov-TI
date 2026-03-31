# 📋 Implantação de Gestão de Incidentes ITIL v4 na Escola Técnica InfoPro

> **Proposta de estruturação do processo de gestão de incidentes de TI com base em ITIL v4 para o laboratório de informática da Escola Técnica InfoPro, visando reduzir o tempo de indisponibilidade dos equipamentos em 50%.**

[![Status](https://img.shields.io/badge/Status-Concluído-brightgreen)]()
[![Curso](https://img.shields.io/badge/Curso-Manutenção%20e%20Suporte-blue)]()
[![Disciplina](https://img.shields.io/badge/Disciplina-Governança%20de%20TI-purple)]()
[![Framework](https://img.shields.io/badge/Framework-ITIL%20v4-orange)]()

---

## 📑 Índice

- [Sobre o Projeto](#-sobre-o-projeto)
- [Problema e Justificativa](#-problema-e-justificativa)
- [Objetivos](#-objetivos)
- [Framework / Metodologia Adotada](#-framework--metodologia-adotada)
- [Escopo e Delimitações](#-escopo-e-delimitações)
- [Entregáveis](#-entregáveis)
- [Cronograma](#-cronograma)
- [Estrutura do Repositório](#-estrutura-do-repositório)
- [Como Navegar este Projeto](#-como-navegar-este-projeto)
- [Resultados e Conclusões](#-resultados-e-conclusões)
- [Referências](#-referências)
- [Glossário de Termos Técnicos](#-glossário-de-termos-técnicos)
- [Equipe](#-equipe)

---

## 🎯 Sobre o Projeto

| Campo | Detalhe |
|-------|---------|
| **Instituição** | ETEC Jaraguá — Centro Paula Souza |
| **Curso** | Manutenção e Suporte em Informática |
| **Disciplina** | Governança de TI |
| **Semestre** | 2026.1 |
| **Orientador(a)** | Profª Tainá Oliveira |
| **Tipo de Trabalho** | TCC – Trabalho de Conclusão de Curso |

**Resumo:**

A Escola Técnica InfoPro possui 3 laboratórios de informática com 90 computadores que atendem 12 turmas semanalmente. Atualmente, não existe um processo formalizado para registro e tratamento de falhas nos equipamentos: alunos reportam problemas verbalmente ao professor, que anota em caderno e repassa ao técnico de forma informal. Isso resulta em perda de aulas, equipamentos parados por semanas e reincidência de falhas já conhecidas. Este projeto propõe a implantação de um processo de Gestão de Incidentes baseado nas práticas do ITIL v4, incluindo a criação de um catálogo de incidentes recorrentes, definição de níveis de prioridade, fluxo de escalonamento e uma base de conhecimento com soluções documentadas. A proposta foi validada por meio de simulação com dados reais de 3 meses de operação, demonstrando potencial de redução de 52% no tempo médio de resolução.

**Palavras-chave:** `governança de TI`, `ITIL v4`, `gestão de incidentes`, `service desk`, `laboratório de informática`

---

## ❗ Problema e Justificativa

### Problema

> A Escola Técnica InfoPro não possui processo formalizado de gestão de incidentes de TI. O registro é feito em caderno físico sem categorização, priorização ou rastreabilidade. O tempo médio de resolução é de 5,3 dias úteis e 34% dos incidentes são reincidentes por falta de documentação de soluções.

### Justificativa

- 📊 **Dados do cenário atual:**
  - 47 incidentes/mês em média (levantamento mar-mai/2026)
  - Tempo médio de resolução: 5,3 dias úteis
  - 34% de taxa de reincidência
  - 12 aulas/mês impactadas por equipamentos indisponíveis
- 💰 **Impacto no negócio:**
  - Perda estimada de 144 horas/aula por semestre
  - Custo de retrabalho do técnico: ~R$ 2.400/mês em horas extras
  - Insatisfação de alunos e professores (NPS atual: 23)
- 📖 **Relevância acadêmica:**
  - Aplicação prática dos conceitos de ITSM estudados na disciplina
  - Cenário real acessível para coleta de dados e validação
  - Contribuição direta para a instituição dos próprios alunos

---

## 🎯 Objetivos

### Objetivo Geral

Propor e validar um modelo de gestão de incidentes de TI baseado em ITIL v4 para os laboratórios de informática da Escola Técnica InfoPro, visando reduzir o tempo médio de resolução em pelo menos 40%.

### Objetivos Específicos

1. [x] Diagnosticar o cenário atual de tratamento de incidentes nos 3 laboratórios, coletando dados de volume, tempo e reincidência por 3 meses
2. [x] Mapear o processo atual (AS-IS) de registro e resolução de incidentes utilizando notação BPMN
3. [x] Projetar o processo futuro (TO-BE) com base nas práticas de Incident Management do ITIL v4
4. [x] Elaborar catálogo de incidentes recorrentes e base de conhecimento com soluções padronizadas
5. [x] Simular o processo proposto com dados reais e medir a redução projetada no tempo de resolução

---

## 📐 Framework / Metodologia Adotada

### Framework de Governança

| Framework | Versão | Processos/Domínios Utilizados |
|-----------|--------|-------------------------------|
| **ITIL** | **v4** | **Incident Management, Service Desk, Knowledge Management, Service Level Management** |
| COBIT | 2019 | DSS02 (Gerenciar Requisições de Serviço e Incidentes) — referência complementar |

### Práticas ITIL v4 Aplicadas

| Prática | Aplicação no Projeto |
|---------|---------------------|
| Incident Management | Fluxo completo de detecção → registro → categorização → priorização → resolução → encerramento |
| Service Desk | Proposta de ponto único de contato via formulário digital (Google Forms + Planilha) |
| Knowledge Management | Base de conhecimento com 23 soluções para incidentes recorrentes |
| Service Level Management | Definição de metas de SLA por prioridade (P1: 4h, P2: 8h, P3: 24h, P4: 72h) |

### Metodologia de Pesquisa

- **Tipo:** Estudo de caso com pesquisa-ação
- **Abordagem:** Mista (quali-quanti)
- **Coleta de dados:** Observação participante (3 meses), questionários com 8 professores e 2 técnicos, análise do caderno de registros
- **Ferramentas:** Google Forms (questionário), Google Sheets (consolidação), Draw.io (BPMN), Trello (simulação de Kanban de incidentes)

---

## 🔲 Escopo e Delimitações

### ✅ Dentro do Escopo

- Diagnóstico do cenário atual de incidentes nos 3 laboratórios
- Mapeamento AS-IS e TO-BE do processo de gestão de incidentes
- Criação de catálogo de incidentes e base de conhecimento
- Definição de matriz de prioridade e metas de SLA
- Proposta de Service Desk simplificado (Google Forms + Planilha)
- Simulação do processo TO-BE com dados reais

### ❌ Fora do Escopo

- Implementação de software de ITSM (ServiceNow, GLPI, etc.) — custo fora da realidade da instituição
- Gestão de problemas (Problem Management) — será sugerida como trabalho futuro
- Gestão de mudanças e configuração — complexidade além do TCC
- Infraestrutura de rede e servidores — foco exclusivo em estações de trabalho

### ⚠️ Premissas e Restrições

- **Premissa 1:** A coordenação da escola autorizou acesso aos laboratórios e dados de manutenção
- **Premissa 2:** Os técnicos de informática participarão das entrevistas e validação
- **Restrição 1:** Orçamento zero — todas as ferramentas devem ser gratuitas
- **Restrição 2:** Nomes de alunos e funcionários foram anonimizados conforme LGPD

---

## 📦 Entregáveis

| # | Entregável | Formato | Localização | Status |
|---|-----------|---------|-------------|--------|
| 1 | Diagnóstico do cenário atual | PDF | `docs/diagnostico.pdf` | ✅ Concluído |
| 2 | Questionário aplicado + respostas | Google Forms + CSV | `dados/questionario-respostas.csv` | ✅ Concluído |
| 3 | Mapeamento AS-IS (BPMN) | PNG + Draw.io | `diagramas/processo-as-is.drawio` | ✅ Concluído |
| 4 | Mapeamento TO-BE (BPMN) | PNG + Draw.io | `diagramas/processo-to-be.drawio` | ✅ Concluído |
| 5 | Catálogo de incidentes recorrentes | XLSX | `dados/catalogo-incidentes.xlsx` | ✅ Concluído |
| 6 | Base de conhecimento (23 soluções) | MD | `docs/base-conhecimento.md` | ✅ Concluído |
| 7 | Matriz de prioridade + SLAs | XLSX | `dados/matriz-prioridade-sla.xlsx` | ✅ Concluído |
| 8 | Matriz RACI | XLSX | `diagramas/matriz-raci.xlsx` | ✅ Concluído |
| 9 | Relatório de simulação TO-BE | PDF | `docs/relatorio-simulacao.pdf` | ✅ Concluído |
| 10 | Plano de implementação | PDF | `docs/plano-implementacao.pdf` | ✅ Concluído |
| 11 | Monografia TCC | PDF | `docs/monografia-tcc.pdf` | ✅ Concluído |
| 12 | Slides da defesa | PPTX | `apresentacao/slides-defesa.pptx` | ✅ Concluído |

---

## 📅 Cronograma

| Fase | Atividade | Início | Fim | Status |
|------|-----------|--------|-----|--------|
| 1 | Definição do tema e escopo | 03/02 | 14/02 | ✅ |
| 2 | Revisão bibliográfica (ITIL v4, ITSM) | 17/02 | 07/03 | ✅ |
| 3 | Coleta de dados — observação e questionários | 10/03 | 30/05 | ✅ |
| 4 | Diagnóstico + Mapeamento AS-IS | 02/06 | 20/06 | ✅ |
| 5 | Proposta TO-BE + Framework ITIL | 23/06 | 11/07 | ✅ |
| 6 | Catálogo + Base de conhecimento | 14/07 | 25/07 | ✅ |
| 7 | Simulação e métricas projetadas | 28/07 | 08/08 | ✅ |
| 8 | Redação da monografia | 11/08 | 05/09 | ✅ |
| 9 | Revisão com orientadora | 08/09 | 19/09 | ✅ |
| 10 | Defesa / Apresentação final | 29/09 | 29/09 | ✅ |

---

## 📁 Estrutura do Repositório

```
tcc-gov-ti-gestao-incidentes-infopro/
│
├── README.md                           # ← Você está aqui
│
├── docs/
│   ├── monografia-tcc.pdf              # Documento final (ABNT)
│   ├── diagnostico.pdf                 # Diagnóstico do cenário atual
│   ├── base-conhecimento.md            # 23 soluções documentadas
│   ├── plano-implementacao.pdf         # Plano com fases e responsáveis
│   ├── relatorio-simulacao.pdf         # Resultados da simulação TO-BE
│   └── referencias.bib                 # Referências em BibTeX
│
├── diagramas/
│   ├── processo-as-is.drawio           # Processo atual (editável)
│   ├── processo-as-is.png              # Processo atual (imagem)
│   ├── processo-to-be.drawio           # Processo proposto (editável)
│   ├── processo-to-be.png              # Processo proposto (imagem)
│   ├── fluxo-escalonamento.png         # Fluxo N1 → N2 → N3
│   └── matriz-raci.xlsx               # Matriz RACI
│
├── dados/
│   ├── questionario-respostas.csv      # Respostas do Google Forms
│   ├── incidentes-mar-mai-2026.xlsx    # Dados brutos coletados
│   ├── catalogo-incidentes.xlsx        # Catálogo categorizado
│   ├── matriz-prioridade-sla.xlsx      # Prioridades + metas SLA
│   └── metricas-comparativo.xlsx       # AS-IS vs TO-BE
│
├── apresentacao/
│   ├── slides-defesa.pptx              # Apresentação (15 slides)
│   └── poster-tcc.pdf                  # Pôster A1
│
└── assets/
    ├── fotos-laboratorio/              # Fotos dos labs (anonimizadas)
    └── prints-formulario/              # Capturas do Google Forms
```

---

## 🧭 Como Navegar este Projeto

| Eu quero... | Vá para... |
|-------------|-----------|
| Entender o projeto em 2 min | Leia o [Resumo](#-sobre-o-projeto) e os [Objetivos](#-objetivos) |
| Ver o problema com dados | Seção [Problema e Justificativa](#-problema-e-justificativa) |
| Visualizar os processos | `diagramas/processo-as-is.png` e `diagramas/processo-to-be.png` |
| Consultar a base de conhecimento | `docs/base-conhecimento.md` |
| Analisar os números | `dados/metricas-comparativo.xlsx` |
| Ler o trabalho completo | `docs/monografia-tcc.pdf` |
| Ver a apresentação | `apresentacao/slides-defesa.pptx` |

---

## 📊 Resultados e Conclusões

### Principais Resultados

| Métrica | AS-IS (atual) | TO-BE (projetado) | Variação |
|---------|---------------|-------------------|----------|
| Tempo médio de resolução | 5,3 dias | 2,5 dias | **-52%** |
| Taxa de reincidência | 34% | 11% | **-68%** |
| Incidentes sem registro | ~60% | 0% | **-100%** |
| Aulas impactadas/mês | 12 | 4 (est.) | **-67%** |
| Satisfação (NPS professores) | 23 | 58 (est.) | **+152%** |

### Conclusões

1. **O problema era organizacional, não técnico.** A maioria dos incidentes tinha solução conhecida, mas não documentada — a base de conhecimento resolve 68% dos casos reincidentes.
2. **Ferramentas gratuitas são viáveis.** O modelo proposto com Google Forms + Sheets + Trello atende à realidade de uma escola técnica sem orçamento para ITSM comercial.
3. **O ITIL v4 é adaptável a pequenas operações.** Não é necessário implementar o framework completo — as práticas de Incident Management e Knowledge Management isoladamente já geram impacto significativo.
4. **A formalização do processo muda a cultura.** A simples existência de um formulário de registro elevou a consciência dos professores sobre a importância de reportar incidentes.

### Trabalhos Futuros

- Implementação real do processo proposto no semestre 2026.2
- Expansão para Problem Management (análise de causa raiz)
- Implantação do GLPI como ferramenta de Service Desk gratuita
- Criação de dashboard de indicadores para a coordenação

---

## 📚 Referências

> Formato ABNT (NBR 6023:2018) — ordem alfabética.

1. ASSOCIAÇÃO BRASILEIRA DE NORMAS TÉCNICAS. **NBR ISO/IEC 20000-1:2020** — Tecnologia da informação — Gestão de serviços — Parte 1: Requisitos do sistema de gestão de serviços. Rio de Janeiro: ABNT, 2020.
2. AXELOS. **ITIL Foundation: ITIL 4 Edition**. London: TSO, 2019.
3. AXELOS. **ITIL 4: Create, Deliver and Support**. London: TSO, 2020.
4. FERNANDES, Aguinaldo Aragon; ABREU, Vladimir Ferraz de. **Implantando a Governança de TI: da Estratégia à Gestão dos Processos e Serviços**. 4. ed. Rio de Janeiro: Brasport, 2014.
5. FREITAS, Marcos André dos Santos. **Fundamentos do Gerenciamento de Serviços de TI**. 2. ed. Rio de Janeiro: Brasport, 2013.
6. GIL, Antonio Carlos. **Como Elaborar Projetos de Pesquisa**. 7. ed. São Paulo: Atlas, 2022.
7. ISACA. **COBIT 2019 Framework: Governance and Management Objectives**. Schaumburg: ISACA, 2018.
8. MAGALHÃES, Ivan Luizio; PINHEIRO, Walfrido Brito. **Gerenciamento de Serviços de TI na Prática: Uma Abordagem com Base na ITIL**. São Paulo: Novatec, 2007.
9. YIN, Robert K. **Estudo de Caso: Planejamento e Métodos**. 5. ed. Porto Alegre: Bookman, 2015.

---

## 📖 Glossário de Termos Técnicos

> Termos utilizados neste TCC para consulta rápida.

<details open>
<summary><strong>Termos do Projeto</strong></summary>

| Termo | Definição (no contexto deste projeto) |
|-------|---------------------------------------|
| **AS-IS** | Estado atual do processo de gestão de incidentes na InfoPro — registro em caderno, sem categorização ou priorização. |
| **TO-BE** | Estado futuro proposto — fluxo formalizado com formulário digital, categorização, priorização por SLA e base de conhecimento. |
| **Incidente** | Qualquer evento que cause indisponibilidade ou degradação de um computador dos laboratórios (ex: tela azul, mouse quebrado, software não abre). |
| **Catálogo de Incidentes** | Planilha com 47 tipos de incidentes recorrentes categorizados por Hardware, Software, Rede e Periféricos. |
| **Base de Conhecimento** | Documento com 23 procedimentos passo-a-passo para resolver os incidentes mais frequentes. |
| **Service Desk** | Neste projeto: formulário Google Forms como ponto único de registro + planilha automatizada para acompanhamento. |
| **SLA** | Metas de tempo de resolução por prioridade: P1 (Crítico: 4h), P2 (Alto: 8h), P3 (Médio: 24h), P4 (Baixo: 72h). |
| **Escalonamento** | Transferência do incidente do N1 (monitor de lab) → N2 (técnico) → N3 (coordenação/fornecedor). |
| **BPMN** | Notação usada nos diagramas AS-IS e TO-BE para representar o fluxo de atividades, decisões e responsáveis. |
| **Matriz RACI** | Tabela que define quem é Responsável, Aprovador, Consultado e Informado em cada etapa do processo. |
| **NPS** | Net Promoter Score — métrica de satisfação usada no questionário com professores (escala -100 a +100). |
| **Reincidência** | Incidente que ocorre novamente pelo mesmo motivo, evidenciando falta de solução definitiva ou documentação. |
| **MTTR** | Mean Time to Repair — tempo médio entre o registro do incidente e sua resolução. Métrica principal do projeto. |

</details>

---

## 👥 Equipe

| Nome | RA | Função | Contato |
|------|-----|--------|---------|
| Ana Carolina Santos | 202601 | Líder de projeto / Redação | ana.santos@etec.sp.gov.br |
| Bruno Ferreira Lima | 202602 | Coleta de dados / Diagnóstico | bruno.lima@etec.sp.gov.br |
| Carla Mendes Oliveira | 202603 | Mapeamento BPMN / Diagramas | carla.oliveira@etec.sp.gov.br |
| Diego Alves Ribeiro | 202604 | Base de conhecimento / Catálogo | diego.ribeiro@etec.sp.gov.br |

**Docente:** Profª Tainá Oliveira — taina.oliveira104@etec.sp.gov.br

---

## 📄 Licença

Este trabalho é de natureza acadêmica e foi desenvolvido como requisito parcial para conclusão do curso de **Manutenção e Suporte em Informática** na disciplina de **Governança de TI**.

© 2026 ETEC Jaraguá — Centro Paula Souza — Todos os direitos reservados.

---

<details>
<summary>📝 <strong>Checklist de Entrega (uso interno da equipe)</strong></summary>

### Documentação
- [x] README.md preenchido e atualizado
- [x] Monografia revisada e formatada (ABNT)
- [x] Referências bibliográficas completas e verificadas

### Artefatos Técnicos
- [x] Diagrama AS-IS do processo de gestão de incidentes
- [x] Diagrama TO-BE com o processo proposto
- [x] Catálogo de incidentes recorrentes (47 tipos)
- [x] Base de conhecimento (23 soluções)
- [x] Matriz RACI preenchida
- [x] Matriz de prioridade com metas de SLA
- [x] Plano de implementação com cronograma

### Dados e Evidências
- [x] Dados de 3 meses organizados e anonimizados
- [x] Métricas de baseline documentadas
- [x] Resultados da simulação tabulados
- [x] Questionários aplicados e respostas consolidadas

### Apresentação
- [x] Slides da defesa (15 slides)
- [x] Ensaio realizado (12 min)
- [x] Pôster A1 preparado

### Repositório
- [x] Todos os arquivos organizados conforme estrutura
- [x] `.gitignore` configurado
- [x] Sem arquivos desnecessários

</details>
