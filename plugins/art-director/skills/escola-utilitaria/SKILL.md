---
name: escola-utilitaria
description: Escola Utilitária / Densidade de dados. Interface para quem usa o dia inteiro: muita informação por tela, fonte mono e tabular, atalhos, linhas compactas, cor só como sinal, inspirada em terminal, Bloomberg e planilha. Use quando o produto é para power users (trading, operações, logística, suporte, devops, observabilidade, ERP, back-office, analytics, ferramentas internas) ou quando pedirem algo "denso", "profissional", "estilo terminal", "Bloomberg", "planilha", "para quem usa o dia todo", "com atalhos", "data-dense".
---

# Escola Utilitária · Cada pixel trabalha

Vem do terminal Bloomberg (1982), das telas de controle de tráfego aéreo e de usinas, das planilhas (VisiCalc, Excel) e das ferramentas de desenvolvedor. Edward Tufte deu a teoria: maximizar a razão dado/tinta. Ideia central: o especialista quer ver tudo de uma vez e agir sem tirar a mão do teclado. Densidade não é bagunça, é respeito pelo tempo dele.

## Quando usar

- **Setores:** mercado financeiro e trading, operações e logística, central de suporte, devops e observabilidade, ERP e back-office, analytics, segurança (SOC), ferramentas internas, gestão de frota.
- **Público:** profissional especialista que passa 4–8 h por dia na ferramenta e já sabe o que procura.
- **Imagem que passa:** poderoso, preciso, sério, rápido, "ferramenta de quem sabe".

## Quando não usar

- Usuário eventual ou leigo: densidade assusta e esconde a ação principal.
- Landing de produto de consumo e vendas B2C: use a densidade como prova (um print), não como layout da página.
- Mobile como superfície principal: a escola pede tela grande; no celular, priorize o alerta e a ação.

## A regra em números

| Grupo | Regra |
|---|---|
| Grid | Painéis redimensionáveis e encaixados, sem margem externa grande (8–16 px). Layout de 3 zonas: navegação, lista ou tabela, detalhe. Gutter de 1 px (divisor) entre painéis. |
| Tipo | Sans compacta para interface: Inter (com `cv11`, `ss01`), IBM Plex Sans, Geist (livres). Mono para dados e código: JetBrains Mono, IBM Plex Mono, Geist Mono, Berkeley Mono (paga). Tamanhos de 11–14 px na interface, 3 degraus no máximo (11, 13, 16). Número sempre `tabular-nums` e alinhado à direita. |
| Cor | Base neutra (escuro #0E1012 ou claro #FAFAFA). Cor só com significado: verde #2FBF71 alta/ok, vermelho #F0484A baixa/erro, âmbar #E8A33D alerta, azul #4C8DFF seleção/link. Estado = cor + sinal (▲▼, ícone, texto), nunca só cor. Um destaque de seleção por tela. |
| Forma | Raio 2–4 px. Bordas de 1 px. Sem sombra (só em popover e menu). Ícones de 16 px, traço 1,5. |
| Imagem | Nenhuma decorativa. Gráfico é a imagem: sparklines em linha de tabela, mini-barras, heatmap. Seguir Tufte: sem 3D, sem pizza com mais de 4 fatias. |
| Espaço | Linha de tabela de 28–36 px (modo compacto) ou 40 px (confortável), com opção de trocar. Padding de célula 8 px. Espaçamento em múltiplos de 4. |
| Movimento | Quase zero: hover e seleção instantâneos ou ≤ 100 ms; painel abre em ≤ 150 ms. Dado novo pisca o fundo da célula uma vez (≤ 400 ms). Nada de animação de entrada em tabela. Respeite o teto do projeto (toque ≤ 160 ms, revelar ≤ 700 ms, cena ≤ 1,2 s). |

## Por superfície

- **App web / dashboard:** paleta de comandos (`⌘K`), atalhos de uma letra mostrados nos menus e tooltips, seleção múltipla com Shift, colunas configuráveis, filtros salvos, edição na célula. Barra de status no rodapé com conexão e última atualização.
- **App mobile:** não replique a tabela. Lista de alertas por urgência, detalhe em uma tela, ação em um toque. Número grande e tabular no topo.
- **Landing page:** print real e denso da ferramenta como prova, cercado de muito respiro. Lista de atalhos ou comandos como argumento ("tudo pelo teclado").
- **Site institucional / docs:** documentação densa com índice lateral fixo, busca instantânea, bloco de código com cópia, changelog datado.

## Tokens de partida

```css
:root {
  --font-sans: "Inter", "IBM Plex Sans", system-ui, sans-serif;
  --font-mono: "JetBrains Mono", "IBM Plex Mono", ui-monospace, monospace;
  --fs-1: 0.6875rem; --fs-2: 0.8125rem; --fs-3: 1rem;
  --c-bg: #0E1012; --c-panel: #15181B; --c-line: #24282D;
  --c-text: #E6E8EA; --c-mute: #9097A0;
  --c-up: #2FBF71; --c-down: #F0484A; --c-warn: #E8A33D; --c-select: #4C8DFF;
  --row: 32px; --space: 4px; --radius: 3px;
}
td.num { font-family: var(--font-mono); font-variant-numeric: tabular-nums; text-align: right; }
```

## Referências para olhar

- Terminal Bloomberg; Edward Tufte, *The Visual Display of Quantitative Information* (1983).
- Linear, Superhuman (atalhos e velocidade), Datadog e Grafana (observabilidade), Retool (ferramentas internas).
- IBM Carbon Design System (padrões de tabela densa), Stephen Few, *Information Dashboard Design*.

## O que faz parecer genérico

- Dashboard "de template" com 4 cards de KPI gigantes e gráfico de pizza: é decoração, não utilidade.
- Densidade sem hierarquia: tudo do mesmo peso. A tela densa precisa de 1 coisa que salta (o alerta, a seleção).
- Verde e vermelho sem sinal extra: daltônico não lê.
- Animação em tabela que atualiza a cada segundo.

## Combina com / briga com

- **Combina:** `escola-suica` (grid e tipo), `escola-dark-tech` (base escura), `escola-corporativa-confiavel` (acessibilidade), `escola-esportiva` (estatística).
- **Briga:** `escola-organica`, `escola-clay-3d`, `escola-maximalista`, `escola-pop-memphis`.

## Checklist

1. Toda ação frequente tem atalho visível e existe `⌘K`?
2. Números em mono ou tabular, alinhados à direita?
3. Cor só com significado, e todo estado tem sinal além da cor?
4. Tem 1 elemento que salta por tela (alerta ou seleção)?
5. Densidade configurável (compacto/confortável)?
6. Nenhuma animação em dado que atualiza; dado mostra hora da última atualização?
