---
name: escola-bauhaus
description: Escola Bauhaus. Geometria pura (círculo, quadrado, triângulo), cores primárias chapadas, tipo geométrico, forma segue função. Use quando o produto quer parecer construtivo, educativo, criativo e com personalidade gráfica forte sem perder a ordem (educação, cultura, museus, escolas de arte, arquitetura, ferramentas criativas, marcas infantis com ar adulto) ou quando pedirem algo "geométrico", "primário", "construtivista", "Bauhaus", "formas básicas", "com cara de cartaz de arte".
---

# Escola Bauhaus · Forma segue função

Weimar e Dessau, 1919–1933 (Walter Gropius, Herbert Bayer, László Moholy-Nagy, Josef Albers, Wassily Kandinsky). Ideia central: arte e indústria juntas. Toda forma vem de geometria básica e todo elemento tem função. A cor é primária porque é a mais direta.

## Quando usar

- **Setores:** educação, cultura e museus, arquitetura, design de produto, ferramentas criativas, editoras, eventos de arte, brinquedo educativo.
- **Público:** jovem adulto e adulto curioso, criativo, estudante. Funciona com criança quando a marca quer parecer inteligente, não fofa.
- **Imagem que passa:** construtivo, ousado com ordem, intelectual, criativo, "feito com método".

## Quando não usar

- Produto que precisa de discrição ou luxo (joalheria, hotelaria). Fica barulhento.
- Ferramenta densa de dados: as formas competem com a informação.
- Se a marca já tem paleta fria e neutra: as primárias brigam com tudo.

## A regra em números

| Grupo | Regra |
|---|---|
| Grid | 12 colunas, mas com blocos de cor ocupando colunas inteiras. Composição em diagonal permitida (15° ou 45°) só em vitrine. Gutter de 24 px. |
| Tipo | Sans geométrica: Futura, Josefin Sans, Jost, Poppins, Outfit, Bauhaus 93 só em logo (livres: Jost, Outfit, Josefin Sans, Space Grotesk). Display em caixa baixa ou toda em caixa alta, peso 700–900. Corpo 400. Escala 1,5 (16, 24, 36, 54, 81). Entrelinha 1,45 no corpo, 1,0 no display. |
| Cor | Vermelho #D62828, azul #1D4E89, amarelo #F2C230, preto #111, off-white #F4F1EA. No máximo 3 primárias por tela, sempre chapadas. Sem gradiente, sem transparência. |
| Forma | Círculo, quadrado e triângulo como elementos de composição e ícone. Raio 0 ou 50% (nunca intermediário). Sem sombra. Linhas grossas (4–8 px) como divisores. |
| Imagem | Fotografia em preto e branco recortada em forma geométrica, ou composição de formas. Ilustração construída com primitivas, nunca orgânica. |
| Espaço | Blocos de cor como áreas inteiras, não como enfeite. Múltiplos de 8. Seção ≥ 96 px. |
| Movimento | Formas que deslizam ou giram em eixo (90°), 200–400 ms, ease-in-out. Nada elástico. Respeite o teto do projeto (padrão: toque ≤ 160 ms, revelar ≤ 700 ms, cena ≤ 1,2 s). |

## Por superfície

- **App web / dashboard:** fundo off-white, cada seção marcada por uma forma primária pequena (●■▲) como ícone de categoria. Gráficos em primárias chapadas. Tabela normal, sem enfeite.
- **App mobile:** abas com ícone geométrico puro e rótulo. Botão principal retangular de raio 0 em uma primária. Uma cor de marca por tela.
- **Landing page:** hero como cartaz: forma enorme (círculo de 600 px) atrás de manchete em caixa baixa, composição assimétrica. Seções alternando blocos de cor.
- **Site institucional:** navegação tipográfica, cada página com sua primária, índice com números grandes geométricos.

## Tokens de partida

```css
:root {
  --font-sans: "Jost", "Futura", "Century Gothic", sans-serif;
  --fs-1: 0.75rem; --fs-2: 1rem; --fs-3: 1.5rem; --fs-4: 2.25rem; --fs-5: 3.375rem; --fs-6: 5.063rem;
  --c-ink: #111111; --c-paper: #F4F1EA; --c-red: #D62828; --c-blue: #1D4E89; --c-yellow: #F2C230;
  --radius-0: 0; --radius-round: 9999px;
  --rule: 4px solid var(--c-ink);
  --space: 8px; --gutter: 24px;
}
```

## Referências para olhar

- Herbert Bayer, tipo Universal (1925) e cartazes da Bauhaus.
- Josef Albers, *Interaction of Color* (1963).
- Livro *Bauhaus 1919–1933* (Taschen, Magdalena Droste).
- Vitra Design Museum, identidade do centenário Bauhaus 2019 (bauhaus100.de).

## O que faz parecer genérico

- Primárias em tons pastel ou com gradiente: perde a força.
- Formas jogadas como confete, sem composição. Na Bauhaus a forma organiza a página.
- Usar Poppins em tudo sem escala dramática: vira app de delivery, não Bauhaus.

## Combina com / briga com

- **Combina:** `escola-suica` (grid), `escola-neobrutalismo` (chapado), `escola-pop-memphis` (versão divertida).
- **Briga:** `escola-luxo-silencioso`, `escola-vidro-espacial`, `escola-organica`.

## Checklist

1. Toda forma é círculo, quadrado ou triângulo, com raio 0 ou 50%?
2. No máximo 3 primárias por tela, chapadas, sem gradiente?
3. Fonte geométrica, com salto grande entre corpo e display?
4. As formas organizam a composição em vez de enfeitar?
5. Texto sobre amarelo e sobre vermelho passa 4,5:1?
6. Cada elemento tem função?
