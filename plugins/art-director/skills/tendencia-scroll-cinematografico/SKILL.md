---
name: tendencia-scroll-cinematografico
description: Tendência scroll cinematográfico: a página tem ritmo de filme e o scroll é a linha do tempo (palco fixo com batidas numeradas, foto grande ou CGI, tipo contido por cima). Use em história de marca, relatório anual, produto premium de consumo ou estúdio quando pedirem "storytelling", "scrollytelling", "parallax", "página tipo Apple", "narrativa". Nunca em página utilitária ou documentação.
---

# Scroll cinematográfico · O scroll é o roteiro

## O que é

A página tratada como filme: um palco fixo (pinned) por onde passam batidas numeradas (01, 02, 03, 04), foto grande ou CGI, transições fortes e tipografia contida por cima.

## Sinais visuais

- 3 a 5 batidas por história, numeradas. Mais que isso cansa.
- Cada batida: uma imagem, um título de até 6 palavras, uma linha de apoio.
- Tipo contido: 2 tamanhos, alinhado e com contraste ≥ 4,5:1 sobre a imagem (use véu de 30–50% se preciso).
- Indicador de progresso visível (número da batida ou barra).
- A página funciona sem a animação: com `prefers-reduced-motion`, as batidas viram seções empilhadas normais.

## Quando usar / Quando não

- **Use:** história de marca, relatório, lançamento, consumo premium, estúdio.
- **Não use:** página utilitária, docs, preço, qualquer lugar onde a pessoa quer escanear. Nunca trave o scroll de quem só quer o botão: CTA visível também no topo.

## Como aplicar por superfície

- **Landing:** uma seção cinematográfica ("como funciona" em 4 batidas), o resto normal.
- **Site institucional:** página "sobre" ou de caso.
- **App:** não. O equivalente em app é o onboarding em 3 telas.

## Dentro do teto de movimento

Toque ≤ 160 ms, revelar ≤ 700 ms, cena ≤ 1,2 s contando atrasos, loop fora.
- O scroll comanda o tempo, mas cada **troca de batida** é uma revelação de ≤ 700 ms, disparada por limiar, não um tween de 3 s amarrado ao scroll.
- Sequência longa vira várias revelações curtas, cada uma completa em si.
- Vídeo de fundo em repetição é **loop**: pode, e para com `prefers-reduced-motion`.
- Nada de "scroll-jacking" que muda a velocidade do scroll da pessoa.

## Exemplos (Muzli)

- Inertia Studios (weareinertia.com), Secret Level (secretlevel.co), Aupale Vodka, site do Trevor Noah (Offbrand). Fontes: https://muz.li/blog/the-best-creative-websites-of-the-month-march-2026/ e https://muz.li/blog/weekly-designers-update-568/
- Pip: palco fixo com quatro batidas numeradas. Fonte: https://muz.li/blog/muzli-mcp-design-with-ai/

## Armadilha

"Fade-up em cada parágrafo" não é cinema, é o padrão de IA que a Muzli chama de slop (`anti-generico`). Cinema é poucas batidas, fortes.

## Checklist

1. De 3 a 5 batidas, numeradas?
2. Cada troca cabe em 700 ms e a história inteira não depende de tween longo?
3. Funciona empilhado com `prefers-reduced-motion`?
4. O scroll da pessoa não foi sequestrado?
5. O CTA existe fora da sequência?
