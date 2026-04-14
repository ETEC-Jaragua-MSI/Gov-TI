# Diagnóstico do Cenário Atual

> **Projeto:** {{TÍTULO_DO_PROJETO}}
> **Data:** {{DD/MM/AAAA}}
> **Autor(es):** {{Nomes}}
> **Versão:** {{1.0}}

---

## 1. Identificação da Organização

| Campo | Detalhe |
|-------|---------|
| **Nome** | {{Nome da organização (pode ser fictício se anonimizado)}} |
| **Segmento** | {{Ex: Educação, Saúde, Varejo, Indústria}} |
| **Porte** | {{Micro / Pequena / Média / Grande}} |
| **Nº de colaboradores** | {{Quantidade}} |
| **Nº de usuários de TI** | {{Quantidade de pessoas que usam recursos de TI}} |
| **Localização** | {{Cidade/UF}} |

## 2. Infraestrutura de TI Atual

### 2.1 Parque Tecnológico

| Recurso | Quantidade | Idade Média | Estado Geral |
|---------|-----------|-------------|--------------|
| {{Desktops}} | {{Qtd}} | {{X anos}} | {{Bom / Regular / Ruim}} |
| {{Notebooks}} | {{Qtd}} | {{X anos}} | {{Estado}} |
| {{Impressoras}} | {{Qtd}} | {{X anos}} | {{Estado}} |
| {{Servidores}} | {{Qtd}} | {{X anos}} | {{Estado}} |
| {{Switches/Roteadores}} | {{Qtd}} | {{X anos}} | {{Estado}} |
| {{Outros}} | {{Qtd}} | {{X anos}} | {{Estado}} |

### 2.2 Softwares e Sistemas

| Sistema / Software | Finalidade | Versão | Licenciamento |
|--------------------|-----------|--------|---------------|
| {{Ex: Windows 10}} | {{Sistema operacional}} | {{22H2}} | {{OEM / Volume / Pirata}} |
| {{Ex: LibreOffice}} | {{Produtividade}} | {{7.x}} | {{Livre}} |
| {{Outros}} | {{Finalidade}} | {{Versão}} | {{Tipo}} |

### 2.3 Equipe de TI

| Cargo / Função | Quantidade | Formação | Dedicação |
|----------------|-----------|----------|-----------|
| {{Ex: Técnico de informática}} | {{1}} | {{Nível técnico / Superior}} | {{Integral / Parcial}} |
| {{Outro}} | {{Qtd}} | {{Formação}} | {{Dedicação}} |

## 3. Processo Analisado: {{Nome do processo — ex: Gestão de Incidentes}}

### 3.1 Situação Atual (AS-IS)

<!--
  Descreva narrativamente como o processo funciona HOJE.
  Inclua: quem faz, como faz, onde registra, como comunica, quanto tempo leva.
-->

{{Descrição narrativa do processo atual em 3-5 parágrafos}}

### 3.2 Ferramentas Utilizadas Atualmente

| Etapa do Processo | Ferramenta Atual | Problemas Identificados |
|-------------------|-----------------|------------------------|
| {{Ex: Registro de chamados}} | {{Ex: Caderno físico}} | {{Ex: Sem rastreabilidade, perda de informação}} |
| {{Ex: Comunicação}} | {{Ex: WhatsApp}} | {{Ex: Sem histórico formal, mensagens perdidas}} |
| {{Ex: Acompanhamento}} | {{Ex: Nenhuma}} | {{Ex: Sem visibilidade do status}} |

### 3.3 Pontos Críticos Identificados

<!--
  Liste os principais problemas encontrados, com evidências.
-->

| # | Problema | Evidência / Dado | Impacto | Severidade |
|---|---------|-----------------|---------|------------|
| 1 | {{Problema 1}} | {{Dado que comprova}} | {{Consequência}} | 🔴 Alto / 🟡 Médio / 🟢 Baixo |
| 2 | {{Problema 2}} | {{Dado}} | {{Consequência}} | 🔴 / 🟡 / 🟢 |
| 3 | {{Problema 3}} | {{Dado}} | {{Consequência}} | 🔴 / 🟡 / 🟢 |
| 4 | {{Problema 4}} | {{Dado}} | {{Consequência}} | 🔴 / 🟡 / 🟢 |
| 5 | {{Problema 5}} | {{Dado}} | {{Consequência}} | 🔴 / 🟡 / 🟢 |

## 4. Métricas do Cenário Atual (Baseline)

<!--
  Estas métricas serão comparadas com o cenário TO-BE ao final do projeto.
-->

