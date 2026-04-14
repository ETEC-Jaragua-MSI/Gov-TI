# Guia Prático: GitHub Projects V2

**Disciplina:** Governança de TI — ETEC Jaraguá  
**Público:** Professora e alunos (sem experiência prévia necessária)  
**Objetivo:** Gerenciar o trabalho das equipes usando o quadro de tarefas do GitHub

---

## O que é o GitHub Projects V2?

O GitHub Projects V2 é uma ferramenta de organização de tarefas que fica dentro do próprio GitHub. Pense nele como um **quadro de post-its digital**: cada tarefa vira um cartão, e a gente move esses cartões entre colunas conforme o trabalho avança.

Ele está ligado diretamente às **Issues** (chamadas de "tarefas" ou "problemas" no GitHub). Isso significa que qualquer coisa que o grupo registrar como Issue aparece automaticamente no quadro.

**Por que usar?**
- A professora consegue ver o progresso de todos os grupos em um só lugar
- Fica claro quem está fazendo o quê
- Nada se perde: tudo fica registrado com data e responsável

---

## Parte 1: Criando um Project novo

> Faça isso **uma vez por repositório** (ou uma vez por turma). Quem criar o project normalmente é a professora ou o líder de cada equipe.

### Passo a passo

1. Acesse o repositório da disciplina no GitHub (ex.: `github.com/etec-jaragua/gov-it-turma-X`)

2. Clique na aba **"Projects"** no menu superior do repositório

3. Clique no botão verde **"New project"** (no canto direito)

4. Na janela que aparecer, escolha o tipo de visualização:
   - Selecione **"Board"** (quadro estilo Kanban — com colunas)
   - Clique em **"Create project"**

5. Uma caixa de texto vai aparecer pedindo o nome. Digite algo como:
   ```
   Governança de TI — Turma A
   ```
   Confirme pressionando **Enter**

6. O quadro será criado com três colunas padrão: `Todo`, `In Progress`, `Done`

> No próximo passo vamos renomear e adicionar as colunas certas para a disciplina.

---

## Parte 2: Configurando as colunas do quadro

As colunas representam os **estágios de uma tarefa**. Vamos usar cinco colunas:

| Coluna | Significado |
|--------|-------------|
| Backlog | Tarefas identificadas mas ainda não priorizadas |
| A Fazer | Tarefas que serão feitas em breve |
| Em Andamento | Alguém está trabalhando nisso agora |
| Em Revisão | Pronto, aguardando revisão da professora ou do grupo |
| Concluído | Tarefa entregue e aprovada |

### Como renomear as colunas existentes

1. No quadro, localize a coluna `Todo`
2. Clique nos **três pontos (...)** ao lado do nome da coluna
3. Escolha **"Rename"** e digite `A Fazer`
4. Pressione **Enter**
5. Repita para `In Progress` → **`Em Andamento`**
6. Repita para `Done` → **`Concluído`**

### Como adicionar as colunas que faltam

1. Role o quadro até o final (à direita) e clique em **"+ Add column"**
2. Digite `Backlog` e pressione **Enter**
3. Clique novamente em **"+ Add column"**
4. Digite `Em Revisão` e pressione **Enter**

### Como reordenar as colunas

1. Clique e **segure** o nome de uma coluna
2. **Arraste** para a posição correta
3. Solte quando estiver na ordem certa

A ordem correta é:  
**Backlog → A Fazer → Em Andamento → Em Revisão → Concluído**

---

## Parte 3: Adicionando Issues ao quadro

As Issues são as tarefas do projeto. Para que apareçam no quadro, é preciso adicioná-las.

### Opção A: Adicionar uma Issue já existente

1. No quadro, clique em **"+ Add item"** na parte inferior de qualquer coluna (geralmente `Backlog`)
2. No campo de busca que aparecer, digite `#` seguido de parte do título da Issue
   - Exemplo: `#` vai listar todas as Issues do repositório
3. Clique na Issue que você quer adicionar
4. Ela aparecerá como um cartão na coluna escolhida

### Opção B: Criar uma nova tarefa direto no quadro

1. Clique em **"+ Add item"** na parte inferior da coluna `Backlog`
2. Digite o título da tarefa (ex.: `Redigir política de backup`)
3. Pressione **Enter**
4. Um cartão simples será criado — para transformá-lo em uma Issue oficial:
   - Clique no cartão para abri-lo
   - Clique em **"Convert to issue"**
   - Selecione o repositório correto

> **Dica:** Criar como Issue é importante porque permite atribuir responsáveis, adicionar descrições e usar labels de projeto.

---

## Parte 4: Movendo cartões entre colunas

Mover um cartão significa atualizar o status de uma tarefa.

### Como mover com o mouse

1. Clique e **segure** o cartão que você quer mover
2. **Arraste** para a coluna de destino
3. Solte o cartão na nova coluna

### Como mover pelo menu do cartão

1. Clique no cartão para abrir os detalhes
2. No painel lateral direito, localize o campo **"Status"**
3. Clique no status atual (ex.: `A Fazer`)
4. Escolha o novo status na lista (ex.: `Em Andamento`)

