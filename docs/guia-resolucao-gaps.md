# Guia de Resolução de Gaps — TCCs de Governança de TI

> **Para:** Alunos dos grupos com issues abertas
> **Criado por:** Profª Tainá Oliveira — ETEC Jaraguá
> **Semestre:** 2026.1

Este documento orienta cada grupo a resolver as issues de gap abertas no repositório.
Cada seção traz instruções específicas para o seu projeto.

---

## Como usar este guia

1. Localize a seção do **seu grupo** abaixo
2. Para cada gap listado, siga as instruções passo a passo
3. Após corrigir, faça um commit com a mensagem indicada
4. Feche a issue correspondente no GitHub
5. Marque o item no `Checklist de Entrega` do seu README

Dúvida? Consulte sempre a pasta `exemplo/` deste repositório como modelo de referência.

---

## 🟠 Grupo: App de Libras — 13 gaps a resolver

### GAP-CRITICO: Remover placeholders dos badges

**Onde:** Primeiras 5 linhas do README.md — linha com `[![Status...`

**O que fazer:**
1. Abra o README.md no editor
2. Substitua `{{FRAMEWORK}}` pelo framework usado (ex: `ISO 27001` ou `LGPD`)
3. Substitua o badge de Status pelo status real:
   - Em andamento: `Status-Em%20andamento-yellow`
   - Concluído: `Status-Conclu%C3%ADdo-brightgreen`
4. Faça commit: `fix: corrige badges da capa do README`

---

### GAP-CRITICO: Preencher framework de governança

**Onde:** Seção `📐 Framework / Metodologia Adotada`

**O que fazer:**
1. Identifique qual framework o grupo está usando (ex: LGPD, NBR/ISO, COBIT)
2. Preencha a tabela de frameworks — substitua `{{Framework principal}}` pelo nome real
3. Na coluna "Processos/Domínios Utilizados", escreva os processos específicos aplicados
4. Preencha a tabela "Práticas / Processos Aplicados" com pelo menos 3 práticas
5. Consulte `docs/guia-frameworks.md` para orientações sobre frameworks específicos
6. Faça commit: `feat: preenche framework de governança (LGPD)`

**Exemplo de preenchimento (adapte ao seu framework):**

```markdown
| Framework | Versão | Processos/Domínios Utilizados |
|-----------|--------|-------------------------------|
| **LGPD** | **Lei 13.709/2018** | **Art. 46-51 (Segurança), Princípios de necessidade e finalidade** |
```

---

### GAP-CRITICO: Adicionar referências bibliográficas (mínimo 8 fontes ABNT)

**Onde:** Seção `📚 Referências`

**O que fazer:**
1. Pesquise 8 referências relacionadas ao tema do projeto
2. Formate em padrão ABNT (NBR 6023:2018)
3. Organize em ordem alfabética pelo sobrenome do autor
4. Inclua obrigatoriamente:
   - Ao menos 1 livro de metodologia de pesquisa (ex: GIL, Antonio Carlos. **Como Elaborar Projetos de Pesquisa**. 7. ed. São Paulo: Atlas, 2022.)
   - Ao menos 1 documentação oficial do framework utilizado
   - Ao menos 1 obra de autor brasileiro
5. Faça commit: `docs: adiciona 8 referencias bibliograficas em ABNT`

**Formato ABNT para livro:**
```
SOBRENOME, Nome. **Título em negrito**. Edição. Cidade: Editora, Ano.
```

**Formato ABNT para lei:**
```
BRASIL. **Lei nº 13.709, de 14 de agosto de 2018**. Lei Geral de Proteção de Dados Pessoais (LGPD). Brasília: Presidência da República, 2018. Disponível em: https://www.planalto.gov.br/ccivil_03/_ato2015-2018/2018/lei/l13709.htm. Acesso em: DD mês AAAA.
```

---

### GAP-ALTA: Corrigir formatação da tabela Sobre o Projeto

