# Questionário de Avaliação — {{Nome do Processo de TI}}

> **Projeto:** {{TÍTULO_DO_PROJETO}}
> **Público-alvo:** {{Ex: Professores, usuários, gestores}}
> **Período de aplicação:** {{DD/MM a DD/MM/AAAA}}
> **Ferramenta:** {{Google Forms / Microsoft Forms / Presencial}}

<!--
  GUIA DE USO DESTE TEMPLATE
  ═══════════════════════════
  Escolha o bloco de perguntas adequado ao seu tipo de projeto:

  • Tipo A — Gestão de processos/incidentes (ITIL v4): use as Seções 1-3 abaixo
  • Tipo B — Segurança da informação (ISO 27001 / LGPD): consulte o bloco no final do arquivo
  • Tipo C — Hardware/IoT/Automação: consulte o bloco no final do arquivo
  • Tipo D — Gestão de dados: consulte o bloco no final do arquivo

  Adapte as perguntas substituindo {{placeholders}} pelo vocabulário do seu projeto.
  Remova os blocos que não forem usados antes de fazer commit.
-->

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

---

<!--
  ═══════════════════════════════════════════════════════════════
  BLOCOS DE PERGUNTAS POR TIPO DE PROJETO
  ═══════════════════════════════════════════════════════════════
  Copie o bloco adequado ao seu projeto para substituir as seções
  genéricas acima, ou use como referência para adaptar.
  REMOVA os blocos que não usar.
  ═══════════════════════════════════════════════════════════════
-->

---

## BLOCO B — Tipo: Segurança da Informação (ISO 27001 / LGPD)

<!--
  Use este bloco se o seu projeto foca em segurança da informação,
  proteção de dados (LGPD), controle de acesso ou conscientização de usuários.
  Substitua as Seções 2 e 3 acima por estas perguntas.
-->

**Q4-SEG. Como você protege as informações que usa no trabalho?** *(múltipla escolha)*
- [ ] Uso senhas fortes e as troco periodicamente
- [ ] Faço backup regular dos meus arquivos
- [ ] Não compartilho minha senha com ninguém
- [ ] Tenho dificuldade em lembrar de boas práticas
- [ ] Não sabia que precisava me preocupar com isso

**Q5-SEG. Com que frequência você recebe treinamento sobre segurança da informação?**
- [ ] Nunca recebi
- [ ] Recebi uma vez, na admissão
- [ ] Anualmente
- [ ] Com mais frequência

**Q6-SEG. Já passou por alguma situação de risco de segurança? (ex: e-mail suspeito, acesso indevido)**
- [ ] Sim, e reportei ao responsável
- [ ] Sim, mas não sabia o que fazer
- [ ] Sim, mas achei que não era importante
- [ ] Não que eu me lembre

**Q7-SEG. Você sabe quem procurar em caso de suspeita de incidente de segurança?**
- [ ] Sim, sei exatamente
- [ ] Tenho uma ideia, mas não tenho certeza
- [ ] Não sei
- [ ] Nunca pensei sobre isso

**Q8-SEG. Em uma escala de 0 a 10, como você avalia o nível de proteção das informações na organização?**

Escala: 0 (Muito desprotegida) ——— 10 (Totalmente protegida)

**Q9-SEG. Você já acessou informações que não eram de sua responsabilidade por erro ou por não existir controle de acesso?**
- [ ] Sim, frequentemente
- [ ] Já aconteceu algumas vezes
- [ ] Raramente
- [ ] Nunca

**Q10-SEG. Qual a principal preocupação sobre segurança da informação na sua rotina?**
- [ ] Vazamento de dados de clientes/usuários
- [ ] Perda de arquivos por falta de backup
- [ ] Acesso indevido aos sistemas
- [ ] Phishing e golpes por e-mail
- [ ] Não tenho preocupações específicas
- [ ] Outro: ___________

---

## BLOCO C — Tipo: Hardware, IoT e Automação

<!--
  Use este bloco se o projeto foca em manutenção de equipamentos,
  automação com hardware (Arduino, ESP32, RFID, etc.) ou IoT.
-->