> **Regra geral da disciplina:**
> - Quando começar a trabalhar em algo → mova para **Em Andamento**
> - Quando terminar e quiser que a professora revise → mova para **Em Revisão**
> - A professora move para **Concluído** depois de revisar

---

## Parte 5: Filtrando por projeto ou equipe

Quando há muitas tarefas no quadro, os filtros ajudam a ver só o que interessa.

### Filtrar por label (ex.: por equipe ou projeto)

1. No topo do quadro, clique em **"Filter"** (ícone de funil)
2. No campo de busca, digite:
   ```
   label:equipe-1
   ```
   Substitua `equipe-1` pelo label da sua equipe
3. O quadro vai mostrar apenas os cartões com aquela label

### Filtrar por responsável (assignee)

1. Clique em **"Filter"**
2. Digite:
   ```
   assignee:nome-do-usuario
   ```
   Substitua `nome-do-usuario` pelo nome GitHub do aluno

### Filtrar por coluna (status)

1. Clique em **"Filter"**
2. Digite:
   ```
   status:"Em Andamento"
   ```

### Limpar filtros

Clique no **X** ao lado do filtro ativo, ou apague o texto do campo de filtro.

---

## Parte 6: Campos customizados (Severidade, Projeto, Área)

Os campos customizados permitem adicionar informações extras a cada cartão — como qual projeto pertence, qual área da TI envolve, e qual a prioridade.

### Como criar um campo customizado

1. No canto superior direito do quadro, clique em **"..."** (mais opções)
2. Selecione **"Settings"** (Configurações do Project)
3. Na seção **"Custom fields"**, clique em **"+ Add field"**

### Campo: Severidade (prioridade da tarefa)

1. Clique em **"+ Add field"**
2. Nome do campo: `Severidade`
3. Tipo: selecione **"Single select"** (seleção única)
4. Adicione as opções clicando em **"+ Add option"**:
   - `Alta`
   - `Média`
   - `Baixa`
5. Clique em **"Save"**

### Campo: Projeto (qual projeto da disciplina)

1. Clique em **"+ Add field"**
2. Nome: `Projeto`
3. Tipo: **"Single select"**
4. Adicione as opções (ex.: `Projeto-1`, `Projeto-2`, `Projeto-3`, etc.)
5. Clique em **"Save"**

### Campo: Área (área de TI envolvida)

1. Clique em **"+ Add field"**
2. Nome: `Área`
3. Tipo: **"Single select"**
4. Adicione opções como: `Segurança`, `Infraestrutura`, `Dados`, `Sistemas`, `Processos`
5. Clique em **"Save"**

### Como preencher os campos em um cartão

1. Clique no cartão para abrir os detalhes
2. No painel lateral direito, você verá os novos campos criados
3. Clique no campo e selecione o valor adequado

---

## Parte 7: Como a professora acompanha o progresso de todas as equipes

### Visão geral: usando o filtro por equipe

A professora pode alternar rapidamente entre equipes usando filtros:

1. No quadro, clique em **"Filter"**
2. Digite `label:equipe-1` para ver só a equipe 1
3. Observe a distribuição dos cartões entre colunas — quantos estão em `A Fazer`, `Em Andamento`, etc.
4. Troque para `label:equipe-2` e repita

### Criando uma view por equipe (recomendado)

Para não precisar filtrar toda vez, crie uma view salva para cada equipe:

1. No topo do quadro, clique em **"+ New view"** (ao lado das abas de visualização)
2. Escolha **"Board"** (quadro)
3. Aplique o filtro: `label:equipe-1`
4. Clique no nome da view (padrão: `View 2`) e renomeie para `Equipe 1`
5. Clique fora para salvar
6. Repita para cada equipe

Agora basta clicar na aba da equipe para ver o status dela sem precisar filtrar manualmente.

### Identificando tarefas paradas

Tarefas que ficam muitos dias na mesma coluna precisam de atenção:

1. Clique em um cartão com suspeita de estar parado
2. Veja a data de atualização (campo "Last updated") no painel de detalhes
3. Se estiver em `Em Andamento` há mais de uma semana sem movimentação, contate a equipe

### Checklist semanal para a professora

- [ ] Verificar se há cartões novos em `Backlog` sem responsável atribuído
- [ ] Checar se alguma equipe não tem nada em `Em Andamento` (pode estar parada)
- [ ] Revisar cartões em `Em Revisão` e mover para `Concluído` após aprovação
- [ ] Confirmar que os campos `Projeto` e `Área` estão preenchidos nos cartões

---

## Dicas Gerais

**Para os alunos:**
- Sempre mova o cartão quando o status mudar — o quadro só ajuda se estiver atualizado
- Se tiver dúvida em qual coluna colocar, pergunte para a equipe antes de mover
- Adicione comentários nas Issues quando precisar registrar uma decisão ou problema

**Para a professora:**
- O histórico de cada Issue fica salvo — se precisar ver o que foi feito, clique na Issue e role para baixo
- Você pode exportar o quadro como CSV: em **Settings** do Project, procure a opção de exportação

---

*Guia elaborado para a disciplina de Governança de TI — ETEC Jaraguá*