**Onde:** Seção `🎯 Sobre o Projeto`

**O que fazer:**
1. Verifique que a tabela tem 2 colunas (Campo | Detalhe)
2. Substitua todos os `{{placeholders}}` pelos dados reais da equipe
3. Campo "Semestre" deve seguir o formato: `2026.1`
4. Campo "Orientador(a)": `Profª Tainá Oliveira`
5. Campo "Tipo de Trabalho": `TCC – Trabalho de Conclusão de Curso`
6. Faça commit: `docs: preenche tabela sobre o projeto`

---

### GAP-ALTA: Preencher amostra/participantes da metodologia

**Onde:** Seção `📐 Framework / Metodologia Adotada` → Metodologia de Pesquisa

**O que fazer:**
1. Detalhe o campo "Coleta de dados" com métodos reais usados
2. Informe quantas pessoas foram entrevistadas/questionadas
3. Informe as ferramentas utilizadas (ex: Google Forms, Draw.io)
4. Faça commit: `docs: descreve metodologia e participantes da pesquisa`

---

### GAP-ALTA: Preencher glossário com termos específicos do projeto

**Onde:** Seção `📖 Glossário de Termos Técnicos`

**O que fazer:**
1. Remova os `{{placeholders}}` genéricos
2. Adicione termos técnicos reais do projeto (mínimo 8 termos)
3. Para projeto de App de Libras, inclua termos como: Libras, FENEIS, Tradutor de Libras, etc.
4. Formate como tabela: `| **Termo** | Definição no contexto do projeto |`
5. Faça commit: `docs: preenche glossario com termos do projeto`

---

### GAP-ALTA: Preencher seção Equipe

**Onde:** Seção `👥 Equipe`

**O que fazer:**
1. Preencha a tabela com nome completo, RA, função e e-mail de cada integrante
2. Adicione a linha da docente orientadora
3. O e-mail padrão segue o formato: `nome.sobrenome@etec.sp.gov.br`
4. Faça commit: `docs: preenche secao equipe com dados dos integrantes`

---

### GAP-ALTA: Preencher entregáveis com localização real

**Onde:** Seção `📦 Entregáveis`

**O que fazer:**
1. Para cada entregável, atualize a coluna "Localização" com o caminho real do arquivo
2. Atualize a coluna "Status": use `✅ Concluído`, `🔄 Em andamento` ou `⬜ Pendente`
3. Confirme que os arquivos existem no repositório antes de marcar como concluído
4. Faça commit: `docs: atualiza localizacao e status dos entregaveis`

---

### GAP-ALTA: Preencher resultados e conclusões

**Onde:** Seção `📊 Resultados e Conclusões`

**O que fazer:**
1. Preencha a tabela comparativa AS-IS vs TO-BE com métricas reais ou projetadas
2. Escreva ao menos 4 conclusões numeradas
3. Adicione ao menos 2 trabalhos futuros
4. Consulte `exemplo/docs/09-relatorio-simulacao.md` para modelo de referência
5. Faça commit: `feat: preenche resultados e conclusoes com dados do projeto`

---

### GAP-MEDIA: Corrigir cronograma — datas incoerentes

**Onde:** Seção `📅 Cronograma`

**O que fazer:**
1. Verifique que as datas estão no formato `DD/MM`
2. Todas as datas devem estar dentro do semestre 2026.1 (fev a set/2026)
3. A sequência deve ser lógica: diagnóstico → proposta → validação → redação → defesa
4. Faça commit: `fix: corrige datas do cronograma para o semestre 2026.1`

---

### GAP-MEDIA: Remover comentários HTML do template

**Onde:** Qualquer parte do README com `<!-- comentário -->`

**O que fazer:**
1. Pesquise por `<!--` no arquivo
2. Remova os comentários que são instruções do template (já foram usadas)
3. Mantenha apenas comentários que fazem sentido para o projeto
4. Faça commit: `chore: remove comentarios HTML do template`

