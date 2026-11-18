---
name: tendencia-3d-e-webgl
description: Tendências 3D e WebGL de 2026 (curadoria Muzli). WebGL imersivo é o site como lugar 3D para explorar, inclusive com UI real dentro do 3D (Three.js). Shaders são distorção líquida, partículas, cursor magnético, vidro refratando um h1 real e foil holográfico (Unicorn Studio, Spline, React Three Fiber). O 3D hiper-real usa material e luz realistas, com o produto como herói. Use em site de estúdio, lançamento, evento, game, portfólio, hardware ou bem de consumo quando pedirem "experiência", "3D", "Three.js", "imersivo", "Awwwards", "efeito líquido", "shader", "efeito wow no hero", "render 3D", "produto realista", "cara de keynote". Nunca na ferramenta do dia a dia.
---

# 3D e WebGL · Um gancho de GPU, um lugar

Três jeitos de usar a GPU como gancho. Escolha **um** por site e ponha em **uma** seção (normalmente o hero). Abaixo dela, página normal e rápida.

## 1. WebGL imersivo: o site é um lugar

- **O que é:** um mundo 3D em tempo real com formas metálicas ou abstratas, paisagem em wireframe, dado virando terreno, câmera de cinema e interação de jogo.
- **A variação de 2026 (Three.js Conf Paris):** UI real dentro do 3D. HTML vivo e acessível em superfícies 3D, celular cuja tela roda o app de verdade, checkout que dobra e vira recibo. Nas palavras de Antoine Ménard: "3D em tempo real não precisa parecer 3D".
- Fundo escuro (luminosidade ≤ 12%), uma ou duas luzes fortes, sombra dura. Um objeto ou cena principal por tela.
- Texto curto por cima, em até 2 tamanhos, com contraste ≥ 4,5:1 sobre a parte **mais clara** da cena.
- Botão e formulário continuam HTML de verdade, focáveis por teclado. A cena é decoração; a ação é DOM.
- HTML em Canvas ainda é origin trial do Chrome: nada de produção que precise de Safari ou Firefox.
- **Exemplos:**
  - Looper (looper.basement.studio), Hubtown (hubtown.co.in), KVS Studio (kvs.services), Ivress (brand.ivress.co.jp), Joseph Santamaria (joseph-san.com). Fontes: [abril de 2026](https://muz.li/blog/the-best-creative-websites-of-the-month-april-2026/), [março de 2026](https://muz.li/blog/the-best-creative-websites-of-the-month-march-2026/).
  - Demos de Vittorio Retrivi para a Codrops, Ponpon Mania (Patrick Heng), Messenger (Abeto), portfólio de Bruno Simon. Fonte: [Three.js Conf Paris 2026](https://muz.li/blog/threejs-conf-paris-2026/).

## 2. Shaders: um efeito, um elemento

- **O que é:** efeitos de GPU que agora saem de ferramenta (Unicorn Studio, Spline, React Three Fiber, TSL).
  - Distorção líquida em imagem e tipo.
  - Partículas que brilham e cursor magnético.
  - Refração de vidro sobre um `<h1>` vivo.
  - Cartão com foil holográfico.
- **Um** elemento com shader por página: o hero, a imagem principal ou o cartão-produto.
- A distorção **volta ao repouso**. O texto fica nítido parado, e o efeito só aparece no hover ou no scroll. Em texto, o deslocamento é de no máximo 8 a 12 px.
- Nada de shader em corpo de texto, tabela, formulário ou número.
- Efeito com no máximo 200 KB, e a GPU para fora da tela (`IntersectionObserver`).
- No e-commerce, foil holográfico em cartão ou embalagem, no hover.
- **Exemplos:** Gentle Rain, fromanother.love e os "cheap tricks" de Edan Kwan (Lusion). Fontes: [web-design-trends-2026](https://muz.li/blog/web-design-trends-2026/) (#4) e Three.js Conf.

## 3. 3D hiper-real: o produto é o herói

- **O que é:** render com material e luz de verdade, num close que dá vontade de tocar.
- Um objeto por cena, ocupando 50 a 80% da largura, sobre fundo limpo (neutro ou na cor da marca).
- Luz de estúdio: uma principal, um recorte e uma sombra de contato suave. Close no detalhe do material (textura, costura, metal) como segunda imagem.
- Tipo contido em volta: 2 tamanhos e muito espaço.
- Imagem em AVIF/WebP com 2× para retina. Só o hero carrega com prioridade.
- No e-commerce, 360° como opção, não como padrão. No app, o cartão ou o aparelho aparece estático na tela inicial.
- **Exemplos:** design system Evergreen do Cash App, Leica M9 (Jeremy Shin), Nexx Helmets (André Pires). Fonte: [10 graphic design trends 2025](https://muz.li/blog/10-graphic-design-trends-2025/) (#3).

## Quando usar / Quando não

- **Use:** estúdio criativo, lançamento, evento, game, tech premium, portfólio e configurador. O hiper-real serve para hardware, eletrônicos, câmera, capacete, bem de consumo, cartão de fintech e sistema de marca.
- **Não use em:**
  - Produto de conteúdo pesado, página que depende de SEO ou acessibilidade crítica.
  - Público com aparelho fraco.
  - Ferramenta B2B do dia a dia, artigo, dashboard ou checkout.
  - Saúde e finanças sérias.
  - Hiper-real sem verba para 3D bom: render barato fica pior que uma foto honesta. Também não serve para produto sem objeto, como SaaS puro.
- **App web e mobile:** não. No máximo um modelo 3D girável na página de produto, ou um shader na tela de boas-vindas ou de conquista.

## Dentro do teto de movimento

Teto: toque ≤ 160 ms, revelar ≤ 700 ms, cena ≤ 1,2 s contando atrasos, loop fora da regra.

- Cena 3D, ondulação de fundo ou produto girando sozinho são **loop**. Podem, desde que parem com `prefers-reduced-motion`.
- Transição de câmera entre seções é **cena**, até 1,2 s. Uma viagem de câmera longa vira cortes curtos: 2 ou 3 revelações de até 700 ms.
- Reação ao cursor é **toque**: começa em até 160 ms e assenta em até 700 ms.
- Entrada no hero, troca de ângulo do produto e distorção de entrada são **revelar** (≤ 700 ms), e o texto fica nítido no fim.
- Carregamento: o HTML aparece primeiro e a cena entra por cima. Nunca segure o texto esperando o WebGL. Vídeo de render longo é peça de vídeo, não interface.
- Sempre há um fallback estático (imagem ou vídeo) para aparelho fraco e para `prefers-reduced-motion`.

## Armadilha

- Cena bonita sem motivo, com tela de carregamento de 5 s. Se o 3D não mostra o produto nem conta a história, é só peso.
- Um shader diferente em cada seção vira demo de ferramenta, não marca.
- Celular flutuando em perspectiva no estilo de 2016 é "shot de Dribbble" (`anti-generico`). Hiper-real é material e luz, não ângulo dramático.

## Checklist

1. Um gancho 3D, numa seção só?
2. O texto e a ação aparecem antes da cena carregar? Botões são HTML focáveis?
3. Há fallback estático, `prefers-reduced-motion` e GPU parada fora da tela?
4. Texto nítido em repouso, com contraste ≥ 4,5:1 sobre a parte mais clara da cena?
5. Transição de câmera em até 1,2 s, entradas em até 700 ms?
6. O efeito tem relação com a marca ou o produto? O render aguenta close sem parecer de plástico?
