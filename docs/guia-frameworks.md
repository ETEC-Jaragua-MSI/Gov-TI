# Guia de Frameworks de Governança de TI

> **Para:** Alunos do TCC de Governança de TI — ETEC Jaraguá
> **Objetivo:** Orientar a escolha e aplicação do framework mais adequado a cada tipo de projeto

---

## Como escolher o framework certo para o seu projeto

| Tipo de projeto | Framework principal recomendado | Framework complementar |
|-----------------|--------------------------------|------------------------|
| Gestão de incidentes / suporte | **ITIL v4** | COBIT 2019 (DSS02) |
| Governança geral de TI / maturidade | **COBIT 2019** | ISO/IEC 38500 |
| Segurança da informação | **ISO/IEC 27001:2022** | COBIT 2019 (DSS05) |
| Proteção de dados pessoais | **LGPD** (Lei 13.709/2018) | ISO/IEC 27701 |
| Gestão de dados / qualidade de dados | **COBIT 2019 (APO14)** | LGPD |
| Continuidade de negócio / TI | **ISO 22301** | COBIT 2019 (DSS04) |
| Gestão de projetos de TI | **PMBOK / PRINCE2** | COBIT 2019 (BAI01) |
| IoT / automação | **IEC 62443** (segurança OT/IoT) | ISO/IEC 27001 |
| Gestão de ativos de TI | **ISO/IEC 55001** | COBIT 2019 (BAI09) |

---

## ITIL v4 — Information Technology Infrastructure Library

**O que é:** Framework de boas práticas para gestão de serviços de TI (ITSM), desenvolvido pela AXELOS.

**Versão atual:** ITIL v4 (publicado em 2019)

**Quando usar:** Quando o projeto foca em processos operacionais de TI — atendimento, incidentes, mudanças, liberações.

### Conceitos principais

| Conceito | Descrição |
|----------|-----------|
| **Service Value System (SVS)** | Modelo geral do ITIL v4 que mostra como todas as partes se conectam para criar valor |
| **Cadeia de Valor de Serviço (CVS)** | 6 atividades: Planejar, Melhorar, Engajar, Projetar/Transicionar, Obter/Construir, Entregar/Suportar |
| **Práticas** | 34 práticas organizadas em: Gerais, de Serviço e Técnicas |
| **Princípios Orientadores** | 7 princípios: Foco em valor, Comece onde você está, Progrida iterativamente, etc. |
| **Melhoria Contínua** | Modelo em 7 etapas para melhorar serviços e processos |

### Práticas mais aplicadas em TCCs

| Prática | Quando aplicar |
|---------|---------------|
| **Incident Management** | Projeto sobre gestão de incidentes, service desk, suporte |
| **Service Desk** | Projeto sobre ponto único de contato, atendimento ao usuário |
| **Knowledge Management** | Projeto sobre base de conhecimento, documentação de soluções |
| **Service Level Management** | Projeto que define SLAs, metas de atendimento |
| **Problem Management** | Projeto sobre análise de causa raiz, redução de reincidência |
| **Change Enablement** | Projeto sobre gestão de mudanças na infraestrutura |
| **Asset Management** | Projeto sobre inventário de equipamentos |

### Como referenciar o ITIL v4

```
AXELOS. ITIL Foundation: ITIL 4 Edition. London: TSO, 2019.
```

### Exemplo de preenchimento na tabela do README

```markdown
| Framework | Versão | Processos/Domínios Utilizados |
|-----------|--------|-------------------------------|
| **ITIL** | **v4** | **Incident Management, Service Desk, Knowledge Management, SLM** |
| COBIT | 2019 | DSS02 — referência complementar |
```

---

## COBIT 2019 — Control Objectives for Information and Related Technologies

**O que é:** Framework de governança e gestão de TI empresarial, desenvolvido pela ISACA.

**Versão atual:** COBIT 2019

**Quando usar:** Quando o projeto foca em governança estratégica, controles, avaliação de maturidade ou alinhamento de TI com o negócio.

### Estrutura principal

| Componente | Descrição |
|-----------|-----------|
| **Objetivos de Governança** | 5 objetivos: EDM01-05 (Avaliar, Dirigir, Monitorar) |
| **Objetivos de Gestão** | 35 objetivos em 4 domínios: APO, BAI, DSS, MEA |
| **Modelo de Maturidade** | Escala 0-5 para avaliar o nível de maturidade de cada processo |
| **Fatores de Design** | 11 fatores que influenciam o design do sistema de governança |