---

### GAP-BAIXA: Padronizar palavras-chave

**Onde:** Campo `**Palavras-chave:**` no Sobre o Projeto

**O que fazer:**
1. Substitua `{{palavra X}}` por palavras-chave reais do projeto
2. Use 5 a 8 palavras entre backticks: `` `palavra` ``
3. Todas em minúsculas, separadas por vírgula
4. Faça commit: `docs: define palavras-chave do projeto`

---

## 🟠 Grupo: S.O.S. EPIs — 13 gaps a resolver

### GAP-CRITICO: Remover placeholders dos badges

Mesmas instruções do App de Libras (ver acima). Para o badge de Framework, use:
- Se estiver usando COBIT: `Framework-COBIT%202019-orange`
- Se estiver usando ISO 27001: `Framework-ISO%2027001-orange`
- Se estiver usando LGPD: `Framework-LGPD-orange`

---

### GAP-CRITICO: Preencher tabela de frameworks

**Onde:** Seção `📐 Framework / Metodologia Adotada`

**Observação para EPIs:** Este projeto provavelmente usa frameworks relacionados a segurança ou gestão de ativos físicos. Consulte `docs/guia-frameworks.md` para verificar qual framework se aplica ao contexto de EPIs.

**O que fazer:**
1. Identifique o framework principal (ex: ABNT NBR ISO/IEC 27001, COBIT, ou outro)
2. Identifique o framework complementar se aplicável
3. Preencha as tabelas conforme o modelo em `exemplo/README.md`
4. Faça commit: `feat: define framework de governanca para o projeto EPIs`

---

### GAP-CRITICO: Adicionar referências bibliográficas

Mesmas instruções do App de Libras. Para EPIs, inclua referências sobre:
- Normas de segurança e EPIs (NR-6, etc.)
- Gestão de ativos ou inventário
- Framework de governança escolhido

---

### GAP-CRITICO: Preencher seção Equipe

Mesmas instruções do App de Libras.

---

### GAP-ALTA: Substituir nomes de arquivos genéricos nos entregáveis

**Onde:** Seção `📦 Entregáveis` — coluna "Localização"

**O que fazer:**
1. Substitua nomes genéricos (ex: `dados/05-catalogo-incidentes.xlsx`) pelos nomes reais dos arquivos do projeto (ex: `dados/05-catalogo-epis-NOMEPROJETO.xlsx`)
2. Certifique-se de que os arquivos existem no repositório
3. Faça commit: `docs: corrige nomes dos arquivos nos entregaveis`

---

### GAP-ALTA: Refazer cronograma

**Onde:** Seção `📅 Cronograma`

**O que fazer:**
1. Verifique se as 10 fases têm atividades **diferentes** entre si
2. Se houver fases com atividade idêntica repetida, diferencie as atividades
3. Confirme que as datas estão no intervalo do semestre 2026.1
4. Adicione o campo "Status" para cada fase: `✅`, `🔄` ou `⬜`
5. Faça commit: `fix: reescreve cronograma com atividades distintas por fase`

---

### GAP-ALTA: Preencher resultados e conclusões

Mesmas instruções do App de Libras.

---

### GAP-ALTA: Preencher glossário com termos de hardware

**Onde:** Seção `📖 Glossário de Termos Técnicos`

**O que fazer:**
1. Inclua termos técnicos específicos do projeto:
   - RFID: Radio-Frequency IDentification — tecnologia de identificação por radiofrequência usada no controle de EPIs
   - ESP32: microcontrolador com Wi-Fi e Bluetooth utilizado no projeto
   - EPI: Equipamento de Proteção Individual — conforme NR-6
   - NR-6: Norma Regulamentadora 6 — obrigatoriedade de uso de EPIs
2. Adicione ao menos 8 termos técnicos reais
3. Faça commit: `docs: preenche glossario com termos de hardware e seguranca`

---

### GAP-MEDIA: Corrigir estrutura do repositório — placeholders

