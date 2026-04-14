# Guia do Aluno: Como usar o GitHub no TCC de Governança de TI

**Curso:** Manutenção e Suporte em Informática — ETEC Jaraguá
**Turma:** TCC de Governança de TI
**Nivel:** Iniciante total — sem experiencia previa necessaria

---

> Este guia foi escrito para quem nunca usou o GitHub na vida. Leia com calma, siga cada passo na ordem e nao pule etapas. Se tiver duvida, chame o professor antes de tentar qualquer coisa diferente do que esta aqui.

---

## Sumario

1. [O que e o GitHub?](#1-o-que-e-o-github)
2. [Criando sua conta](#2-criando-sua-conta)
3. [Entrando no repositorio do seu projeto](#3-entrando-no-repositorio-do-seu-projeto)
4. [Entendendo o repositorio](#4-entendendo-o-repositorio)
5. [Editando o seu README](#5-editando-o-seu-readme)
6. [Removendo os trechos entre chaves duplas](#6-removendo-os-trechos-entre-chaves-duplas)
7. [Salvando as alteracoes (fazendo commit)](#7-salvando-as-alteracoes-fazendo-commit)
8. [Acompanhando as Issues do projeto](#8-acompanhando-as-issues-do-projeto)
9. [Usando o Project Board](#9-usando-o-project-board)
10. [O que NAO fazer](#10-o-que-nao-fazer)
11. [Perguntas Frequentes (FAQ)](#11-perguntas-frequentes-faq)

---

## 1. O que e o GitHub?

O GitHub e um site onde equipes guardam e organizam arquivos de projetos, especialmente documentos de tecnologia. Pense nele como uma pasta compartilhada na nuvem, mas com superpoderes:

- Toda alteracao fica registrada com data, hora e nome de quem fez
- Voce pode ver o historico completo do que ja foi mudado
- A equipe pode colaborar no mesmo documento sem perder o trabalho de ninguem
- O professor consegue acompanhar a evolucao do TCC em tempo real

**Termos que voce vai encontrar:**

| Termo | O que significa na pratica |
|---|---|
| Repositorio (repo) | A pasta principal do seu projeto no GitHub |
| README.md | O arquivo principal de apresentacao do projeto |
| Commit | O ato de salvar uma alteracao com uma descricao do que foi feito |
| Issue | Uma tarefa, duvida ou problema registrado dentro do projeto |
| Project Board | Um quadro de tarefas visual, como um Kanban |
| Branch | Uma versao paralela do projeto (voce nao precisara criar branches neste TCC) |

---

## 2. Criando sua conta

> Se voce ja tem uma conta no GitHub, pule para a [Secao 3](#3-entrando-no-repositorio-do-seu-projeto).

### Passo 1 — Acesse o site

1. Abra o navegador (Chrome, Firefox ou Edge).
2. Digite na barra de endereco: `https://github.com`
3. Pressione **Enter**.

### Passo 2 — Inicie o cadastro

1. Na pagina inicial do GitHub, clique no botao verde **"Sign up"** (canto superior direito).
2. Voce sera levado para uma tela de cadastro.

### Passo 3 — Preencha seus dados

1. No campo **"Enter your email"**, digite seu e-mail (use um que voce acessa com frequencia).
2. Clique em **"Continue"**.
3. Crie uma senha segura no campo **"Create a password"** e clique em **"Continue"**.
4. Escolha um nome de usuario no campo **"Enter a username"**.
   - Use algo simples, como `nome-sobrenome` ou `nome-etecjaragua`.
   - Sem espacos, sem acentos.
5. Clique em **"Continue"**.
6. O GitHub pode perguntar se voce quer receber e-mails. Pode digitar `n` e clicar em **"Continue"**.

### Passo 4 — Resolva o desafio de verificacao

1. O GitHub vai mostrar um pequeno quebra-cabeca ou desafio visual para confirmar que voce nao e um robo.
2. Siga as instrucoes na tela e clique em **"Submit"** ou **"Continue"**.

### Passo 5 — Confirme seu e-mail

1. Abra sua caixa de entrada de e-mail.
2. Procure um e-mail do GitHub com assunto parecido com: **"Please verify your email address"**.
3. Clique no botao dentro do e-mail para confirmar.
4. Voce sera redirecionado de volta ao GitHub, ja logado.

> Anote seu nome de usuario e senha em algum lugar seguro. Voce vai precisar deles toda vez que acessar o GitHub.

---

## 3. Entrando no repositorio do seu projeto

O professor vai fornecer o link do repositorio do seu grupo. Ele tem este formato:

```
https://github.com/nome-da-organizacao/nome-do-repositorio
```

### Passo 1 — Acesse o link

1. Cole o link fornecido pelo professor na barra de endereco do navegador.
2. Pressione **Enter**.

### Passo 2 — Faca login se necessario

1. Se o GitHub pedir login, clique em **"Sign in"** (canto superior direito).
2. Digite seu nome de usuario e senha.
3. Clique em **"Sign in"**.

### Passo 3 — Confirme que esta no lugar certo

1. Voce devera ver o nome do repositorio no topo da pagina.
2. Abaixo do nome, havera uma lista de arquivos e pastas do projeto.
3. O arquivo **README.md** deve aparecer na lista e seu conteudo deve ser exibido logo abaixo da lista de arquivos.

---

## 4. Entendendo o repositorio

Quando voce esta dentro do repositorio, a tela principal tem as seguintes areas:

**Barra superior do repositorio:**
- O nome da organizacao e do repositorio aparecem no topo (ex: `etec-jaragua / tcc-governanca-2024`).
- As abas **Code**, **Issues**, **Projects**, **Settings** ficam logo abaixo do nome.

**Area central (aba Code — padrao):**
- Uma lista de arquivos e pastas do projeto.
- Logo abaixo da lista, o conteudo do **README.md** e exibido automaticamente.

**O que cada aba faz:**

| Aba | Para que serve |
|---|---|
| Code | Ver e editar os arquivos do projeto |
| Issues | Ver e criar tarefas e discussoes |
| Projects | Ver o quadro de tarefas (Kanban) |
| Settings | Configuracoes do repositorio (nao mexa aqui) |

---

## 5. Editando o seu README

O arquivo **README.md** e o documento principal do seu TCC. Ele ja foi criado com um template que tem secoes prontas. Sua tarefa e preencher as partes que estao com indicadores de substituicao (placeholders).

### Passo 1 — Abra o arquivo README.md

1. Na pagina principal do repositorio (aba **Code**), localize o arquivo **README.md** na lista de arquivos.
2. Clique no nome **README.md**.
3. Voce sera levado para a pagina de visualizacao do arquivo.

### Passo 2 — Entre no modo de edicao

1. Na pagina do arquivo **README.md**, procure o icone de **lapis** (lapizeira) no canto superior direito da area do arquivo.
   - Ele fica ao lado de outros icones pequenos, como uma copia e um download.
2. Clique no icone de lapis.
3. Uma area de texto editavel vai aparecer com o conteudo do arquivo.

> Voce esta agora no editor de texto do GitHub. Tudo que voce escrever aqui sera salvo quando voce fizer um commit.

### Passo 3 — Navegue pelo conteudo

1. Use a barra de rolagem (scroll) para percorrer o arquivo.
2. Identifique as secoes que precisam ser preenchidas.
3. Procure por textos entre chaves duplas, como `{{nome do grupo}}` ou `{{descricao do projeto}}`. Esses sao os placeholders que voce deve substituir.

### Passo 4 — Edite com cuidado

1. Clique no trecho que voce quer editar.
2. Apague apenas o placeholder (o texto entre `{{` e `}}`).
3. Digite o texto correto do seu grupo no lugar.

**Exemplo:**

Antes da edicao:
```
# TCC de Governanca de TI — {{nome do grupo}}
```

Depois da edicao:
```
# TCC de Governanca de TI — Grupo Alpha
```

---

## 6. Removendo os trechos entre chaves duplas

Os placeholders sao marcadores que indicam onde voce deve colocar informacoes do seu grupo. Eles sempre aparecem no formato `{{texto descritivo}}`.

### Como identificar um placeholder

- Comeca com dois abre-chaves: `{{`
- Termina com dois fecha-chaves: `}}`
- O texto dentro descreve o que deve ser colocado no lugar

### Exemplos comuns de placeholders e o que colocar

| Placeholder | O que colocar |
|---|---|
| `{{nome do grupo}}` | O nome do seu grupo de TCC |
| `{{nome do aluno 1}}` | O nome completo do primeiro integrante |
| `{{tema do TCC}}` | O tema escolhido pelo grupo |
| `{{data de entrega}}` | A data prevista de entrega definida pelo professor |
| `{{empresa analisada}}` | O nome da empresa ou orgao que voce esta analisando |
| `{{descricao breve}}` | Um ou dois paragrafos resumindo o projeto |

### Passo a passo para substituir placeholders

1. No editor do README, use o atalho **Ctrl + F** (ou **Cmd + F** no Mac) para abrir a busca.
   - Alguns navegadores mostram a busca da pagina, nao do editor. Se isso acontecer, feche a busca e procure manualmente com a rolagem.
2. Procure o padrao `{{` para localizar todos os placeholders.
3. Para cada placeholder encontrado:
   a. Selecione todo o trecho, incluindo os `{{` e `}}`.
   b. Apague o trecho selecionado.
   c. Digite a informacao correta do seu grupo.
4. Repita ate nao restar nenhum `{{` no documento.

> Antes de salvar, percorra o arquivo inteiro mais uma vez com a rolagem para garantir que nao ficou nenhum placeholder esquecido.

---

## 7. Salvando as alteracoes (fazendo commit)

No GitHub, "salvar" um arquivo se chama **fazer um commit**. O commit nao e so um salvamento — ele registra o que foi alterado, quando foi alterado e quem alterou.

### Passo 1 — Finalize as edicoes

1. Revise o texto que voce editou.
2. Certifique-se de que nao ha placeholders restantes.
3. Certifique-se de que o texto esta correto e sem erros de digitacao evidentes.

### Passo 2 — Role a pagina ate o final do editor

1. Com o editor ainda aberto, role a pagina para baixo.
2. Voce vai encontrar uma secao chamada **"Commit changes"**.

### Passo 3 — Escreva uma mensagem de commit

1. O primeiro campo de texto e a **mensagem do commit** — uma frase curta que descreve o que voce fez.
2. O GitHub ja sugere algo como `"Update README.md"`. Voce pode usar isso ou escrever algo mais descritivo.
3. Exemplos de boas mensagens de commit:
   - `Preenchi os dados do grupo e o tema do TCC`
   - `Substitui os placeholders da introducao`
   - `Adicionei a descricao da empresa analisada`
4. O segundo campo (maior, opcional) e para uma descricao mais longa. Pode deixar em branco.

### Passo 4 — Selecione onde salvar

1. Logo abaixo dos campos de mensagem, voce vera duas opcoes:
   - **"Commit directly to the `main` branch"** — salva diretamente no projeto principal.
   - **"Create a new branch..."** — cria uma versao paralela (nao use esta opcao).
2. Mantenha selecionada a primeira opcao: **"Commit directly to the `main` branch"**.

### Passo 5 — Confirme o commit

1. Clique no botao verde **"Commit changes"**.
2. O GitHub vai salvar suas alteracoes e retornar para a visualizacao do arquivo.
3. Voce pode confirmar que o commit foi salvo porque a mensagem que voce escreveu vai aparecer no historico do arquivo.

> Parabens! Voce acabou de fazer seu primeiro commit no GitHub.

---

## 8. Acompanhando as Issues do projeto

Issues sao tarefas, perguntas ou problemas registrados dentro do repositorio. O professor pode criar issues para indicar o que cada grupo precisa fazer. Voce tambem pode criar issues para registrar duvidas ou dividir o trabalho.

### Como acessar as Issues

1. Na pagina principal do repositorio, clique na aba **"Issues"** (segunda aba no menu superior).
2. Voce vera a lista de issues abertas (em andamento) e fechadas (concluidas).

### Entendendo a lista de issues

- **Titulo:** descreve a tarefa ou pergunta.
- **Numero:** cada issue tem um numero unico (ex: `#1`, `#2`).
- **Labels (etiquetas):** palavras coloridas que categorizam a issue (ex: `documentacao`, `urgente`).
- **Assignees:** as pessoas responsaveis por aquela issue.
- **Data:** quando a issue foi criada.

### Como ver o detalhe de uma issue

1. Clique no titulo da issue.
2. Voce vera a descricao completa da tarefa.
3. Logo abaixo, ha uma area de comentarios onde a equipe pode discutir o andamento.

### Como comentar em uma issue

1. Abra a issue desejada.
2. Role ate o final da pagina.
3. Na caixa de texto **"Leave a comment"**, escreva sua mensagem.
4. Clique no botao verde **"Comment"**.

### Como criar uma nova issue

1. Na pagina de Issues, clique no botao verde **"New issue"** (canto superior direito).
2. Preencha o **titulo** com uma frase curta que descreva a tarefa ou duvida.
3. No campo maior, escreva os detalhes.
4. Clique em **"Submit new issue"**.

### Como marcar uma issue como concluida

1. Abra a issue.
2. Clique no botao **"Close issue"** (no final da pagina, abaixo da area de comentarios).
3. A issue sera movida para a aba **"Closed"**.

> Fechar uma issue nao apaga ela. O historico fica preservado e voce pode reabrir a qualquer momento.

---

## 9. Usando o Project Board

O Project Board e um quadro visual que organiza as tarefas do projeto em colunas, geralmente: **A fazer**, **Em andamento** e **Concluido**. E como um quadro Kanban digital.

### Como acessar o Project Board

1. Na pagina principal do repositorio, clique na aba **"Projects"**.
2. Se houver um projeto criado pelo professor, clique no nome dele para abrir.

### Entendendo o quadro

O quadro e composto de colunas. Cada coluna representa um estado da tarefa:

- **To do / A fazer:** tarefas que ainda nao foram iniciadas.
- **In progress / Em andamento:** tarefas que alguem esta fazendo agora.
- **Done / Concluido:** tarefas finalizadas.

Cada cartao dentro de uma coluna representa uma tarefa (geralmente vinculada a uma issue).

### Como mover um cartao entre colunas

1. Clique e segure o cartao com o mouse.
2. Arraste-o ate a coluna correta.
3. Solte o mouse.

> Mova o cartao da tarefa para **"Em andamento"** quando voce comecar a trabalhar nela, e para **"Concluido"** quando terminar.

### Como adicionar um cartao manualmente

1. Na coluna desejada, clique no botao **"+"** (ou **"Add item"**) que aparece na parte inferior da coluna.
2. Digite o titulo da tarefa ou busque uma issue existente.
3. Pressione **Enter** para adicionar.

---

## 10. O que NAO fazer

Esta secao e tao importante quanto o restante do guia. Erros comuns podem apagar o trabalho da equipe inteira.

### Nao apague a estrutura do template

O README.md foi criado com uma estrutura especifica de secoes (titulos, listas, tabelas). Voce deve **preencher** os placeholders, nao reorganizar ou apagar secoes inteiras.

Errado: selecionar um bloco inteiro de texto e apagar porque "nao entendeu para que serve".
Certo: ler o que esta escrito, entender o contexto e preencher apenas o placeholder.

### Nao use o botao "Delete this file"

Dentro do editor de um arquivo, ha um icone de lixeira. Clicar nele apaga o arquivo permanentemente (embora seja possivel recuperar, e um processo complicado). Nao clique nele por acidente.

### Nao faca commits com mensagens vazias ou sem sentido

Mensagens como "aaa", "teste", "nao sei" dificultam o entendimento do historico do projeto e podem ser penalizadas na avaliacao.

Errado: `asdfjkl`
Certo: `Adicionei a justificativa do projeto na secao 2`

### Nao edite arquivos que nao sao seus

Se o repositorio tiver arquivos de configuracao, scripts ou outros documentos que voce nao reconhece, nao edite-os. Fale com o professor primeiro.

### Nao commite sem revisar

Antes de clicar em **"Commit changes"**, leia o que voce escreveu. Um commit salvo fica no historico para sempre — o professor vera exatamente o que foi enviado.

### Nao crie branches sem orientacao

O GitHub permite criar versoes paralelas do projeto (branches). Para este TCC, voce deve trabalhar sempre na branch `main`. Nao crie branches novas sem instrucao do professor.

---

## 11. Perguntas Frequentes (FAQ)

**Errei ao editar o README e ainda nao fiz commit. O que fazer?**

Se voce ainda nao clicou em "Commit changes", pode desfazer as alteracoes com **Ctrl + Z** no teclado. Outra opcao e clicar no botao **"Cancel changes"** que aparece ao lado do botao de commit — isso descarta tudo que voce digitou desde que abriu o editor.

---

**Fiz commit com um erro. Posso corrigir?**

Sim. Abra o arquivo novamente, edite o trecho errado e faca um novo commit com a correcao. O GitHub mantem o historico dos dois commits — o com erro e o com a correcao. Nao ha problema em ter varios commits; isso e esperado e saudavel.

---

**Nao consigo editar o arquivo — o icone de lapis nao aparece.**

Isso acontece quando voce nao tem permissao de escrita no repositorio. Fale com o professor para que ele adicione seu usuario como colaborador. Voce vai precisar informar o seu nome de usuario do GitHub.

---

**Como sei quem fez cada alteracao no README?**

Na pagina do arquivo, clique em **"History"** (ou **"Blame"**) no menu do arquivo. Voce vera todos os commits com o nome de usuario, data e hora de cada alteracao.

---

**Posso editar o README pelo celular?**

Tecnicamente sim, mas nao e recomendado. A interface do GitHub no celular e mais limitada e voce corre risco de cometer erros. Use um computador sempre que possivel.

---

**Esqueci minha senha do GitHub. O que fazer?**

1. Acesse `https://github.com`.
2. Clique em **"Sign in"**.
3. Clique em **"Forgot password?"** abaixo dos campos de login.
4. Digite seu e-mail e siga as instrucoes enviadas para a caixa de entrada.

---

**O que e o arquivo `.md` na extensao do README?**

A extensao `.md` indica que o arquivo usa a linguagem **Markdown**. Markdown e uma forma simples de formatar texto: `**negrito**`, `# Titulo`, `- lista`. O GitHub converte automaticamente o Markdown em uma pagina formatada quando voce visualiza o arquivo. Ao editar, voce ve o codigo; ao visualizar, ve o resultado formatado.

---

**Recebi um convite por e-mail para colaborar no repositorio. O que fazer?**

1. Abra o e-mail do GitHub com o convite.
2. Clique no botao **"Accept invitation"** dentro do e-mail.
3. Voce sera redirecionado para o GitHub e tera acesso ao repositorio.

---

**Posso usar o GitHub para outros projetos da escola?**

Sim, o GitHub e gratuito para uso pessoal e academico. Apos o TCC, voce pode continuar usando sua conta para guardar outros projetos, curriculo tecnico e trabalhos.

---

> Em caso de duvida nao respondida aqui, registre sua pergunta como uma Issue no repositorio do projeto ou fale diretamente com o professor. Nao tente resolver sozinho algo que pode afetar o trabalho do grupo inteiro.

---

*Guia elaborado para o TCC de Governanca de TI — ETEC Jaragua. Versao para uso interno da turma.*
