---
name: tendencia-colagem
description: Tendências anti-polidas (curadoria Muzli). A colagem e mídia mista (scrapbook) junta bordas rasgadas, papel e foto em camadas, recortes monocromáticos, traço à mão sobre o digital e textura visível. O desfoque surreal usa foco suave, cor misturada, formas indefinidas e imagem distorcida, num clima de sonho imperfeito. Use em portfólio criativo, cultura, editorial, moda, música, arte, fragrância e campanha quando pedirem "colagem", "scrapbook", "rasgado", "zine", "feito à mão", "menos perfeito", "onírico", "desfocado", "etéreo", "sonho", "surreal". Nunca em UI de produto, formulário, dado ou fluxo de compra.
---

# Colagem e desfoque · A mão e o sonho aparecem

Dois jeitos de recusar o polido de máquina. Os dois são **vitrine**: hero, abertura de matéria, campanha. O texto de leitura e a ação ficam sempre fora do efeito, nítidos e com contraste ≥ 4,5:1.

## 1. Colagem e mídia mista

- **O que é:** bordas rasgadas, papel e foto em camadas, recortes em preto e branco, marcas feitas à mão sobre o digital e textura visível.
- **Composição:** de 3 a 5 camadas, na ordem fundo de papel, recorte, foto, marca à mão e tipo.
- **Recorte:** borda irregular de verdade em PNG/WebP, nunca `border-radius`.
- **Foto:** recortada em preto e branco, mais uma cor de destaque.
- **Rotação:** leve, de −4° a 4°, nas peças. Nunca no texto de leitura.
- **Textura:** grão ou papel com 3 a 8% de opacidade.
- **Por superfície:**
  - Landing e site: no hero e nos separadores de seção.
  - Editorial: na abertura de matéria.
  - App: no máximo na boas-vindas de um produto cultural.
- **Exemplos:** Grit Pictures (grit.pictures), Adrien Lamy, Loli Laboureau, KARO (feito à mão), Caren Ginsberg e Sinem Akdemir (Behance).
  - Fontes: [10 graphic design trends 2025](https://muz.li/blog/10-graphic-design-trends-2025/) (#7), [top 100 portfólios 2025](https://muz.li/blog/top-100-most-creative-and-unique-portfolio-websites-of-2025/) e [roundup de abril de 2026](https://muz.li/blog/the-best-creative-websites-of-the-month-april-2026/).

## 2. Desfoque surreal

- **O que é:** foco suave, cor misturada, forma sem contorno, imagem distorcida. Um sonho de propósito imperfeito.
- **Desfoque:** de 8 a 40 px na imagem, nunca no texto. O texto fica nítido, sobre um véu que garanta 4,5:1.
- **Paleta:** de 2 a 3 tons próximos, misturados.
- **Âncora:** uma camada nítida (o produto, o rosto ou o título) contra o resto desfocado. É ela que dá o foco. A distorção também precisa de um ponto nítido de ancoragem e intensidade baixa.
- **Por superfície:**
  - Landing e site: no fundo do hero, na transição entre seções e na galeria.
  - E-commerce de moda: na foto de campanha. A foto de produto continua nítida.
  - App: não.
- **Exemplos:** Studio of Vincent Lowe (vincent-lowe.info) e Compagnie de Provence (Thomas Lateur).
  - Fontes: 10 graphic design trends 2025 (#5) e o roundup de abril de 2026.

## Quando usar / Quando não

- **Use:** portfólio criativo, cultura, editorial, moda, música, arte, zine, fragrância, campanha.
- **Não use:** UI de produto, formulário, checkout, dado, saúde, informação. Fica fora de todo lugar onde a clareza importa.
- Peças com muita colagem e desfoque pedem uma direção escolhida como `escola-maximalista` ou `escola-editorial`. A tendência é tempero, não base.

## Dentro do teto de movimento

Teto: toque ≤ 160 ms, revelar ≤ 700 ms, cena ≤ 1,2 s contando atrasos, loop fora.

- Peças que entram uma a uma formam uma **cena**: a composição inteira, com atrasos, em até 1,2 s. Exemplo: 5 peças × 120 ms + 500 ms = 1,1 s.
- O foco que entra, de desfocado a nítido, é **revelar** (≤ 700 ms).
- A leve flutuação das peças e a "respiração" do desfoque são **loop**, desligadas com `prefers-reduced-motion`.
- `backdrop-filter` pesado custa GPU. Teste num celular médio.

## Armadilha

- Textura de banco de imagem aplicada sobre layout de template. A colagem tem que ser composta, não um "efeito papel" em tudo.
- "Screenshot sobre foto desfocada" é o layout de Dribbble que a Muzli critica (`anti-generico`). O desfoque tem que ser a ideia, não o fundo padrão.

## Checklist

1. O texto de leitura está fora do efeito, nítido e com 4,5:1?
2. As peças têm borda irregular de verdade?
3. Há uma camada nítida que ancora o olhar?
4. A entrada inteira cabe em 1,2 s, e os loops param com `prefers-reduced-motion`?
5. Roda liso num celular médio?