**Onde:** Seção `📁 Estrutura do Repositório` — bloco de código

**O que fazer:**
1. Substitua `{{nome-do-projeto}}` pelo nome real do projeto
2. Atualize os comentários ao lado de cada arquivo para descrever o que realmente está ali
3. Faça commit: `docs: atualiza estrutura do repositorio com nomes reais`

---

### GAP-MEDIA: Remover comentários HTML do template

Mesmas instruções do App de Libras.

---

### GAP-MEDIA: Confirmar período de coleta

**Onde:** Seção `📅 Cronograma` — Fase 3 (Coleta de dados)

**O que fazer:**
1. Confirme se o período Aug/2025 a Dez/2025 faz sentido para o semestre atual (2026.1)
2. Se não fizer sentido, corrija para o período real de coleta do semestre 2026.1
3. Faça commit: `fix: corrige periodo de coleta de dados no cronograma`

---

### GAP-BAIXA: Preencher ano e instituição na licença

**Onde:** Seção `📄 Licença` — última seção do README

**O que fazer:**
1. Substitua `{{AAAA}}` pelo ano atual: `2026`
2. Substitua `{{Nome da Instituição}}` por: `ETEC Jaraguá — Centro Paula Souza`
3. Faça commit: `docs: preenche dados da licenca`

---

## 🔴 Grupo: Automação Residencial — 12 gaps críticos (template intocado)

> ⚠️ **Atenção:** O README deste projeto está com o template completamente intocado. Nenhuma seção foi preenchida ainda. Siga as instruções abaixo na **ordem indicada** — não pule etapas.

### Ordem de preenchimento recomendada

Siga esta sequência para maior eficiência:

**Sessão 1 (fazer em uma única sentada):**
1. Defina o título → preencha a linha `# {{TÍTULO_DO_PROJETO}}`
2. Preencha a tabela "Sobre o Projeto" (instituição, curso, disciplina, semestre, orientadora)
3. Escreva o resumo em 5-8 linhas

**Sessão 2:**
4. Defina o problema com dados concretos (quantifique!)
5. Liste os objetivos específicos (5 objetivos)

**Sessão 3:**
6. Defina o framework de governança — consulte `docs/guia-frameworks.md`
7. Preencha escopo (o que está dentro e fora)
8. Adicione premissas e restrições

**Sessão 4:**
9. Liste os entregáveis com arquivos reais
10. Defina cronograma com datas do semestre 2026.1

**Sessão 5 (deixar para o final):**
11. Adicione 8 referências em ABNT
12. Preencha equipe, glossário e checklist

---

### GAP-CRITICO: Definir título

**O que fazer:**
1. Na primeira linha, substitua `# {{TÍTULO_DO_PROJETO}}` por um título descritivo
2. O título deve seguir o padrão: `# 📋 [Proposta/Implantação/Análise] de [Solução] [Framework] na/no [Organização]`
3. **Exemplo:** `# 📋 Implantação de Sistema de Automação Residencial com Governança de TI na [Nome da Organização]`
4. Atualize também o resumo de uma frase logo abaixo
5. Faça commit: `feat: define titulo do projeto de automacao residencial`

---

### GAP-CRITICO: Escrever resumo

**O que fazer:**
1. Escreva um parágrafo de 5-8 linhas na seção "Sobre o Projeto" contendo:
   - Contexto da organização/problema
   - O que o projeto propõe
   - Como foi/será validado
   - Principal resultado esperado (com número!)
2. Consulte o modelo em `exemplo/README.md` como referência
3. Faça commit: `feat: escreve resumo do projeto`

---

### GAP-CRITICO: Definir problema com dados concretos

**O que fazer:**
1. Na seção "Problema", descreva em 2-4 frases: qual processo está com falhas, como está sendo feito hoje, e o principal sintoma medido
2. Em "Justificativa", adicione pelo menos 4 métricas numéricas do cenário atual
3. **Dica:** Se não tem dados ainda, faça uma estimativa com base na observação e sinalize como "estimativa"
4. Faça commit: `feat: define problema com dados do cenario atual`

