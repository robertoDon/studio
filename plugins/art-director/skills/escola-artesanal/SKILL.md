---
name: escola-artesanal
description: Escola Artesanal / Vintage. Feito à mão: rótulo, letterpress, carimbo, papel e kraft, serifas e scripts com história, ilustração em gravura, selos e datas de fundação, cores de tinta. Use quando o produto vende origem, ofício e sabor (culinária, restaurante, café, padaria, confeitaria, cervejaria, vinho, cachaça, empório, barbearia, marcenaria, sabonete artesanal, produtor local) ou quando pedirem algo "artesanal", "rústico", "vintage", "retrô", "feito à mão", "com história", "aconchegante", "de bairro", "tradicional".
---

# Escola Artesanal · Tem gente por trás

Vem dos rótulos e cartazes impressos em tipografia móvel do século XIX, das placas pintadas à mão, das embalagens de armazém e da onda craft dos anos 2010 (cervejarias artesanais, cafés de terceira onda, barbearias). Ideia central: mostrar a mão de quem faz. Imperfeição controlada, origem e data, cheiro de papel.

## Quando usar

- **Setores:** restaurante, café, padaria e confeitaria, cervejaria e destilaria, vinícola, empório e mercearia, queijaria, produtor rural, barbearia, marcenaria, cosmético artesanal, livraria independente, receitas e culinária.
- **Público:** adultos que valorizam origem, sabor e tradição; público local; foodies.
- **Imagem que passa:** autêntico, acolhedor, tradicional, honesto, "feito com tempo".

## Quando não usar

- Tecnologia, fintech, SaaS: parece fantasia (exceto se o produto for para esses ofícios, e mesmo assim só na vitrine).
- App de uso intenso com muitos dados (gestão de restaurante, PDV): use o artesanal na marca e no cardápio público; o back-office é limpo.
- Marca nova fingindo "desde 1890": falso é pior que genérico.

## A regra em números

| Grupo | Regra |
|---|---|
| Grid | Composição de rótulo: simetria central e molduras no hero e nos selos; resto em grid de 12 colunas com coluna de texto de até 640 px. Divisores ornamentais simples. |
| Tipo | Serifa com caráter no display: Playfair Display, Abril Fatface, Rye, Alfa Slab One, DM Serif Display, Bitter (livres); slab e serifas vitorianas para rótulo; script só em uma palavra (Pacifico, Yellowtail, Sacramento, livres). Corpo em serifa de leitura (Lora, Source Serif 4, Crimson Pro). Versalete com tracking +8% para rótulos. Máximo 3 famílias. |
| Cor | Cores de tinta sobre papel: creme #F4ECDD, kraft #C9A27E, tinta preta #1E1B18, vermelho de carimbo #A63A2B, verde garrafa #2F4A3A, mostarda #C8962E. Um acento para ação (vermelho ou verde). Texto ≥ 4,5:1. |
| Forma | Selos circulares, faixas (ribbons), molduras duplas, bordas de 1–2 px em tinta. Raio 0–6 px. Sem sombra; profundidade por textura e camada de papel. |
| Imagem | Foto de produto e de mãos trabalhando, luz quente e natural, mesa de madeira, ingredientes. Ilustração em gravura (linocut, bico de pena). Textura de papel e tinta falhada sutil (≤ 10%). |
| Espaço | Confortável: seções de 96–120 px, cardápio com entrelinha generosa. Ornamentos sempre com ar à volta. |
| Movimento | Discreto: carimbo que "bate" (escala 1,1 → 1) em ≤ 200 ms; fade de 300–500 ms nas fotos. Toque ≤ 160 ms. Respeite o teto do projeto (revelar ≤ 700 ms, cena ≤ 1,2 s) e `prefers-reduced-motion`. |

## Por superfície

- **App web / dashboard:** gestão de pedidos, estoque ou reservas fica limpa e neutra (creme e tinta preta, Lora só no título). Artesanal no logo e no cardápio de pré-visualização.
- **App mobile:** delivery ou receitas: cardápio com foto grande, nome em serifa, preço tabular alinhado à direita, botão de adicionar claro. Receita em passos numerados, tempo e rendimento como selos.
- **Landing page / cardápio online:** hero com foto do produto e selo "desde ano real", história curta do fundador, cardápio tipográfico, mapa e horário bem visíveis, botão de pedir ou reservar.
- **Site institucional:** a história, o processo (do grão à xícara), os produtores parceiros, a loja física com fotos reais.

## Tokens de partida

```css
:root {
  --font-display: "DM Serif Display", "Playfair Display", Georgia, serif;
  --font-slab: "Alfa Slab One", "Bitter", serif;
  --font-script: "Yellowtail", cursive;
  --font-body: "Lora", "Source Serif 4", Georgia, serif;
  --fs-1: 0.8125rem; --fs-2: 1.0625rem; --fs-3: 1.375rem; --fs-4: 1.875rem; --fs-5: 2.75rem; --fs-6: 4.5rem;
  --c-paper: #F4ECDD; --c-kraft: #C9A27E; --c-ink: #1E1B18; --c-mute: #5E554B;
  --c-stamp: #A63A2B; --c-bottle: #2F4A3A; --c-mustard: #C8962E;
  --c-action: var(--c-stamp);
  --rule: 1.5px solid var(--c-ink);
  --radius: 3px;
}
.rotulo { font: 600 var(--fs-1)/1 var(--font-body); letter-spacing: .08em; text-transform: uppercase; }
```

## Referências para olhar

- Rótulos e cartazes de tipografia móvel do século XIX; o Hatch Show Print (Nashville, desde 1879).
- Louise Fili (embalagens e restaurantes, *Elegantissima*), Jessica Hische (lettering), Dana Tanamachi (letreiros em giz).
- Marcas: Blue Bottle Coffee (versão contida), Brooklyn Brewery (Milton Glaser), Tartine Bakery.

## O que faz parecer genérico

- Script em parágrafo ou menu inteiro: ilegível.
- Kit "hipster" de banco de imagem (bigode, flecha, losango) sem relação com o negócio.
- Textura de papel tão forte que o texto some.
- "Desde 1890" numa marca de 2024.

## Combina com / briga com

- **Combina:** `escola-editorial` (serifa e ritmo), `escola-organica` (terroso, foto natural), `escola-escandinava` (madeira, calor), `escola-maximalista` (cartaz).
- **Briga:** `escola-dark-tech`, `escola-y2k-retrofuturo`, `escola-vidro-espacial`, `escola-utilitaria`.

## Checklist

1. Script só em 1–2 palavras, máximo 3 famílias?
2. Texto ≥ 4,5:1 sobre papel, textura ≤ 10%?
3. Foto real de produto e de gente fazendo?
4. Toda data e origem é verdadeira?
5. Horário, endereço, preço e botão de pedir ou reservar estão óbvios?
6. O back-office ficou limpo, e o artesanal ficou na vitrine?
