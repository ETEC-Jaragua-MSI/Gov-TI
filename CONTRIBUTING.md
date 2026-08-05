# 🤝 Guia de Contribuição — TCC Governança de TI

> Este guia é para **alunos** que precisam entregar seus TCCs usando este repositório.

---

## Fluxo de Trabalho

```
1. Use o template  →  2. Clone  →  3. Preencha  →  4. Abra PR  →  5. Checklist verde  →  6. Revisão
```

---

## Passo a Passo

### 1. Use este repositório como template

1. Acesse o repositório do professor no GitHub
2. Clique em **"Use this template"** → **"Create a new repository"**
3. Nome sugerido: `tcc-gov-ti-NOME-DO-PROJETO` (ex: `tcc-gov-ti-gestao-incidentes`)
4. Defina o repositório como **Privado** (até a defesa)
5. Clique em **"Create repository"**

### 2. Clone o seu repositório

```bash
git clone https://github.com/SEU-USUARIO/tcc-gov-ti-NOME-DO-PROJETO.git
cd tcc-gov-ti-NOME-DO-PROJETO
```

### 3. Copie os templates e preencha

```bash
# Copie os templates para a estrutura do seu projeto
cp -r template/docs/* docs/
cp -r template/dados/* dados/
cp -r template/diagramas/* diagramas/
cp -r template/apresentacao/* apresentacao/
```

Abra cada arquivo e substitua todos os `{{placeholders}}` pelo conteúdo do seu projeto.
Consulte a pasta `exemplo/` sempre que tiver dúvida de como preencher.

> ⚠️ **Importante:** não deixe nenhum `{{campo}}` sem preencher — o workflow `validate-template.yml`
> detectará automaticamente e abrirá uma Issue de alerta.

### 4. Commit e push

```bash
git add .
git commit -m "feat: adiciona artefatos do TCC — [Nome do Projeto]"
git push origin main
```

### 5. Abra um Pull Request

1. No GitHub, clique em **"Pull requests"** → **"New pull request"**
2. Base: `main` do repositório do professor → Compare: `main` do seu repositório
3. Preencha o **template de PR** que será carregado automaticamente
4. Verifique o resultado do workflow `checklist-entrega.yml` nos checks do PR
5. Score mínimo: **80%** — corrija itens pendentes antes de solicitar revisão

### 6. Aguarde a revisão

A professora revisará o PR, poderá abrir Issues para pontos de melhoria e aprovará quando tudo estiver correto.

---

## Estrutura de Pastas Esperada

```
seu-tcc/
├── README.md               ← Preencha com os dados do seu projeto
├── docs/
│   ├── 01-diagnostico-cenario-atual.md
│   ├── 06-base-conhecimento.md
│   ├── 09-relatorio-simulacao.md
│   ├── 10-plano-implementacao.md
│   └── 11-estrutura-monografia.md
├── dados/
│   ├── 02-questionario-aplicado.md
│   ├── 05-catalogo-incidentes-*.xlsx
│   └── 07-matriz-prioridade-sla-*.xlsx
├── diagramas/
│   ├── 03-processo-as-is.md
│   ├── 04-processo-to-be.md
│   └── 08-matriz-raci-*.xlsx
└── apresentacao/
    └── 12-roteiro-slides-defesa.md
```

---

## Dúvidas Frequentes

**O workflow falhou com "placeholders encontrados". O que fazer?**
> Abra o log do workflow (aba Actions) e veja quais arquivos têm `{{}}`. Substitua pelo conteúdo real.

**O score do checklist está abaixo de 80%. O que verificar?**
> Role até o final do README.md e marque os itens concluídos com `[x]` em vez de `[ ]`.

**Posso usar outros frameworks além do ITIL v4?**
> Sim. COBIT, ISO 20000, PMBOK, LGPD, entre outros. Consulte a professora para validar a escolha.

**Preciso do software original (ServiceNow, GLPI)?**
> Não. O escopo do TCC é a **proposta e validação do processo**, não a implantação de software.

---

## Contato

**Profª Tainá Oliveira** — taina.oliveira104@etec.sp.gov.br

> Dúvidas técnicas sobre o GitHub? Consulte `docs/guia-aluno-github.md`.