---

### GAP-CRITICO: Definir objetivo geral com meta mensurável

**O que fazer:**
1. O objetivo geral deve ter: verbo no infinitivo + o que + para quem + meta numérica
2. **Exemplo de estrutura:** "Propor e validar [solução] baseado(a) em [framework] para [organização], visando [melhorar X] em pelo menos [Y%]."
3. Liste 5 objetivos específicos usando verbos de ação diferentes: Diagnosticar, Mapear, Projetar, Elaborar, Validar
4. Faça commit: `feat: define objetivos geral e especificos`

---

### GAP-CRITICO: Definir framework de governança

**O que fazer:**
1. Consulte `docs/guia-frameworks.md` para escolher o framework mais adequado
2. Preencha a tabela de frameworks com: nome, versão e processos aplicados
3. Preencha a tabela de práticas (3 práticas mínimo)
4. Preencha a metodologia de pesquisa (tipo, abordagem, coleta, ferramentas)
5. Faça commit: `feat: define framework e metodologia do projeto`

---

### GAP-CRITICO: Definir escopo

**O que fazer:**
1. Liste 4-6 itens "Dentro do Escopo" — o que o projeto vai fazer
2. Liste 3-4 itens "Fora do Escopo" — o que NÃO será abordado (e explique por quê)
3. Adicione 2 premissas (condições que precisam ser verdadeiras para o projeto funcionar)
4. Adicione 2 restrições (limitações reais: orçamento, tempo, acesso)
5. Faça commit: `feat: define escopo premissas e restricoes`

---

### GAP-CRITICO: Listar entregáveis

**O que fazer:**
1. Adapte a tabela de entregáveis para os 12 artefatos do projeto
2. Para cada entregável: defina o nome, formato (MD, XLSX, PDF), localização no repositório e status
3. Os caminhos devem existir ou serão criados em breve
4. Faça commit: `feat: lista os 12 entregaveis do projeto`

---

### GAP-CRITICO: Criar cronograma com datas reais

**O que fazer:**
1. Preencha as 10 fases com datas reais do semestre 2026.1 (fev a set/2026)
2. Use o formato `DD/MM` nas colunas Início e Fim
3. Marque com `✅` as fases já concluídas e `🔄` as em andamento
4. Faça commit: `feat: cria cronograma com datas do semestre 2026.1`

---

### GAP-CRITICO: Adicionar referências bibliográficas

Mesmas instruções do App de Libras. Para Automação Residencial, inclua referências sobre:
- IoT (Internet das Coisas) e automação residencial
- Framework de governança escolhido
- Normas ABNT relacionadas (NBR, etc.)

---

### GAP-CRITICO: Preencher equipe, glossário e checklist

**Equipe:** Substitua todos os `{{placeholders}}` com dados reais de cada integrante.

**Glossário:** Inclua termos técnicos do projeto (mínimo 8), como: IoT, protocolo MQTT, sensor, atuador, automação, etc.

**Checklist:** Marque `[x]` nos itens já concluídos e `[ ]` nos pendentes.

Faça commit: `docs: preenche equipe glossario e checklist`

---

## 🔴 Grupo: Automação de Tratamento de Dados — 12 gaps críticos (template intocado)

> ⚠️ **Atenção:** Mesmo caso do grupo de Automação Residencial — template completamente intocado.

Siga as mesmas instruções do grupo anterior (Automação Residencial), adaptando para o contexto de **Tratamento de Dados**:

- **Título:** ex: `# 📋 Automação de Tratamento de Dados com Governança de TI na [Nome da Organização]`
- **Framework sugerido:** COBIT 2019 (APO14 — Gestão de Dados), LGPD, ou ISO/IEC 27001
- **Termos do glossário:** ETL, pipeline de dados, dado bruto, dado tratado, Data Quality, LGPD, dado pessoal, dado sensível
- **Referências adicionais:** Incluir a LGPD (Lei 13.709/2018) e guias de boas práticas de dados

