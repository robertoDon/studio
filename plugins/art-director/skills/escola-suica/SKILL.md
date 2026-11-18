---
name: escola-suica
description: Escola Suíça (Estilo Tipográfico Internacional). Grid rígido, sans grotesca, alinhamento à esquerda, hierarquia só por tamanho e peso, cor como sinal. Use quando o produto precisa parecer claro, sério, organizado e atemporal (transporte, governo, saúde, finanças, ferramentas de informação, portfólio de arquitetura, sinalização) ou quando pedirem algo "limpo", "informativo", "com grid", "sem enfeite", "Swiss", "Helvetica".
---

# Escola Suíça · A informação é o enfeite

Zurique e Basileia, anos 1950 (Josef Müller-Brockmann, Armin Hofmann, Emil Ruder). Ideia central: o design some e a informação fica. Grid matemático, tipo neutro, nada decorativo. Nunca saiu de moda porque nunca esteve na moda.

## Quando usar

- **Setores:** mobilidade e transporte, governo, saúde, bancos, seguros, ferramentas de dados, museus, arquitetura, escritórios de design, conferências.
- **Público:** adulto, profissional, que quer achar a informação rápido. Funciona para todas as idades porque prioriza leitura.
- **Imagem que passa:** confiável, preciso, inteligente, atemporal, "sabe o que está fazendo".

## Quando não usar

- Produto que precisa de calor humano ou emoção (bem-estar, infantil, culinária afetiva). Fica frio.
- Marca que vende diversão ou rebeldia (Gen Z, games). Fica careta.
- Se o conteúdo é pouco, o grid fica vazio e parece inacabado. Suíça precisa de informação para organizar.

## A regra em números

| Grupo | Regra |
|---|---|
| Grid | 12 colunas no desktop, 4 no celular. Gutter de 24 px (16 no celular). Todo elemento começa numa coluna. Margem externa ≥ 1 coluna no desktop. |
| Tipo | Uma família só, grotesca: Inter, Helvetica Now, Neue Haas, Suisse Int'l, Geist, Aktiv Grotesk (livres: Inter, Geist, Instrument Sans). Escala de 1,333 (16, 21, 28, 38, 50, 67). Pesos: 400 e 700 (no máximo 3). Alinhado à esquerda, nunca justificado, nunca centralizado em bloco. Entrelinha 1,4 no corpo, 1,05 no display. Tracking negativo (−2%) acima de 32 px. |
| Cor | Preto, branco e um cinza. Um acento puro e saturado (vermelho suíço #E30613, ou a cor da marca) só para sinal: ação, alerta, destaque único. Nada de gradiente. |
| Forma | Raio 0 a 4 px. Divisores de 1 px. Sem sombra (ou 1 px quase invisível). Ícones de traço fino e geométricos. |
| Imagem | Foto objetiva, recortada no grid, preto e branco ou cor natural. Sem ilustração decorativa. Número e dado podem ser a imagem. |
| Espaço | Espaço em branco assimétrico e intencional. Múltiplos de 8. Seção de landing ≥ 96 px. |
| Movimento | Quase nenhum. Entrada por deslocamento curto (8–16 px) + opacidade, 150–250 ms, ease-out. Respeite o teto de animação do projeto (padrão: toque ≤ 160 ms, revelar ≤ 700 ms, cena ≤ 1,2 s). |

## Por superfície

- **App web / dashboard:** tabela sem grade vertical, cabeçalho em versalete pequeno, número tabular alinhado à direita. Barra lateral em texto puro. Um acento por tela.
- **App mobile:** título grande alinhado à esquerda (estilo large title do iOS), lista com divisor de 1 px, toque de 44 px. Abas com rótulo, não só ícone.
- **Landing page:** manchete enorme (64–96 px) em 2–3 linhas, alinhada à esquerda, quebrando no grid. Número-prova em destaque ("12 min de economia"). Sem hero ilustrado.
- **Site institucional:** navegação tipográfica, índice numerado (01, 02, 03), muito branco, foto grande recortada.

## Tokens de partida

```css
:root {
  --font-sans: "Inter", "Helvetica Neue", Arial, sans-serif;
  --fs-1: 0.75rem; --fs-2: 1rem; --fs-3: 1.333rem; --fs-4: 1.777rem; --fs-5: 2.369rem; --fs-6: 4.209rem;
  --c-ink: #111111; --c-paper: #FFFFFF; --c-mute: #5C5C5C; --c-line: #E5E5E5;
  --c-signal: #E30613;
  --radius: 2px; --line: 1px solid var(--c-line);
  --space: 8px; --gutter: 24px;
}
```

## Referências para olhar

- Josef Müller-Brockmann, *Grid Systems in Graphic Design* (1981).
- Sinalização do metrô de Nova York (Unimark, Massimo Vignelli).
- Sites: Swiss Federal Railways (SBB), Experimental Jetset, Vercel (versão tech), Stripe Press (versão editorial).

## O que faz parecer genérico

- Inter em tudo, sem escala clara: vira "template SaaS", não Suíça. A Suíça é a **escala dramática** (texto de 16 ao lado de manchete de 96).
- Centralizar tudo. A Suíça é assimétrica e à esquerda.
- Acento usado como decoração. Acento é sinal.

## Combina com / briga com

- **Combina:** `escola-utilitaria` (dados densos), `escola-editorial` (títulos), `escola-minimalismo-refinado`.
- **Briga:** `escola-pop-memphis`, `escola-maximalista`, `escola-clay-3d`.

## Checklist

1. Todo elemento cai numa coluna do grid?
2. Uma família tipográfica, no máximo 3 pesos, escala com salto dramático?
3. Tudo alinhado à esquerda, nada justificado?
4. Só preto, branco, cinza e um acento, e o acento só em sinal?
5. Raio ≤ 4 px, sem sombra borrada?
6. Dá para entender a página só lendo os títulos?
