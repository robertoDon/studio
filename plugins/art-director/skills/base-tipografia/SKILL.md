---
name: base-tipografia
description: Tipografia de interface: escala modular, pares de fontes por personalidade, medida de 45–75 caracteres, entrelinha, números tabulares e carregamento de fonte sem pulo. Use ao escolher fonte, montar escala de texto, revisar hierarquia ou legibilidade, ou quando pedirem "que fonte usar", "par de fontes", "escala tipográfica", "texto difícil de ler".
---

# Tipografia · 95% da interface é texto

Fontes: Robert Bringhurst, *The Elements of Typographic Style*; Adam Wathan e Steve Schoger, *Refactoring UI*; Material Design 3 (type scale); Apple HIG (Typography); Butterick, *Practical Typography*. A escola escolhe a personalidade. Esta skill garante que qualquer escolha leia bem.

## Escala modular

Escolha uma razão e gere todos os tamanhos a partir do corpo (16 px). Nenhum tamanho fora da escala.

| Razão | Nome | Uso | Exemplo a partir de 16 |
|---|---|---|---|
| 1,125 | Segunda maior | App denso, dashboard | 14 · 16 · 18 · 20 · 23 |
| 1,200 | Terça menor | App geral | 13 · 16 · 19 · 23 · 28 · 33 |
| 1,250 | Terça maior | App + marketing | 13 · 16 · 20 · 25 · 31 · 39 |
| 1,333 | Quarta | Site, landing | 12 · 16 · 21 · 28 · 38 · 50 |
| 1,618 | Áurea | Editorial, hero dramático | 16 · 26 · 42 · 68 |

Regra prática: **no máximo 4 tamanhos numa tela** (pequeno, corpo, título, display). Hierarquia por **tamanho e peso**, depois por cor; nunca só por cor. Arredonde para inteiro ou múltiplo de 2.

## Entrelinha e tracking

| Tamanho | Entrelinha | Tracking |
|---|---|---|
| ≤ 14 px | 1,5–1,6 | 0 a +1% |
| Corpo 16–18 px | 1,5 (leitura), 1,4 (UI) | 0 |
| Título 24–40 px | 1,2–1,3 | −1% |
| Display ≥ 48 px | 1,0–1,1 | −2% a −3% |
| Versalete / caixa alta | 1,2 | +5% a +10% |

A entrelinha cai à medida que o tamanho sobe. Caixa alta sempre com tracking aberto.

## Medida (largura da linha)

- Leitura corrida: **45–75 caracteres por linha**, ideal 66 (Bringhurst). Em CSS: `max-width: 65ch`.
- UI e cards: até 40–50 caracteres.
- No celular, 35–45 caracteres é normal; não reduza a fonte para caber mais.

## Pares de fontes por personalidade

Uma família resolve a maioria das interfaces. Duas no máximo: uma de display, uma de texto. Contraste de estrutura (serifa × sem serifa), não de quase-igual.

| Personalidade | Display | Texto | Livres (Google Fonts) |
|---|---|---|---|
| Neutra, precisa | Inter Display / Neue Haas | Inter | Inter, Geist |
| Técnica, dev | Geist / Söhne | Geist Mono no código | Geist, JetBrains Mono, IBM Plex |
| Editorial, culta | GT Sectra / Tiempos | Söhne / Inter | Fraunces + Inter, Newsreader + Inter |
| Chique, luxo | Canela / Didot | Neue Montreal | Cormorant Garamond + Manrope, Bodoni Moda + Jost |
| Calorosa, humana | Recoleta / GT Walsheim | Inter | DM Serif Display + DM Sans, Nunito |
| Ousada, esporte | Druk / Monument Extended | Inter Tight | Anton + Inter, Bebas Neue + Barlow |
| Divertida | Clash Display / Cabinet Grotesk | Satoshi | Bricolage Grotesque + Outfit |
| Confiável, institucional | Source Serif | Source Sans | IBM Plex Serif + Plex Sans |

## Números

- Em tabela, preço, contador, horário: `font-variant-numeric: tabular-nums;` (todos os dígitos com a mesma largura).
- Moeda e porcentagem alinhadas à direita.
- Número-manchete: valor grande, unidade pequena ("R$" e centavos no tamanho do corpo, em cinza).
- Locale certo: `Intl.NumberFormat('pt-BR')` → R$ 1.234,56.

## Carregamento de fonte

- Máximo 2 famílias e 4 arquivos (pesos/estilos). Prefira fonte variável.
- `font-display: swap` e fallback com métricas ajustadas (`size-adjust`, `ascent-override`) para não pular o layout (CLS).
- `<link rel="preload">` só na fonte do texto acima da dobra. Formato WOFF2. Subset latino.
- Pilha de sistema é uma escolha legítima e instantânea: `system-ui, -apple-system, "Segoe UI", Roboto, sans-serif`.

## O que faz parecer amador

- 6 tamanhos parecidos (13, 14, 15, 16, 17, 18) na mesma tela.
- Texto centralizado em bloco de mais de 3 linhas.
- Negrito em tudo; itálico falso (sintetizado pelo navegador).
- Caixa alta em frase longa. Display fino (100–200) em tamanho pequeno.
- Aspas retas ("") e hífen no lugar de travessão (—) em texto de marketing.

## Checklist

1. Todos os tamanhos vêm de uma escala, e são no máximo 4 por tela?
2. Corpo ≥ 16 px, com entrelinha 1,4–1,6?
3. Linhas de leitura entre 45 e 75 caracteres?
4. No máximo 2 famílias, com contraste de estrutura?
5. Números tabulares onde há comparação?
6. Fonte carrega sem pular o layout?
7. Hierarquia funciona em escala de cinza?
