# Base de Conhecimento — Gestão de Incidentes InfoPro

> **Projeto:** Implantação de Gestão de Incidentes ITIL v4 na Escola Técnica InfoPro
> **Total de artigos:** 23 (5 apresentados aqui como amostra representativa)
> **Última atualização:** 25/07/2026

---

## Como Usar esta Base

1. Identifique a **categoria** do incidente (Hardware, Software, Rede, Periférico)
2. Localize o artigo pelo **ID** ou pelos **sintomas**
3. Siga o **procedimento passo-a-passo**
4. Se não resolver → **escalone** conforme indicado no final de cada artigo

---

## Índice por Categoria

| Categoria | Artigos | IDs |
|-----------|---------|-----|
| Hardware | 8 | KB-001 a KB-008 |
| Software | 8 | KB-009 a KB-016 |
| Rede | 4 | KB-017 a KB-020 |
| Periférico | 3 | KB-021 a KB-023 |

---

## Artigos

### KB-001 — Computador não liga (PC sem energia)

| Campo | Detalhe |
|-------|---------|
| **Categoria** | Hardware > Desktop |
| **Incidente(s) relacionado(s)** | INC-001 |
| **Sintomas** | LED da fonte apagado, nenhuma ventilação, sem bip |
| **Causa raiz** | Cabo de força desconectado, filtro de linha desligado, fonte queimada |
| **Nível de execução** | N1 (Monitor de Lab) |
| **Tempo estimado** | 5-15 minutos |
| **Ferramentas necessárias** | Nenhuma (ou multímetro para teste de fonte, N2) |

**Procedimento:**

1. Verificar se o **filtro de linha / estabilizador** está ligado e com LED verde
2. Verificar se o **cabo de força** está firmemente conectado na tomada e na fonte do PC
3. Testar com **outro cabo de força** (pegar do estoque ou de máquina vizinha temporariamente)
4. Se o PC ligar → problema era o cabo. Registrar e solicitar substituição
5. Se o PC **não ligar** → pressionar botão de power por 10 segundos, esperar 30s, tentar novamente
6. Verificar se a **chave 110/220V** na fonte está na posição correta (110V)

**Se não resolver:** Escalonar para **N2 (Técnico)** — possível fonte queimada. Registrar no chamado: "Testados cabo, filtro e chave de voltagem. PC permanece sem energia."

**Histórico:**
| Data | Autor | Alteração |
|------|-------|-----------|
| 14/07/2026 | Diego Alves | Criação do artigo |
| 18/07/2026 | Bruno Ferreira | Adicionado passo 6 (chave 110/220V) |

---

### KB-002 — Tela Azul (BSOD) durante uso

| Campo | Detalhe |
|-------|---------|
| **Categoria** | Hardware > Desktop |
| **Incidente(s) relacionado(s)** | INC-002 |
| **Sintomas** | Tela azul com código de erro, PC reinicia sozinho |
| **Causa raiz** | RAM com defeito, superaquecimento, driver corrompido, disco com bad blocks |
| **Nível de execução** | N1 (triagem) → N2 (resolução) |
| **Tempo estimado** | 15 min (N1) + 30-60 min (N2) |
| **Ferramentas necessárias** | Bloco de notas (anotar código), Memtest86 (N2), CrystalDiskInfo (N2) |

**Procedimento N1 (Monitor):**

1. **Anotar o código de erro** exibido na tela azul (ex: IRQL_NOT_LESS_OR_EQUAL, PAGE_FAULT_IN_NONPAGED_AREA)
2. Anotar **número da máquina** e **horário** da ocorrência
3. **Reiniciar o PC** normalmente
4. Se voltar a funcionar → registrar no chamado e monitorar recorrência
5. Se BSOD ocorrer **2+ vezes no mesmo dia** → retirar máquina de uso e escalonar N2

**Procedimento N2 (Técnico):**

1. Verificar **temperatura** (abrir gabinete, limpar poeira do cooler)
2. Executar **Memtest86** (boot via pendrive) — mínimo 1 ciclo completo
3. Se RAM com erro → substituir pente de memória
4. Executar **CrystalDiskInfo** — verificar saúde do HD/SSD
5. Se disco com bad blocks → clonar para novo disco ou reinstalar SO
6. Se hardware OK → possível driver corrompido → atualizar/reinstalar drivers

**Se não resolver:** Escalonar para **N3** se necessário substituir peça fora de estoque.

**Histórico:**
| Data | Autor | Alteração |
|------|-------|-----------|
| 14/07/2026 | Diego Alves | Criação com procedimento dividido N1/N2 |

---

### KB-009 — Windows travando / disco 100%

| Campo | Detalhe |
|-------|---------|
| **Categoria** | Software > Sistema Operacional |
| **Incidente(s) relacionado(s)** | INC-006 |
| **Sintomas** | Lentidão extrema, Gerenciador de Tarefas mostra Disco 100% |
| **Causa raiz** | Serviço SysMain (Superfetch), Windows Search indexando, atualizações em background |
| **Nível de execução** | N1 (Monitor de Lab) |
| **Tempo estimado** | 10-15 minutos |
| **Ferramentas necessárias** | Prompt de comando (Admin) |