### Domínios e objetivos mais usados em TCCs

| Domínio | Sigla | Objetivos relevantes para TCC |
|---------|-------|-------------------------------|
| Alinhar, Planejar e Organizar | **APO** | APO14 (Gestão de Dados), APO12 (Gestão de Riscos) |
| Construir, Adquirir e Implementar | **BAI** | BAI01 (Gestão de Projetos), BAI09 (Gestão de Ativos) |
| Entregar, Servir e Suportar | **DSS** | DSS02 (Incidentes), DSS04 (Continuidade), DSS05 (Segurança) |
| Monitorar, Avaliar e Assegurar | **MEA** | MEA01 (Monitoramento) |

### Modelo de maturidade (usado no diagnóstico)

| Nível | Nome | Descrição |
|-------|------|-----------|
| 0 | Incompleto | Processo não existe ou não atinge seu propósito |
| 1 | Inicial | Processo existe mas é informal e ad hoc |
| 2 | Gerenciado | Processo é planejado e monitorado |
| 3 | Definido | Processo documentado e padronizado |
| 4 | Quantitativamente Gerenciado | Processo medido com indicadores quantitativos |
| 5 | Otimizando | Processo em melhoria contínua |

### Como referenciar o COBIT 2019

```
ISACA. COBIT 2019 Framework: Governance and Management Objectives. Schaumburg: ISACA, 2018.
```

### Exemplo de preenchimento na tabela do README

```markdown
| Framework | Versão | Processos/Domínios Utilizados |
|-----------|--------|-------------------------------|
| **COBIT** | **2019** | **DSS02 (Incidentes), APO14 (Dados), MEA01 (Monitoramento)** |
| ITIL | v4 | Incident Management — referência complementar |
```

---

## LGPD — Lei Geral de Proteção de Dados Pessoais

**O que é:** Lei brasileira (Lei 13.709/2018) que regula o tratamento de dados pessoais.

**Quando usar:** Quando o projeto envolve coleta, armazenamento, processamento ou compartilhamento de dados pessoais (de alunos, clientes, funcionários, etc.).

### Conceitos principais da LGPD

| Conceito | Definição |
|----------|-----------|
| **Dado pessoal** | Qualquer informação que identifique ou possa identificar uma pessoa (nome, CPF, e-mail, etc.) |
| **Dado sensível** | Dado pessoal sobre origem racial, convicção religiosa, saúde, biometria, etc. (requer cuidado extra) |
| **Titular** | A pessoa a quem os dados pertencem |
| **Controlador** | Quem decide como os dados serão tratados (ex: a organização) |
| **Operador** | Quem trata os dados em nome do controlador (ex: fornecedor de software) |
| **DPO** | Encarregado de dados — responsável pela conformidade com a LGPD |
| **Bases legais** | 10 hipóteses que autorizam o tratamento de dados (ex: consentimento, contrato, interesse legítimo) |
| **ANPD** | Autoridade Nacional de Proteção de Dados — órgão fiscalizador |

### Princípios da LGPD (Art. 6º)

| Princípio | O que significa |
|-----------|----------------|
| **Finalidade** | Tratar dados apenas para fins legítimos e informados |
| **Adequação** | Compatibilidade entre o tratamento e a finalidade |
| **Necessidade** | Usar apenas os dados estritamente necessários |
| **Livre acesso** | Titular pode consultar, corrigir e excluir seus dados |
| **Qualidade** | Dados devem ser exatos, claros e atualizados |
| **Transparência** | Informar ao titular como seus dados são usados |
| **Segurança** | Medidas técnicas para proteger os dados |
| **Prevenção** | Adotar medidas para prevenir danos |
| **Não discriminação** | Não usar dados para fins discriminatórios |
| **Responsabilização** | Demonstrar conformidade com a lei |

### Como referenciar a LGPD

```
BRASIL. Lei nº 13.709, de 14 de agosto de 2018. Lei Geral de Proteção de Dados Pessoais (LGPD). Brasília: Presidência da República, 2018. Disponível em: https://www.planalto.gov.br/ccivil_03/_ato2015-2018/2018/lei/l13709.htm. Acesso em: 05 ago. 2026.
```