| Métrica / KPI | Valor Atual | Método de Medição | Período |
|---------------|-------------|-------------------|---------|
| {{Ex: Tempo médio de resolução (MTTR)}} | {{Ex: 5,3 dias}} | {{Ex: Análise do caderno de registros}} | {{Ex: Mar-Mai/2026}} |
| {{Ex: Volume de chamados/mês}} | {{Ex: 47}} | {{Ex: Contagem dos registros}} | {{Período}} |
| {{Ex: Taxa de reincidência}} | {{Ex: 34%}} | {{Ex: Chamados repetidos / total}} | {{Período}} |
| {{Ex: % de incidentes registrados}} | {{Ex: 40%}} | {{Ex: Estimativa por entrevista}} | {{Período}} |
| {{Ex: Satisfação do usuário (NPS)}} | {{Ex: 23}} | {{Ex: Questionário aplicado}} | {{Período}} |

## 5. Coleta de Dados

### 5.1 Métodos Utilizados

| Método | Público-alvo | Amostra | Período | Instrumento |
|--------|-------------|---------|---------|-------------|
| {{Entrevista}} | {{Técnicos de TI}} | {{2 pessoas}} | {{DD/MM a DD/MM}} | {{Roteiro em `dados/roteiro-entrevista.md`}} |
| {{Questionário}} | {{Professores/Usuários}} | {{8 pessoas}} | {{DD/MM a DD/MM}} | {{Google Forms — respostas em `dados/questionario-respostas.csv`}} |
| {{Observação}} | {{Laboratórios}} | {{3 labs, 60 dias}} | {{DD/MM a DD/MM}} | {{Diário de campo}} |
| {{Análise documental}} | {{Registros existentes}} | {{3 meses}} | {{DD/MM a DD/MM}} | {{Caderno de chamados}} |

### 5.2 Resumo das Entrevistas

<!--
  Para cada entrevistado, resuma os pontos-chave (sem identificar nominalmente — use cargos).
-->

**Entrevistado 1 — {{Cargo}}:**
- {{Ponto-chave 1}}
- {{Ponto-chave 2}}
- {{Ponto-chave 3}}

**Entrevistado 2 — {{Cargo}}:**
- {{Ponto-chave 1}}
- {{Ponto-chave 2}}
- {{Ponto-chave 3}}

### 5.3 Resultados do Questionário

<!--
  Resuma os principais achados. Dados brutos em dados/questionario-respostas.csv
-->

- **{{Pergunta-chave 1}}:** {{Resumo da resposta — ex: "75% consideram o suporte lento"}}
- **{{Pergunta-chave 2}}:** {{Resumo}}
- **{{Pergunta-chave 3}}:** {{Resumo}}

## 6. Análise de Aderência ao Framework

<!--
  Compare o cenário atual com as práticas recomendadas pelo framework escolhido.
-->

| Prática / Requisito do Framework | Situação Atual | Gap Identificado | Nível de Maturidade (0-5) |
|----------------------------------|---------------|-----------------|--------------------------|
| {{Ex: Registro de incidentes}} | {{Caderno físico, informal}} | {{Sem sistema, sem categorização}} | {{1 — Inicial}} |
| {{Ex: Categorização e priorização}} | {{Inexistente}} | {{Total — não há critérios}} | {{0 — Inexistente}} |
| {{Ex: Base de conhecimento}} | {{Inexistente}} | {{Soluções na cabeça do técnico}} | {{0 — Inexistente}} |
| {{Ex: SLAs definidos}} | {{Inexistente}} | {{Sem metas de tempo}} | {{0 — Inexistente}} |
| {{Ex: Melhoria contínua}} | {{Inexistente}} | {{Sem métricas, sem revisão}} | {{0 — Inexistente}} |

## 7. Diagrama do Processo Atual (AS-IS)

> Ver diagrama completo em `diagramas/processo-as-is.drawio`

<!--
  Cole aqui uma versão simplificada em texto ou imagem do fluxo AS-IS.
-->

```
{{Usuário}} → {{Reporta verbalmente}} → {{Professor}} → {{Anota em caderno}} → {{Repassa ao técnico}} → {{Técnico resolve}} → {{Sem feedback ao usuário}}
```

## 8. Conclusão do Diagnóstico

### Principais Achados

1. {{Achado principal 1}}
2. {{Achado principal 2}}
3. {{Achado principal 3}}

### Recomendação

{{Resumo de 2-3 frases indicando o que o projeto vai propor com base no diagnóstico.}}

---

**Próximo artefato:** [Mapeamento AS-IS (BPMN)](../diagramas/processo-as-is.md)
