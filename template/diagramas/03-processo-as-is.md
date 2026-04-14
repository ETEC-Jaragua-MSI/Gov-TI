# Mapeamento do Processo AS-IS

> **Projeto:** {{TÍTULO_DO_PROJETO}}
> **Processo:** {{Nome do processo mapeado}}
> **Notação:** BPMN 2.0 (simplificada)
> **Ferramenta sugerida:** Draw.io / Bizagi / Lucidchart

---

## Diagrama em Mermaid (versão simplificada)

<!--
  Use este diagrama como RASCUNHO para depois criar a versão visual no Draw.io.
  Substitua os {{placeholders}} pelo fluxo real do processo atual.
-->

```mermaid
flowchart TD
    A["{{Evento inicial — ex: Usuário detecta problema}}"] --> B["{{Atividade 1 — ex: Reporta ao responsável}}"]
    B --> C{"{{Decisão 1 — ex: Responsável registra?}}"}
    C -->|Sim| D["{{Atividade 2 — ex: Anota no caderno}}"]
    C -->|Não| E["{{Atividade 3 — ex: Informação se perde}}"]
    D --> F["{{Atividade 4 — ex: Comunica ao técnico}}"]
    E --> F
    F --> G{"{{Decisão 2 — ex: Técnico disponível?}}"}
    G -->|Sim| H["{{Atividade 5 — ex: Técnico diagnostica}}"]
    G -->|Não| I["{{Atividade 6 — ex: Chamado espera}}"]
    I --> G
    H --> J{"{{Decisão 3 — ex: Consegue resolver?}}"}
    J -->|Sim| K["{{Atividade 7 — ex: Aplica solução}}"]
    J -->|Não| L["{{Atividade 8 — ex: Equipamento parado}}"]
    K --> M["{{Evento final — ex: Máquina disponível (sem feedback)}}"]
    L --> M
```

## Raias (Swimlanes)

| Raia / Ator | Atividades |
|-------------|-----------|
| **{{Ator 1 — ex: Usuário/Aluno}}** | {{Lista de atividades deste ator}} |
| **{{Ator 2 — ex: Professor}}** | {{Lista de atividades}} |
| **{{Ator 3 — ex: Técnico de TI}}** | {{Lista de atividades}} |
| **{{Ator 4 — ex: Coordenação}}** | {{Lista de atividades (se aplicável)}} |

## Descrição das Atividades

| # | Atividade | Responsável | Entrada | Saída | Tempo Médio | Problemas |
|---|----------|-------------|---------|-------|-------------|-----------|
| 1 | {{Atividade}} | {{Quem}} | {{O que recebe}} | {{O que produz}} | {{Tempo}} | {{Gargalos}} |
| 2 | {{Atividade}} | {{Quem}} | {{Entrada}} | {{Saída}} | {{Tempo}} | {{Problemas}} |
| 3 | {{Atividade}} | {{Quem}} | {{Entrada}} | {{Saída}} | {{Tempo}} | {{Problemas}} |

## Pontos de Melhoria Identificados

| # | Ponto no Fluxo | Problema | Oportunidade de Melhoria |
|---|---------------|---------|--------------------------|
| 1 | {{Onde no fluxo}} | {{Qual problema}} | {{O que pode ser feito}} |
| 2 | {{Onde}} | {{Problema}} | {{Melhoria}} |
| 3 | {{Onde}} | {{Problema}} | {{Melhoria}} |
