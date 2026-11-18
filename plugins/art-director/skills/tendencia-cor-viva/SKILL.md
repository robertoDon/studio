---
name: tendencia-cor-viva
description: Tendências de cor viva de 2026 (curadoria Muzli). Cor saturada ("adeus, bege"), em que uma cor manda na página e o tipo vem num tom mais escuro dela. Gradiente vivo, com aura, mesh e véus quentes atrás do tipo. Minimalismo com um grito: layout calmo com um ou dois gestos altos de cor, tipo ou padrão. Use em consumo, comida e bebida, evento, D2C, embalagem, marca desafiante, produto de IA, música, bem-estar e lançamento quando pedirem "mais cor", "vibrante", "chega de bege", "monocromático colorido", "gradiente", "brilho", "aura", "mesh gradient", "fundo vivo", "minimalista mas com personalidade", "limpo mas não sem graça", "um destaque forte".
---

# Cor viva · Uma cor com dono, um grito por dobra

Três jeitos de pôr cor forte sem cair no padrão de IA. A regra que une os três: **a cor vem da marca**, nunca do padrão do kit. Gradiente roxo ou índigo sobre branco com três cards é o padrão de IA mais conhecido (`anti-generico`).

## 1. Cor saturada: uma cor manda na página

- **O que é:** a aposta da Muzli para 2026 é a cor voltando depois de anos de escuro e neutro. A própria Muzli admite que ainda é pouco comum, então trate como **previsão**.
- **Monocromático colorido:**
  - Fundo na cor da marca, com chroma alto em OKLCH (ex.: L de 70 a 85%).
  - Tipo e ícones na mesma cor, bem mais escura (L ≤ 30%).
  - Tom sobre tom precisa de contraste ≥ 4,5:1. Teste, não confie no olho.
- **Limite:** no máximo 2 cores fortes por página, uma manda e a outra é sinal. Branco e preto entram como respiro, não como base.
- **Foto e produto** vão recortados sobre a cor chapada. No e-commerce, a cor de fundo muda por produto ou sabor. No app, a cor da marca fica numa superfície só (header, card principal ou tela de conquista) e o resto é neutro.
- **Exemplos:**
  - experiencethebestyou.com, SOM (drinksom.eu, gradiente laranja), GT Mechanik e Studio Namma. Fontes: [web-design-trends-2026](https://muz.li/blog/web-design-trends-2026/) (#9) e [roundup de abril de 2026](https://muz.li/blog/the-best-creative-websites-of-the-month-april-2026/).
  - Maggie: tipo enorme e pesado num tom mais escuro de uma cor viva. Fonte: [muzli-mcp-design-with-ai](https://muz.li/blog/muzli-mcp-design-with-ai/).

## 2. Gradiente vivo: aura com dono

- **O que é:** gradiente fluido, às vezes animado. Formas abstratas que brilham de leve e véus suaves (verde, laranja, quentes) atrás da tipografia.
- **Cores:** 2 a 3 paradas, todas vizinhas da cor da marca no círculo cromático (±40° em OKLCH).
- **Onde:** fundo de uma área só (hero, card de destaque, capa de seção), não da página inteira.
- **Acabamento:** desfoque alto (60 a 120 px) nas formas, sem bordas visíveis, e grão de 2 a 4% por cima para evitar banding.
- **Texto:** precisa de 4,5:1 no ponto **mais claro** do gradiente.
- **No app:** um card (o plano, o resumo do dia) ou o estado "pensando" de uma IA.
- **Exemplos:** fromanother.love, Jasmine Gunarto (gradiente verde suave), Sowieso Wero (fintech com gradiente quente) e UPWORK Gen AI. Fontes: [10 graphic design trends 2025](https://muz.li/blog/10-graphic-design-trends-2025/) (#4) e o roundup de abril.

## 3. Minimalismo com um grito

- **O que é:** layout limpo, com um ou dois gestos altos: um tipo enorme, um padrão marcante ou um bloco de cor. A força vem do contraste entre o silêncio e o grito. É a regra-mãe da Muzli (`tendencias`) levada à risca.
- **O silêncio:** 80 a 90% da página é calma, com neutros, uma família, grid limpo e muito espaço.
- **O grito:** ocupa **um** lugar. Pode ser um título de 120 px ou mais, um padrão de página inteira ou um bloco de cor de borda a borda.
- **Limite:** no máximo 2 gritos no site, nunca 2 na mesma dobra. O grito tem que ter relação com a marca (o produto, a cor da embalagem, o nome).
- **Por superfície:** na landing, o hero é o grito. No e-commerce, é a foto ou a cor do produto. No app, ele mora num lugar só (boas-vindas, número-manchete ou conquista).
- **Exemplo:** Tomato Lover's (via The Dieline). Fonte: 10 graphic design trends 2025 (#9).

## Quando usar / Quando não

- **Use:** consumo, comida e bebida, evento, marca desafiante, D2C, embalagem, campanha, e-commerce de poucos produtos. Gradiente também serve para produto de IA, música, bem-estar e cartão de assinatura.
- **Não use:**
  - Dashboard corporativo, dado denso, saúde séria.
  - Paleta que reprova no contraste.
  - Quando a vontade é empilhar vários gritos. Aí já é `escola-maximalista`, e precisa ser escolhida como tal.

## Dentro do teto de movimento

Teto: toque ≤ 160 ms, revelar ≤ 700 ms, cena ≤ 1,2 s contando atrasos, loop fora.

- Troca de cor de fundo entre seções é **revelar** (≤ 700 ms). Mudança de cor no hover é **toque** (≤ 160 ms).
- Gradiente que se mexe devagar sem parar é **loop**. Fica fora da regra, mas com ciclo de pelo menos 8 s e parado com `prefers-reduced-motion`. Reação ao cursor começa em até 160 ms.
- O grito pode ter a única animação de destaque da página: **revelar** em até 700 ms ou **cena** em até 1,2 s. O resto quase não se mexe.

## Armadilha

- Roxo e índigo "porque IA é roxa", ou a paleta padrão do Tailwind.
- Grito genérico, como o gradiente da moda ou 3D sem motivo. Se o grito pode estar em qualquer marca, não é grito, é ruído.

## Checklist

1. A cor dominante e as cores do gradiente são da marca, vizinhas entre si?
2. Tom sobre tom e texto sobre gradiente passam 4,5:1 no ponto mais claro?
3. No máximo 2 cores fortes por página?
4. Um grito por dobra, no máximo dois no site, e o resto calmo de verdade?
5. O grito é desta marca e de nenhuma outra?
6. Loop lento (≥ 8 s) e parado com `prefers-reduced-motion`?