Consulte `docs/guia-frameworks.md` para orientações sobre COBIT e LGPD.

---

## 🟡 Grupo: Sigatccompact — 5 gaps a resolver

### GAP-ALTA: Preencher itens pendentes do checklist

**Onde:** Seção `📝 Checklist de Entrega`

**O que fazer:**
1. Para cada `[ ]` no checklist, verifique se o artefato existe no repositório
2. Se o artefato existe, mude `[ ]` para `[x]`
3. Se não existe, crie o artefato e depois marque
4. Itens pendentes identificados: diagramas AS-IS/TO-BE, Matriz RACI, dados coletados
5. Faça commit: `docs: atualiza checklist com status real dos entregaveis`

---

### GAP-MEDIA: Informar orientador(a) — campo "A definir"

**Onde:** Tabela "Sobre o Projeto" — linha Orientador(a)

**O que fazer:**
1. Substitua "A definir" pelo nome da orientadora: `Profª Tainá Oliveira`
2. Faça commit: `docs: informa orientadora no sobre o projeto`

---

### GAP-MEDIA: Formatar referências em padrão ABNT completo

**Onde:** Seção `📚 Referências`

**O que fazer:**
1. Verifique se todas as referências seguem o formato ABNT (NBR 6023:2018)
2. Formato para livro: `SOBRENOME, Nome. **Título**. Edição. Cidade: Editora, Ano.`
3. Ordem alfabética pelo sobrenome do primeiro autor
4. Negrito no título da obra
5. Mínimo 8 referências
6. Faça commit: `docs: formata referencias em padrao ABNT NBR 6023`

---

### GAP-BAIXA: Adicionar diagramas AS-IS e TO-BE

**Onde:** Pasta `diagramas/` do repositório

**O que fazer:**
1. Crie o arquivo `diagramas/03-processo-as-is.md` usando o template em `template/diagramas/03-processo-as-is.md`
2. Crie o arquivo `diagramas/04-processo-to-be.md` usando o template em `template/diagramas/04-processo-to-be.md`
3. Consulte `exemplo/diagramas/` para ver como ficam os diagramas preenchidos
4. O diagrama Mermaid é suficiente — não é obrigatório ter o arquivo Draw.io
5. Faça commit: `feat: adiciona diagramas BPMN AS-IS e TO-BE em Mermaid`

---

### GAP-BAIXA: Verificar arquivos referenciados

**Onde:** Seção `📦 Entregáveis` e `📁 Estrutura do Repositório`

**O que fazer:**
1. Para cada arquivo listado como "Concluído", verifique se ele realmente existe no repositório
2. Se algum arquivo está marcado como concluído mas não existe, mude o status para "Pendente"
3. Faça commit: `fix: corrige status dos entregaveis conforme arquivos reais`

---

## Mensagens de commit recomendadas por tipo

| Tipo de mudança | Prefixo do commit |
|----------------|------------------|
| Novo conteúdo preenchido | `feat: ...` |
| Correção de dados errados | `fix: ...` |
| Documentação apenas | `docs: ...` |
| Limpeza (remover placeholders) | `chore: ...` |

---

## Como fechar uma issue após resolver o gap

1. Acesse a aba **Issues** do repositório
2. Encontre a issue com `[GAP-...]` no título correspondente ao gap resolvido
3. Abra a issue
4. Role até o final e clique em **"Close issue with comment"**
5. Escreva: `Resolvido no commit [SHA ou link]. [Breve descrição do que foi feito].`
6. Clique em **"Close and comment"**

> A issue fechada vai atualizar automaticamente o dashboard de progresso na próxima execução do workflow.

---

*Guia elaborado para os TCCs de Governança de TI — ETEC Jaraguá, semestre 2026.1.*