**Procedimento:**

1. Abrir **Gerenciador de Tarefas** (Ctrl+Shift+Esc) → aba Desempenho → confirmar Disco em 100%
2. Aba Detalhes → ordenar por Disco → identificar o processo que consome
3. Se for **SysMain** ou **Windows Search**:
   - Abrir Prompt de Comando como Administrador
   - `net stop SysMain` → Enter
   - `net stop WSearch` → Enter
4. Se for **Windows Update**:
   - Deixar completar OU `net stop wuauserv` se estiver em horário de aula
5. Verificar se a lentidão cessou
6. Se melhorou → desabilitar SysMain permanentemente:
   - `sc config SysMain start=disabled`
   - `sc config WSearch start=disabled`

**Se não resolver:** Escalonar para **N2**. Possível HD com bad blocks (verificar CrystalDiskInfo).

**Histórico:**
| Data | Autor | Alteração |
|------|-------|-----------|
| 15/07/2026 | Diego Alves | Criação do artigo |
| 20/07/2026 | Bruno Ferreira | Adicionado comando para desabilitar permanentemente |

---

### KB-011 — Sem acesso à internet (lab inteiro)

| Campo | Detalhe |
|-------|---------|
| **Categoria** | Rede > Internet |
| **Incidente(s) relacionado(s)** | INC-011 |
| **Sintomas** | Nenhum PC do lab acessa internet, navegador exibe "Sem conexão" |
| **Causa raiz** | Switch desligado/travado, cabo uplink desconectado, servidor DHCP fora |
| **Nível de execução** | N1 (triagem) → N2 (resolução) |
| **Tempo estimado** | 5 min (N1) + 15-30 min (N2) |
| **Ferramentas necessárias** | Acesso ao rack de rede do lab |

**Procedimento N1 (Monitor):**

1. Verificar se **todos** os PCs do lab estão sem internet (confirmar em 3+ máquinas)
2. Verificar se o **switch do lab** está ligado (LEDs piscando?)
3. Se LEDs apagados → **desligar e religar** o switch (esperar 60 segundos)
4. Se LEDs piscando normalmente → problema não é o switch → escalonar N2
5. **PRIORIDADE P1** — registrar chamado com urgência máxima

**Procedimento N2 (Técnico):**

1. Verificar **cabo uplink** (switch do lab → switch central) — reconectar ambas as pontas
2. Testar com **outro cabo** se disponível
3. Em 1 PC: `ipconfig /release` → `ipconfig /renew` → verificar se obteve IP
4. Se não obteve IP → verificar **servidor DHCP** (reiniciar serviço se necessário)
5. `ping 8.8.8.8` → Se funciona, problema é DNS → `ipconfig /flushdns` + configurar DNS 8.8.8.8
6. Se ping externo falha → problema no link de internet → verificar roteador/modem

**Se não resolver:** Escalonar **N3** — acionar provedor de internet ou responsável pela rede da instituição.

**Histórico:**
| Data | Autor | Alteração |
|------|-------|-----------|
| 16/07/2026 | Diego Alves | Criação com fluxo N1/N2 |

---

### KB-014 — Projetor sem imagem

| Campo | Detalhe |
|-------|---------|
| **Categoria** | Periférico > Projetor |
| **Incidente(s) relacionado(s)** | INC-014 |
| **Sintomas** | Projetor ligado mas sem projeção, ou "Sem sinal" |
| **Causa raiz** | Entrada errada selecionada, cabo HDMI/VGA solto, configuração de tela |
| **Nível de execução** | N1 (Monitor de Lab) |
| **Tempo estimado** | 5-10 minutos |
| **Ferramentas necessárias** | Controle remoto do projetor, cabo HDMI/VGA reserva |

**Procedimento:**

1. Verificar se o **projetor está ligado** (LED de standby → pressionar Power no controle)
2. Pressionar **botão Source/Input** no controle remoto → selecionar a entrada correta (HDMI ou VGA)
3. No notebook/PC: pressionar **Windows + P** → selecionar "Duplicar" ou "Estender"
4. Verificar se o **cabo HDMI/VGA** está bem conectado nas duas pontas
5. Testar com **outro cabo** se disponível
6. Se usando adaptador (USB-C → HDMI) → testar sem adaptador ou com outro adaptador

**Se não resolver:** Escalonar para **N2**. Possível lâmpada queimada ou defeito no projetor → N3 (garantia/manutenção).

**Histórico:**
| Data | Autor | Alteração |
|------|-------|-----------|
| 17/07/2026 | Carla Mendes | Criação do artigo |

---

> 📝 **Nota:** Esta é uma amostra de 5 dos 23 artigos da base de conhecimento completa. Os artigos restantes (KB-003 a KB-008, KB-010, KB-012 a KB-013, KB-015 a KB-023) seguem a mesma estrutura e cobrem todos os incidentes do catálogo com frequência ≥ 2/mês.
