# Questionário de Avaliação — Suporte de TI nos Laboratórios

> **Projeto:** Implantação de Gestão de Incidentes ITIL v4 na Escola Técnica InfoPro
> **Público-alvo:** Professores que utilizam os laboratórios de informática
> **Período de aplicação:** 17/03 a 24/03/2026
> **Ferramenta:** Google Forms
> **Respondentes:** 8 de 12 professores (taxa de resposta: 67%)

---

## Instruções para o Respondente

Este questionário faz parte de um Trabalho de Conclusão de Curso (TCC) que busca melhorar o suporte de TI nos laboratórios de informática da nossa escola. Suas respostas são **anônimas** e serão utilizadas exclusivamente para fins acadêmicos.

Tempo estimado: 5 minutos.

---

## Seção 1 — Perfil do Respondente

**Q1. Qual sua função na escola?**
- [x] Professor que usa laboratório regularmente (8)

**Q2. Há quanto tempo trabalha na escola?**
- [ ] Menos de 1 ano (1)
- [ ] 1 a 3 anos (2)
- [ ] 3 a 5 anos (3)
- [ ] Mais de 5 anos (2)

**Q3. Com que frequência utiliza os laboratórios de informática?**
- [ ] Diariamente (3)
- [ ] 2-3 vezes por semana (4)
- [ ] Semanalmente (1)
- [ ] Raramente (0)

---

## Seção 2 — Percepção sobre o Suporte de TI

**Q4. Como você reporta problemas de TI quando ocorrem no laboratório?**
- [ ] Aviso o técnico pessoalmente (5 — 62%)
- [ ] Mando WhatsApp para o técnico (2 — 25%)
- [ ] Anoto no caderno do lab (1 — 13%)
- [ ] Não reporto, espero alguém resolver (0)
- [ ] Outro (0)

**Q5. Com que frequência você enfrenta problemas de TI durante as aulas no lab?**
- [ ] Toda aula (2 — 25%)
- [ ] Semanalmente (4 — 50%)
- [ ] Mensalmente (1 — 12,5%)
- [ ] Raramente (1 — 12,5%)
- [ ] Nunca (0)

**Q6. Quando reporta um problema, quanto tempo costuma levar para ser resolvido?**
- [ ] Menos de 1 hora (0)
- [ ] 1 hora a 1 dia (1 — 12,5%)
- [ ] 1 a 3 dias (1 — 12,5%)
- [ ] 3 a 7 dias (4 — 50%)
- [ ] Mais de 7 dias (2 — 25%)
- [ ] Nunca foi resolvido (0)

**Q7. Você recebe retorno sobre o andamento do seu chamado?**
- [ ] Sempre (0)
- [ ] Frequentemente (0)
- [ ] Às vezes (1 — 12,5%)
- [ ] Raramente (3 — 37,5%)
- [ ] Nunca (4 — 50%)

**Q8. De 0 a 10, como avalia o suporte de TI atual nos laboratórios?**

Respostas: 3, 4, 5, 5, 4, 6, 7, 4
**Média: 4,8** | Mediana: 4,5 | Moda: 4

---

## Seção 3 — Impacto e Prioridades

**Q9. Já deixou de realizar uma atividade pedagógica por problema de TI não resolvido?**
- [ ] Sim, frequentemente (3 — 37,5%)
- [ ] Sim, algumas vezes (4 — 50%)
- [ ] Raramente (1 — 12,5%)
- [ ] Nunca (0)

**Q10. Qual o principal problema do suporte de TI atual? (múltipla escolha)**
- [ ] Demora na resolução (4 — 50%)
- [ ] Falta de retorno/comunicação (2 — 25%)
- [ ] Problema volta a acontecer (2 — 25%)
- [ ] Não sei como reportar formalmente (0)
- [ ] Falta de equipamentos reserva (0)

**Q11. Se pudesse melhorar uma coisa no suporte de TI, o que seria?**

Respostas (resumidas):
1. "Ter um formulário online para abrir chamados e acompanhar o status"
2. "Mais agilidade, às vezes fico 1 semana sem metade das máquinas"
3. "Que me avisem quando resolveram o problema"
4. "Ter máquinas reserva para trocar quando uma quebra"
5. "Alguém no lab pelo menos no intervalo para ajudar"
6. "Um sistema para saber quais máquinas estão funcionando"
7. "Resolver de vez os problemas que sempre voltam"
8. "Comunicação mais organizada, WhatsApp não funciona"

**Q12. De 0 a 10, o quanto recomendaria o suporte de TI a um colega?**

Respostas: 2, 3, 4, 3, 2, 5, 4, 3
**NPS: 23** (0 promotores, 3 neutros, 5 detratores)

---

## Análise Consolidada

| Achado | Dado | Impacto |
|--------|------|---------|
| 75% percebem resolução > 3 dias | Q6: 50% "3-7 dias" + 25% ">7 dias" | Confirma MTTR de 5,3 dias do caderno |
| 87% sem feedback | Q7: 50% "nunca" + 37,5% "raramente" | Zero visibilidade do status para o usuário |
| 87,5% já perderam aulas | Q9: 37,5% "frequente" + 50% "algumas vezes" | Impacto direto na qualidade do ensino |
| Demora é o #1 problema | Q10: 50% selecionaram "demora" | Prioridade de intervenção: reduzir MTTR |
| NPS = 23 (zona crítica) | Q12: média 3,25 | Insatisfação generalizada |

---

## Dados Brutos

```csv
timestamp,q1_funcao,q2_tempo,q3_frequencia,q4_como_reporta,q5_freq_problema,q6_tempo_resolucao,q7_feedback,q8_satisfacao,q9_impacto,q10_principal,q11_sugestao,q12_nps
17/03/2026 08:15,Professor,3-5 anos,Diariamente,Pessoalmente,Toda aula,3-7 dias,Nunca,3,Frequentemente,Demora,"Formulário online para chamados",2
17/03/2026 09:30,Professor,>5 anos,2-3x semana,Pessoalmente,Semanalmente,3-7 dias,Raramente,4,Algumas vezes,Demora,"Mais agilidade",3
17/03/2026 14:22,Professor,1-3 anos,2-3x semana,WhatsApp,Semanalmente,>7 dias,Nunca,5,Algumas vezes,Falta retorno,"Avisem quando resolverem",4
18/03/2026 07:45,Professor,3-5 anos,Diariamente,Pessoalmente,Toda aula,3-7 dias,Raramente,5,Frequentemente,Reincidência,"Máquinas reserva",3
18/03/2026 11:10,Professor,<1 ano,2-3x semana,Pessoalmente,Semanalmente,>7 dias,Nunca,4,Algumas vezes,Demora,"Alguém no lab no intervalo",2
19/03/2026 16:00,Professor,>5 anos,Diariamente,WhatsApp,Raramente,1h-1dia,Às vezes,6,Raramente,Falta retorno,"Sistema p/ saber quais PCs funcionam",5
21/03/2026 08:50,Professor,3-5 anos,2-3x semana,Caderno lab,Semanalmente,3-7 dias,Raramente,7,Algumas vezes,Reincidência,"Resolver de vez",4
24/03/2026 10:15,Professor,1-3 anos,Semanalmente,Pessoalmente,Mensalmente,1-3 dias,Nunca,4,Algumas vezes,Demora,"Comunicação mais organizada",3
```
