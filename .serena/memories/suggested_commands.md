# Suggested Commands — gov-ti

Não há dev server, test, lint ou build de produto. Comandos = automação de issues e publicação.

## Gaps README → Issues (Bash + gh)

```bash
bash scripts/gaps-to-issues.sh                     # dry-run (preview, não cria nada)
bash scripts/gaps-to-issues.sh --create            # cria issues + labels no repo atual
bash scripts/gaps-to-issues.sh --create --project NUM   # também adiciona ao Project V2 #NUM
```

## XLSX → Issues (Python + openpyxl + gh)

```bash
pip install openpyxl                               # dependência não declarada
python3 scripts/xlsx-to-issues.py                  # gera arquivos .md em .github/issues/ + labels-generated.json
python3 scripts/xlsx-to-issues.py --dry-run        # preview sem criar
python3 scripts/xlsx-to-issues.py --create         # cria issues via gh CLI
python3 scripts/xlsx-to-issues.py --create --project 1
```

## Setup do Project V2

```bash
gh auth login && gh auth refresh -s project        # pré-requisito
bash scripts/setup-project.sh                      # cria Project V2 + campos (Fase/Tipo/Prazo)
```

## Deploy do dashboard (GitHub Pages)

Sem comando local. Push em `main` dispara `jekyll-gh-pages.yml`. Habilitar em
Settings → Pages → source `main` `/docs`. Dashboard = `docs/index.html`.

## Notas de ambiente (Windows)

- Ambiente da usuária é **Windows**; shell padrão é **PowerShell**, mas há Bash (Git Bash)
  disponível. Os scripts `.sh` exigem Bash real (arrays associativos) — rodar via Git Bash, não
  `cmd`/PowerShell.
- Equivalências ao pensar em unix: `find`→`Get-ChildItem`/Glob, `grep`→`Select-String`/Grep,
  `python3` pode ser só `python` no PATH Windows.
- `chmod +x` (citado nos scripts) é no-op prático no Windows; invocar com `bash scripts/x.sh`.
