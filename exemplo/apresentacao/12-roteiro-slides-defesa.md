# Roteiro dos Slides — Defesa do TCC InfoPro

> **Título:** Implantação de Gestão de Incidentes ITIL v4 na Escola Técnica InfoPro
> **Tempo:** 12 minutos + 5 min perguntas
> **Total:** 15 slides

---

### Slide 1 — Capa (30 seg)

```
IMPLANTAÇÃO DE GESTÃO DE INCIDENTES ITIL v4
NA ESCOLA TÉCNICA INFOPRO

Ana Carolina Santos | Bruno Ferreira Lima
Carla Mendes Oliveira | Diego Alves Ribeiro

Orientadora: Profª Tainá Oliveira
ETEC Zona Sul — Manutenção e Suporte em Informática
Governança de TI — 2026.1
```

---

### Slide 2 — Agenda (15 seg)

```
1. O Problema
2. Objetivos
3. ITIL v4 + Metodologia
4. Diagnóstico (AS-IS)
5. Proposta (TO-BE)
6. Resultados
7. Conclusões
```

---

### Slide 3 — O Problema (1 min)

**Fala:** _"A InfoPro tem 3 labs com 90 computadores e nenhum processo formal de suporte. Quando algo quebra, o aluno avisa o professor, que manda um WhatsApp para o técnico — quando lembra. O resultado são esses números:"_

```
🔴 5,3 DIAS para resolver um incidente
🔴 34% dos problemas são REINCIDENTES
🔴 60% dos incidentes NÃO SÃO REGISTRADOS
🔴 12 AULAS/MÊS impactadas
🔴 NPS do suporte: 23 (zona crítica)
```

---

### Slide 4 — Justificativa (45 seg)

**Fala:** _"Isso não é só um problema técnico — é um problema de processo. Os técnicos são competentes, mas não têm ferramentas nem processo. E o impacto é direto na sala de aula."_

```
💰 R$ 2.400/mês em retrabalho estimado
📉 144 horas/aula perdidas por semestre
😤 87% dos professores NUNCA recebem feedback
📖 Aplicação direta de ITIL v4 — conteúdo da disciplina
```

---

### Slide 5 — Objetivos (45 seg)

**Fala:** _"Nosso objetivo principal: reduzir o tempo de resolução em pelo menos 40%, usando ITIL v4."_

```
🎯 OBJETIVO GERAL
Propor e validar um modelo de gestão de incidentes baseado em
ITIL v4, visando reduzir o MTTR em ≥40%

📋 ESPECÍFICOS
1. Diagnosticar o cenário atual (3 meses de dados)
2. Mapear processo AS-IS em BPMN
3. Projetar processo TO-BE com ITIL v4
4. Criar catálogo + base de conhecimento
5. Validar por simulação com dados reais
```

---

### Slide 6 — Framework e Metodologia (1 min)

**Fala:** _"Usamos ITIL v4 como framework principal, focando em 4 práticas. A pesquisa é um estudo de caso com abordagem mista."_

```
📘 ITIL v4
• Incident Management (fluxo principal)
• Knowledge Management (base de soluções)
• Service Desk (ponto único de contato)
• Service Level Management (SLAs)

🔬 METODOLOGIA
• Estudo de caso com pesquisa-ação
• Entrevistas (2 técnicos) + Questionário (8 professores)
• Observação: 60 dias nos 3 labs
• Análise de 141 incidentes em 3 meses
```

---

### Slide 7 — Diagnóstico AS-IS (1 min)

**Fala:** _"Este é o fluxo atual. Reparem nos pontos vermelhos — são onde a informação se perde."_

```
[DIAGRAMA AS-IS SIMPLIFICADO — versão visual]

Aluno → Professor → Caderno (40%) → WhatsApp → Técnico → Resolve? → Sem feedback
                     ❌ Perde (60%)   ❌ Esquece              ❌ Sem SLA

⏱️ Tempo ponta-a-ponta: 5,3 dias
🔄 Reincidência: 34%
📊 Maturidade ITIL: 0,1 / 5,0
```

---

### Slide 8 — Pontos Críticos (1 min)

**Fala:** _"Identificamos 7 pontos críticos. Os 3 mais graves:"_

```
🔴 #1 SEM REGISTRO FORMAL
   60% dos incidentes não são registrados em lugar nenhum

🔴 #2 CONHECIMENTO NA CABEÇA DO TÉCNICO
   Zero soluções documentadas → 34% de reincidência

🔴 #3 ZERO PRIORIZAÇÃO
   Técnico decide por "feeling" → labs inteiros parados
   enquanto problemas menores são resolvidos
```

---

### Slide 9 — Proposta TO-BE (1.5 min)

**Fala:** _"Nosso processo proposto. Os quadros em azul são as novidades."_

```
[DIAGRAMA TO-BE SIMPLIFICADO — versão visual]

Usuário → 📋 Google Forms → ⚡ Categoriza auto → 🎯 Prioriza (P1-P4)
                                                        ↓
                                    📚 Base de Conhecimento?
                                   SIM → N1 resolve (15 min)
                                   NÃO → N2 (Técnico) → N3 (Coord)
                                                        ↓
                                    📧 Notifica usuário + 📊 Atualiza métricas

✅ 100% registrado | ✅ Priorizado | ✅ Rastreável | ✅ Com feedback
```

