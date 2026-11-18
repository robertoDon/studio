---
name: escola-neobrutalismo
description: Neobrutalismo (e a variante brutalismo cru da web). Bordas pretas grossas, sombra dura deslocada sem desfoque, cores chapadas saturadas, tipo pesado, estrutura exposta. Use quando o produto quer parecer ousado, honesto, jovem, indie e memorável (ferramentas criativas, startups early-stage, produtos para devs e makers, newsletters, Gen Z, portfólios, eventos) ou quando pedirem algo "brutalista", "neo-brutalism", "ousado", "com borda preta", "estilo Gumroad", "cru", "anti-design", "diferente de tudo".
---

# Neobrutalismo · A estrutura à mostra

O brutalismo web nasceu como reação ao design polido (brutalistwebsites.com, Pascal Deville, 2014): HTML cru, fonte do sistema, nada escondido. O neobrutalismo (por volta de 2020, Gumroad, Figma community) domesticou isso: mantém a borda preta e a sombra dura, adiciona cor chapada e usabilidade. Ideia central: não fingir profundidade nem luxo. O que é, aparece.

## Quando usar

- **Setores:** ferramentas criativas, creator economy, newsletters, produtos indie e dev tools early-stage, educação descolada, eventos, portfólios.
- **Público:** 18–35, digital nativo, criativo, que se cansa de SaaS genérico.
- **Imagem que passa:** ousado, honesto, divertido, independente, "feito por gente".

## Quando não usar

- Bancos, saúde, jurídico, luxo: lê como amador ou agressivo.
- Público 55+ ou pouco digital: a estética parece erro.
- Dashboards densos: bordas de 3 px em cada célula viram ruído.

## A regra em números

| Grupo | Regra |
|---|---|
| Grid | Simples e visível. 12 colunas, blocos encostados ou com gap fixo de 16–24 px. Pode deixar a grade aparente (linhas de 2–3 px). |
| Tipo | Grotesca pesada ou mono: Space Grotesk, Archivo Black, Inter 800, Darker Grotesque, Space Mono, IBM Plex Mono (todas livres). Display 700–900, caixa alta ou baixa, tracking −1%. Corpo 400–500. Escala 1,333. Variante crua: Times/Arial/monospace do sistema. |
| Cor | Fundo creme #FFF4E0 ou branco, preto #000 em borda e texto. 2–3 cores chapadas saturadas: amarelo #FFD23F, rosa #FF6B9D, verde #4ADE80, azul #5B8CFF, laranja #FF7A00. Sem gradiente. Variante crua: azul de link #0000EE e cinza do sistema. |
| Forma | Borda 2–4 px preta em tudo que é clicável ou card. Sombra dura: 4px 4px 0 #000 (6–8 px em destaque), zero blur. Raio 0, ou 8–12 px se quiser versão amigável — nunca misture. |
| Imagem | Foto recortada com borda preta, sticker, ilustração de traço grosso, screenshot com moldura. Emoji cabe aqui. |
| Espaço | Generoso dentro dos blocos (24–32 px), blocos densos entre si. Múltiplos de 8. |
| Movimento | Botão "afunda": no hover sombra 4→2 px e translate 2 px; no clique sombra 0 e translate 4 px. 80–120 ms, linear ou ease-out. Nada suave demais. Respeite o teto do projeto (padrão: toque ≤ 160 ms, revelar ≤ 700 ms, cena ≤ 1,2 s). |

## Por superfície

- **App web / dashboard:** cards com borda e sombra só nos elementos de topo; tabelas com borda externa grossa e divisores internos de 1 px. Uma cor por tipo de status, sempre com texto.
- **App mobile:** botões grandes com borda 3 px e sombra 4 px, abas com bloco de cor no ativo. Cuidado com alvo de toque: borda conta no tamanho.
- **Landing page:** manchete gigante, blocos coloridos alternados, CTAs que afundam, marquee de logos, preço em card com sombra 8 px.
- **Site institucional / brutalismo cru:** HTML quase sem CSS, fonte do sistema, links sublinhados azuis, lista de textos. Funciona para portfólio e manifesto, não para venda.

## Tokens de partida

```css
:root {
  --font-display: "Archivo Black", "Space Grotesk", sans-serif;
  --font-sans: "Space Grotesk", system-ui, sans-serif;
  --font-mono: "Space Mono", ui-monospace, monospace;
  --c-bg: #FFF4E0; --c-ink: #000000; --c-yellow: #FFD23F; --c-pink: #FF6B9D; --c-green: #4ADE80; --c-blue: #5B8CFF;
  --border: 3px solid var(--c-ink);
  --shadow: 4px 4px 0 var(--c-ink); --shadow-lg: 8px 8px 0 var(--c-ink);
  --radius: 0px; /* ou 10px na versão amigável */
  --dur: 100ms;
}
```

## Referências para olhar

- gumroad.com (redesign de 2021), figma.com/community em fases neobrutalistas.
- brutalistwebsites.com (curadoria de Pascal Deville).
- Poolsuite, Mailchimp (fase de ilustração), neobrutalism-components (shadcn).

## O que faz parecer genérico

- Borda grossa e sombra em absolutamente tudo, inclusive texto e ícone: vira ruído.
- Sombra com blur: deixa de ser brutal.
- Cores pastel lavadas: perde a energia. É chapado e saturado.

## Combina com / briga com

- **Combina:** `escola-pop-memphis`, `escola-bauhaus`, `escola-y2k-retrofuturo`, `escola-maximalista`.
- **Briga:** `escola-luxo-silencioso`, `escola-vidro-espacial`, `escola-minimalismo-refinado`, `escola-japonesa`.

## Checklist

1. Sombra dura sem blur e borda preta só nos elementos que importam?
2. Raio único em todo o produto (0 ou um valor só)?
3. No máximo 3 cores chapadas, todas com texto preto passando 4,5:1?
4. Botão afunda no hover e no clique em até 120 ms?
5. Tipo pesado com salto claro entre display e corpo?
6. Continua usável: foco visível, alvo ≥ 44 px, estado com texto?
