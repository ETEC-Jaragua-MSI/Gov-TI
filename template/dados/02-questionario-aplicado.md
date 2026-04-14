# Questionário de Avaliação — {{Nome do Processo de TI}}

> **Projeto:** {{TÍTULO_DO_PROJETO}}
> **Público-alvo:** {{Ex: Professores, usuários, gestores}}
> **Período de aplicação:** {{DD/MM a DD/MM/AAAA}}
> **Ferramenta:** {{Google Forms / Microsoft Forms / Presencial}}

---

## Instruções para o Respondente

{{Texto introdutório explicando o objetivo da pesquisa, confidencialidade e tempo estimado de resposta.}}

Tempo estimado: {{5-10}} minutos.
Suas respostas são **anônimas** e serão utilizadas exclusivamente para fins acadêmicos.

---

## Seção 1 — Perfil do Respondente

**Q1. Qual sua função na organização?**
- [ ] {{Opção 1 — ex: Professor}}
- [ ] {{Opção 2 — ex: Administrativo}}
- [ ] {{Opção 3 — ex: Coordenador}}
- [ ] Outro: ___________

**Q2. Há quanto tempo trabalha na organização?**
- [ ] Menos de 1 ano
- [ ] 1 a 3 anos
- [ ] 3 a 5 anos
- [ ] Mais de 5 anos

**Q3. Com que frequência utiliza os recursos de TI da organização?**
- [ ] Diariamente
- [ ] 2-3 vezes por semana
- [ ] Semanalmente
- [ ] Raramente

---

## Seção 2 — Percepção sobre {{o processo analisado}}

**Q4. {{Pergunta sobre como reporta/utiliza o processo atualmente}}**
<!-- Ex: "Como você reporta problemas de TI quando ocorrem?" -->
- [ ] {{Opção 1}}
- [ ] {{Opção 2}}
- [ ] {{Opção 3}}
- [ ] {{Opção 4}}
- [ ] Outro: ___________

**Q5. {{Pergunta sobre frequência do problema}}**
<!-- Ex: "Com que frequência você enfrenta problemas de TI no seu trabalho?" -->
- [ ] Diariamente
- [ ] Semanalmente
- [ ] Mensalmente
- [ ] Raramente
- [ ] Nunca

**Q6. {{Pergunta sobre tempo de resolução percebido}}**
<!-- Ex: "Quando reporta um problema, quanto tempo costuma levar para ser resolvido?" -->
- [ ] Menos de 1 hora
- [ ] 1 hora a 1 dia
- [ ] 1 a 3 dias
- [ ] 3 a 7 dias
- [ ] Mais de 7 dias
- [ ] Nunca foi resolvido

**Q7. {{Pergunta sobre comunicação/feedback}}**
<!-- Ex: "Você recebe retorno sobre o andamento do seu chamado?" -->
- [ ] Sempre
- [ ] Frequentemente
- [ ] Às vezes
- [ ] Raramente
- [ ] Nunca

**Q8. {{Pergunta sobre satisfação geral}}**
<!-- Ex: "De 0 a 10, como avalia o suporte de TI atual?" -->

Escala: 0 (Péssimo) ——— 5 (Neutro) ——— 10 (Excelente)

---

## Seção 3 — Impacto e Prioridades

**Q9. {{Pergunta sobre impacto no trabalho}}**
<!-- Ex: "Já deixou de realizar uma atividade por problema de TI não resolvido?" -->
- [ ] Sim, frequentemente
- [ ] Sim, algumas vezes
- [ ] Raramente
- [ ] Nunca

**Q10. {{Pergunta sobre principal problema percebido}}**
<!-- Ex: "Qual o principal problema do suporte de TI atual?" (múltipla escolha) -->
- [ ] {{Opção 1 — ex: Demora na resolução}}
- [ ] {{Opção 2 — ex: Falta de retorno/comunicação}}
- [ ] {{Opção 3 — ex: Problema volta a acontecer}}
- [ ] {{Opção 4 — ex: Não sei como reportar}}
- [ ] {{Opção 5 — ex: Falta de equipamentos}}
- [ ] Outro: ___________

**Q11. {{Pergunta sobre sugestões de melhoria}}**
<!-- Ex: "Se pudesse melhorar uma coisa no suporte de TI, o que seria?" -->
(Resposta aberta)

_______________________________________________

**Q12. {{Pergunta NPS — recomendação}}**
<!-- Ex: "De 0 a 10, o quanto recomendaria o suporte de TI a um colega?" -->

Escala: 0 (Não recomendaria) ——— 10 (Recomendaria totalmente)

---

## Agradecimento

Obrigado por participar! Suas respostas contribuirão diretamente para a melhoria {{do processo/serviço analisado}}.

Dúvidas? Contate: {{email da equipe}}

---

## Tabulação de Respostas

<!--
  Após aplicar o questionário, exporte os dados para CSV e salve em:
  dados/questionario-respostas.csv
  
  Estrutura sugerida do CSV:
-->

```csv
timestamp,q1_funcao,q2_tempo,q3_frequencia,q4_{{processo}},q5_frequencia_problema,q6_tempo_resolucao,q7_feedback,q8_satisfacao,q9_impacto,q10_principal_problema,q11_sugestao,q12_nps
{{DD/MM/AAAA HH:MM}},{{resposta}},{{resposta}},{{resposta}},{{resposta}},{{resposta}},{{resposta}},{{resposta}},{{0-10}},{{resposta}},{{resposta}},{{texto livre}},{{0-10}}
```
