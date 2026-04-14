# Mapeamento do Processo TO-BE

> **Projeto:** {{TÍTULO_DO_PROJETO}}
> **Processo:** {{Nome do processo proposto}}
> **Framework base:** {{ITIL v4 / COBIT 2019 / ISO 27001}}
> **Notação:** BPMN 2.0 (simplificada)

---

## Diagrama em Mermaid

```mermaid
flowchart TD
    A["{{Evento inicial — ex: Usuário identifica incidente}}"] --> B["{{Atividade 1 — ex: Registra via formulário digital}}"]
    B --> C["{{Atividade 2 — ex: Sistema categoriza automaticamente}}"]
    C --> D["{{Atividade 3 — ex: Priorização por matriz impacto×urgência}}"]
    D --> E{"{{Decisão 1 — ex: Solução na base de conhecimento?}}"}
    E -->|Sim| F["{{Atividade 4 — ex: N1 aplica solução documentada}}"]
    E -->|Não| G["{{Atividade 5 — ex: Escalona para N2}}"]
    F --> H{"{{Decisão 2 — ex: Resolvido?}}"}
    G --> I["{{Atividade 6 — ex: Técnico especialista diagnostica}}"]
    H -->|Sim| J["{{Atividade 7 — ex: Registra solução + Fecha chamado}}"]
    H -->|Não| G
    I --> K{"{{Decisão 3 — ex: Resolvido no N2?}}"}
    K -->|Sim| J
    K -->|Não| L["{{Atividade 8 — ex: Escalona para N3/fornecedor}}"]
    L --> J
    J --> M["{{Atividade 9 — ex: Notifica usuário}}"]
    M --> N["{{Atividade 10 — ex: Atualiza base de conhecimento}}"]
    N --> O["{{Evento final — ex: Incidente encerrado com registro completo}}"]
```

## Raias (Swimlanes) — TO-BE

| Raia / Ator | Atividades | Mudança em relação ao AS-IS |
|-------------|-----------|----------------------------|
| **{{Ator 1}}** | {{Atividades}} | {{O que mudou}} |
| **{{Ator 2}}** | {{Atividades}} | {{O que mudou}} |
| **{{Ator 3}}** | {{Atividades}} | {{O que mudou}} |

## Detalhamento das Atividades TO-BE

| # | Atividade | Responsável | Entrada | Saída | Tempo Alvo | Ferramenta |
|---|----------|-------------|---------|-------|------------|-----------|
| 1 | {{Atividade}} | {{Quem}} | {{Entrada}} | {{Saída}} | {{Meta}} | {{Ferramenta}} |
| 2 | {{Atividade}} | {{Quem}} | {{Entrada}} | {{Saída}} | {{Meta}} | {{Ferramenta}} |

## Comparativo AS-IS vs TO-BE

| Aspecto | AS-IS (Antes) | TO-BE (Proposto) | Melhoria Esperada |
|---------|---------------|------------------|-------------------|
| {{Aspecto 1}} | {{Como era}} | {{Como será}} | {{Benefício}} |
| {{Aspecto 2}} | {{Como era}} | {{Como será}} | {{Benefício}} |

## Justificativa Baseada no Framework

| Atividade TO-BE | Prática do Framework | Referência |
|----------------|---------------------|-----------|
| {{Atividade 1}} | {{Prática recomendada}} | {{Ex: ITIL 4, Incident Management, §5.2}} |
| {{Atividade 2}} | {{Prática recomendada}} | {{Referência}} |