---

### Slide 10 — Artefatos Criados (1 min)

**Fala:** _"O projeto gerou 12 entregáveis concretos. Destaco estes 4:"_

```
[4 MINIATURAS/SCREENSHOTS lado a lado]

📋 Formulário Digital     📚 Base de Conhecimento
   (Google Forms)            (23 soluções passo-a-passo)

📊 Catálogo de Incidentes 📐 Matriz RACI
   (20 tipos catalogados)    (12 atividades × 4 atores)

+ Matriz de Prioridade + SLAs + Plano de Implementação
```

---

### Slide 11 — Resultados: AS-IS vs TO-BE (1.5 min)

**Fala:** _"Este é o slide mais importante. Cada linha mostra uma melhoria projetada com base nos dados reais."_

```
┌──────────────────────────┬──────────┬──────────┬──────────┐
│ Métrica                  │  AS-IS   │  TO-BE   │ Variação │
├──────────────────────────┼──────────┼──────────┼──────────┤
│ MTTR (tempo resolução)   │ 5,3 dias │ 2,5 dias │  -52% ✅ │
│ Taxa de reincidência     │ 34%      │ 11%      │  -68% ✅ │
│ Incidentes registrados   │ 40%      │ 100%     │ +150% ✅ │
│ Resolução em N1          │ 0%       │ 38%      │  +38  ✅ │
│ Aderência ao SLA         │ N/A      │ 78%      │   --  ✅ │
│ Aulas impactadas/mês     │ 12       │ 4        │  -67% ✅ │
│ NPS (satisfação)         │ 23       │ 58       │ +152% ✅ │
└──────────────────────────┴──────────┴──────────┴──────────┘

🎯 Meta: -40% no MTTR → Resultado: -52% ✅ META SUPERADA
```

---

### Slide 12 — Plano de Implementação (45 seg)

**Fala:** _"A implementação proposta custa R$ 15 e leva 12 semanas."_

```
[TIMELINE VISUAL]

Sem 1-2        Sem 3-6          Sem 7-10        Sem 11-12
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
PREPARAÇÃO    PILOTO (Lab 1)   EXPANSÃO        ESTABILIZAÇÃO
• Forms       • Operação real  • Labs 2 e 3    • Métricas reais
• Treinar N1  • Ajustes        • Dashboard     • Lições aprendidas
• Comunicar   • Feedback       • Status coord  • Handoff

💰 Custo total: R$ 15,00 (QR Codes impressos)
🛠️ Ferramentas: Google Forms + Sheets + Trello (gratuitos)
```

---

### Slide 13 — Conclusões (1 min)

**Fala:** _"Quatro conclusões principais."_

```
1️⃣  O problema era ORGANIZACIONAL, não técnico
    → Falta de processo > falta de equipamento

2️⃣  Ferramentas GRATUITAS são viáveis
    → Google Forms + Sheets + Trello atendem

3️⃣  ITIL v4 é ADAPTÁVEL a pequenas operações
    → Não precisa implementar tudo — 2 práticas já geram impacto

4️⃣  A FORMALIZAÇÃO muda a cultura
    → Só ter um formulário já eleva a consciência sobre reportar
```

---

### Slide 14 — Trabalhos Futuros (30 seg)

```
🔮 PRÓXIMOS PASSOS
• Implementação real no semestre 2026.2
• Expansão para Problem Management (causa raiz)
• Implantação do GLPI como Service Desk
• Dashboard de indicadores para coordenação
```

---

### Slide 15 — Obrigado (15 seg)

```
OBRIGADO!
Estamos à disposição para perguntas.

📂 Repositório: [QR CODE]
github.com/equipe/tcc-gov-ti-gestao-incidentes-infopro

👥 Ana Carolina | Bruno | Carla | Diego
📧 equipe@etec.sp.gov.br
```

---

## Respostas Preparadas para a Banca

| Pergunta Provável | Resposta Preparada |
|---|---|
| "Por que ITIL e não COBIT?" | ITIL é focado em gestão de serviços e tem práticas operacionais diretas (Incident Mgmt). COBIT é mais estratégico/governança. Para o problema operacional da InfoPro, ITIL era mais adequado. Usamos COBIT DSS02 como referência complementar. |
| "Como garantir que professores usem o formulário?" | 3 ações: QR Code colado na mesa do professor em cada lab, comunicação da coordenação, e o fato de que o formulário é mais rápido que WhatsApp (3 min vs. texto digitado). |
| "Simulação não é implementação real." | Correto — é a principal limitação. Por isso propomos piloto no Lab 1 no próximo semestre. Mas os 3 vetores de melhoria são independentes, então mesmo com adesão parcial, a meta de -40% é atingível. |
| "R$ 15 é realista?" | Sim, porque tudo roda em Google Workspace que a escola já tem. O custo real é tempo do técnico para configurar (~8h) e treinar monitores (~2h). |
| "E se o técnico sair da escola?" | Essa é justamente a razão da base de conhecimento: documentar o que está na cabeça dele. Com 23 soluções escritas, qualquer substituto consegue resolver 38% dos incidentes em N1 no primeiro dia. |