**Q4-HW. Com que frequência você enfrenta problemas de hardware no seu trabalho?**
- [ ] Diariamente
- [ ] Semanalmente
- [ ] Mensalmente
- [ ] Raramente

**Q5-HW. Qual tipo de problema de hardware ocorre com mais frequência?**
- [ ] Computador lento ou travando
- [ ] Periférico com defeito (mouse, teclado, monitor)
- [ ] Falha de rede ou conectividade
- [ ] Equipamento {{específico do projeto — ex: leitor RFID, sensor}} com defeito
- [ ] Outro: ___________

**Q6-HW. Como os problemas de hardware são reportados atualmente?**
- [ ] Verbalmente ao responsável técnico
- [ ] Por WhatsApp/mensagem
- [ ] Por formulário/sistema formal
- [ ] Não são reportados — esperamos até ser visto
- [ ] Outro: ___________

**Q7-HW. Quanto tempo costuma levar para um equipamento com defeito ser reparado?**
- [ ] No mesmo dia
- [ ] 1 a 3 dias
- [ ] 1 semana
- [ ] Mais de 1 semana
- [ ] O equipamento fica parado indefinidamente

**Q8-HW. Em uma escala de 0 a 10, como você avalia a disponibilidade dos equipamentos?**

Escala: 0 (Sempre com problemas) ——— 10 (Sempre disponíveis)

**Q9-HW. Já precisou interromper uma atividade por equipamento {{do projeto}} estar indisponível?**
- [ ] Sim, frequentemente
- [ ] Sim, algumas vezes
- [ ] Raramente
- [ ] Nunca

**Q10-HW. O que mais impacta negativamente o uso de equipamentos no dia a dia?**
- [ ] Equipamentos quebrados sem conserto rápido
- [ ] Falta de treinamento para operar corretamente
- [ ] Equipamentos desatualizados ou obsoletos
- [ ] Falta de peças de reposição
- [ ] Outro: ___________

---

## BLOCO D — Tipo: Gestão e Qualidade de Dados

<!--
  Use este bloco se o projeto foca em gestão de dados, qualidade de dados,
  ETL, automação de tratamento ou conformidade com a LGPD.
-->

**Q4-DADOS. Como os dados da sua área são atualmente coletados e armazenados?**
- [ ] Em planilhas Excel sem controle de versão
- [ ] Em sistemas internos (ERP, banco de dados)
- [ ] Em formulários físicos que depois são digitados
- [ ] Não existem dados estruturados coletados
- [ ] Outro: ___________

**Q5-DADOS. Com que frequência você encontra dados inconsistentes, duplicados ou desatualizados?**
- [ ] Sempre
- [ ] Frequentemente
- [ ] Às vezes
- [ ] Raramente
- [ ] Nunca

**Q6-DADOS. Quanto tempo você gasta por semana corrigindo ou validando dados manualmente?**
- [ ] Menos de 1 hora
- [ ] 1 a 3 horas
- [ ] 3 a 8 horas
- [ ] Mais de 8 horas

**Q7-DADOS. Você tem confiança nas informações que usa para tomar decisões?**
- [ ] Sim, totalmente
- [ ] Sim, com ressalvas
- [ ] Às vezes tenho dúvidas sobre a precisão
- [ ] Não — prefiro verificar antes de usar qualquer dado

**Q8-DADOS. Em uma escala de 0 a 10, como você avalia a qualidade dos dados na organização?**

Escala: 0 (Muito ruim) ——— 10 (Excelente)

**Q9-DADOS. Já tomou uma decisão errada por causa de dados incorretos ou desatualizados?**
- [ ] Sim, com consequências sérias
- [ ] Sim, mas sem consequências graves
- [ ] Não que eu saiba
- [ ] Nunca

**Q10-DADOS. Qual o principal problema com os dados na sua rotina de trabalho?**
- [ ] Dados incompletos (campos vazios, informações faltando)
- [ ] Dados duplicados (mesmo registro em mais de um lugar)
- [ ] Dados desatualizados
- [ ] Formatos inconsistentes (datas, valores, nomes)
- [ ] Dificuldade de acessar os dados quando preciso
- [ ] Outro: ___________