### Exemplo de preenchimento na tabela do README

```markdown
| Framework | Versão | Processos/Domínios Utilizados |
|-----------|--------|-------------------------------|
| **LGPD** | **Lei 13.709/2018** | **Art. 46-51 (Segurança), Princípios de finalidade e necessidade (Art. 6º)** |
| ISO/IEC 27001 | 2022 | Controles de segurança da informação — referência complementar |
```

---

## ISO/IEC 27001:2022 — Gestão de Segurança da Informação

**O que é:** Norma internacional para sistemas de gestão de segurança da informação (SGSI).

**Versão atual:** ISO/IEC 27001:2022

**Quando usar:** Quando o projeto foca em proteção de informações, análise de riscos de segurança, controles de acesso ou conformidade com regulatórias de segurança.

### Estrutura

| Componente | Descrição |
|-----------|-----------|
| **Cláusulas 4-10** | Requisitos do SGSI (contexto, liderança, planejamento, suporte, operação, avaliação, melhoria) |
| **Anexo A** | 93 controles organizados em 4 temas: Organizacionais (37), Pessoas (8), Físicos (14), Tecnológicos (34) |
| **Análise de Riscos** | Identificar, avaliar e tratar riscos de segurança |
| **Declaração de Aplicabilidade (SoA)** | Documento que justifica quais controles foram aplicados |

### Controles mais citados em TCCs

| Controle | Descrição |
|----------|-----------|
| **A.5 Políticas de segurança** | Criar e comunicar políticas de SI |
| **A.8 Gestão de ativos** | Inventário e classificação de ativos |
| **A.9 Controle de acesso** | Gerenciar quem acessa o quê |
| **A.12 Segurança em operações** | Procedimentos operacionais, monitoramento |
| **A.13 Segurança em comunicações** | Proteção de redes e transferência de informações |
| **A.16 Gestão de incidentes de segurança** | Registrar e responder a incidentes |

### Como referenciar a ISO 27001

```
ASSOCIAÇÃO BRASILEIRA DE NORMAS TÉCNICAS. NBR ISO/IEC 27001:2022 — Tecnologia da informação — Técnicas de segurança — Sistemas de gestão da segurança da informação — Requisitos. Rio de Janeiro: ABNT, 2022.
```

---

## Tabela resumo: qual framework usar no seu projeto

| Descrição do projeto | Framework recomendado |
|---------------------|----------------------|
| "Nosso projeto implementa um sistema de chamados / helpdesk" | **ITIL v4** (Incident Management + Service Desk) |
| "Nosso projeto avalia a maturidade de TI da organização" | **COBIT 2019** (modelo de maturidade) |
| "Nosso projeto trata dados pessoais de clientes/alunos" | **LGPD** + ISO 27701 |
| "Nosso projeto propõe controles de segurança digital" | **ISO/IEC 27001** |
| "Nosso projeto organiza inventário de equipamentos" | **COBIT 2019 (BAI09)** ou **ISO 55001** |
| "Nosso projeto automatiza processos de negócio com TI" | **COBIT 2019 (BAI01)** ou **BPM** |
| "Nosso projeto propõe política de backup/continuidade" | **COBIT 2019 (DSS04)** ou **ISO 22301** |
| "Nosso projeto usa IoT e precisa de segurança" | **IEC 62443** + **ISO 27001** |

---

## Dúvidas frequentes sobre frameworks

**"Posso usar dois frameworks?"**
Sim! Na maioria dos TCCs, usa-se um framework principal e um complementar. O principal guia o processo proposto; o complementar fornece conceitos ou reforça o diagnóstico.

**"O framework precisa ser o mais famoso?"**
Não. O mais importante é que o framework seja adequado ao problema e que você consiga justificar sua escolha com base na literatura.

**"Onde encontro o material oficial dos frameworks?"**
- ITIL v4: [axelos.com/certifications/itil-service-management](https://www.axelos.com)
- COBIT 2019: [isaca.org/resources/cobit](https://www.isaca.org)
- LGPD: [planalto.gov.br](https://www.planalto.gov.br/ccivil_03/_ato2015-2018/2018/lei/l13709.htm)
- ISO 27001: disponível via ABNT ou universidades com acesso à biblioteca digital

---

*Guia elaborado para os TCCs de Governança de TI — ETEC Jaraguá, semestre 2026.1.*
