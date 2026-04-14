# Relatório de Validação — Simulação do Processo TO-BE

> **Projeto:** Implantação de Gestão de Incidentes ITIL v4 na Escola Técnica InfoPro
> **Data:** 08/08/2026
> **Método de validação:** Simulação com dados reais de 3 meses (Mar-Mai/2026)

---

## 1. Objetivo da Validação

Verificar se o processo TO-BE proposto, baseado em ITIL v4, atinge a meta de redução de pelo menos 40% no tempo médio de resolução (MTTR) de incidentes nos laboratórios, utilizando como base os 141 incidentes registrados entre março e maio de 2026.

## 2. Metodologia

| Aspecto | Detalhe |
|---------|---------|
| **Tipo de validação** | Simulação retrospectiva — reprocessamento dos 141 incidentes reais pelo fluxo TO-BE |
| **Dados utilizados** | 141 incidentes extraídos do caderno de registros + estimativa de não-registrados |
| **Período dos dados** | 01/03/2026 a 31/05/2026 (3 meses) |
| **Ferramenta de simulação** | Planilha Google Sheets com regras de categorização, priorização e SLA aplicadas |

### Premissas Adotadas

1. **Base de conhecimento:** Dos 48 incidentes reincidentes (34%), estimamos que 33 (68%) seriam resolvidos em N1 com a base de conhecimento, pois possuem solução documentada no catálogo
2. **Tempo de registro:** Formulário digital = 3 min (vs. caderno = 5-10 min + risco de não registrar)
3. **Tempo N1:** Monitor de lab aplica solução em 15-30 min seguindo procedimento da base
4. **Tempo N2:** Técnico recebe chamado já categorizado e priorizado, economizando ~1h de triagem
5. **SLA de escalonamento:** Gatilhos automáticos evitam chamados "esquecidos" (maior contribuinte do MTTR atual)
6. **100% de registro:** Formulário digital como único canal elimina os ~60% de incidentes não registrados

## 3. Resultados Comparativos

| Métrica | AS-IS (Medido) | TO-BE (Projetado) | Variação | Meta | Atingida? |
|---------|---------------|-------------------|----------|------|-----------|
| **MTTR (tempo médio de resolução)** | 5,3 dias | 2,5 dias | **-52%** | -40% | ✅ Sim |
| **Taxa de reincidência** | 34% (48/141) | 11% (est.) | **-68%** | - | ✅ Sim |
| **Incidentes registrados** | ~40% | 100% | **+150%** | 100% | ✅ Sim |
| **Resolução em N1** | 0% (não existia) | 38% (est.) | **+38pp** | >30% | ✅ Sim |
| **Aderência ao SLA** | N/A | 78% (est.) | - | >70% | ✅ Sim |
| **Aulas impactadas/mês** | 12 | 4 (est.) | **-67%** | -50% | ✅ Sim |
| **NPS projetado** | 23 | 58 (est.) | **+152%** | >40 | ✅ Sim |

## 4. Análise dos Resultados

### 4.1 MTTR — Redução de 52%

A redução projetada de 5,3 para 2,5 dias é explicada por três fatores principais. O mais significativo é a **eliminação do tempo de "chamado esquecido"**: na análise dos dados, identificamos que 41% do MTTR atual (2,2 dias) é atribuído ao atraso entre o incidente ocorrer e o técnico tomar conhecimento. Com o formulário digital e notificação automática, esse atraso cai para minutos.

O segundo fator é a **resolução em N1**: 38% dos incidentes têm solução documentada na base de conhecimento e podem ser resolvidos pelo monitor de lab em 15-30 min, sem necessidade de esperar o técnico. Isso libera o técnico para focar nos 62% de casos que realmente exigem sua expertise.

O terceiro fator é a **eliminação de retrabalho por reincidência**: com soluções definitivas documentadas e aplicadas, os 34% de incidentes recorrentes caem para ~11%.

### 4.2 Resolução em N1 — 38% dos incidentes

A simulação classificou cada um dos 141 incidentes pela matriz de prioridade e cruzou com a base de conhecimento. Dos 141 incidentes, 54 (38%) tinham solução documentada executável por N1 (monitor de lab com treinamento básico). Isso inclui: trocar mouse/teclado (17), desligar SysMain/WSearch (9), reconectar cabos (8), reiniciar switch (6), aplicar soluções de perfil/driver (14).

### 4.3 Limitações e Ajustes

A projeção de NPS = 58 é a estimativa menos confiável, pois depende de percepção subjetiva. Os demais indicadores são mais robustos por serem calculáveis diretamente a partir dos dados e regras do processo TO-BE.

## 5. Limitações da Validação

1. **Simulação, não implementação real** — Os resultados são projeções baseadas em regras aplicadas retrospectivamente aos dados. A implementação real pode apresentar variações por fatores humanos (resistência, curva de aprendizado).
2. **Dados de apenas 3 meses** — A amostra de 141 incidentes pode não representar sazonalidade (ex: início de semestre com mais instalações).
3. **Premissa de adesão 100%** — Assumimos que todos os usuários utilizarão o formulário digital. Na prática, haverá um período de transição.
4. **Monitor de lab (N1)** — A função proposta não existe hoje. Depende de designação pela coordenação e treinamento.
5. **NPS projetado** — Estimativa subjetiva baseada na correlação entre MTTR e satisfação relatada no questionário.

## 6. Conclusão

A simulação demonstra que o processo TO-BE proposto **atinge e supera a meta principal** de redução de 40% no MTTR, com projeção de -52%. Todos os 7 indicadores analisados apresentaram melhoria projetada dentro ou acima das metas estabelecidas.

Os três principais vetores de melhoria — eliminação de atraso na comunicação, resolução em N1 via base de conhecimento, e redução de reincidência — são independentes entre si, o que aumenta a robustez da projeção. Mesmo que um dos vetores tenha desempenho abaixo do esperado, os demais sustentam a meta de -40%.

Recomenda-se a **implementação piloto em 1 laboratório** no semestre 2026.2 para validar as projeções com dados reais de operação.
