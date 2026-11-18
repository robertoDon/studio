---
name: escola-organica
description: Escola Orgânica / Biofílica. Paleta terrosa, formas orgânicas e arredondadas, grão e textura natural, serifas suaves, ritmo lento e muito respiro. Use quando o produto fala de bem-estar, saúde mental, sono, meditação, yoga, nutrição natural, cosméticos naturais, sustentabilidade, agro, turismo de natureza ou maternidade, ou quando pedirem algo "calmo", "natural", "acolhedor", "orgânico", "terroso", "zen", "wellness", "sustentável", "humano".
---

# Escola Orgânica · Respira, que dá tempo

Vem do design biofílico (a ideia de que gente se sente melhor perto da natureza), do movimento Arts & Crafts e da onda wellness dos anos 2010 (Aesop, Headspace, Calm, Oatly na versão séria). Ideia central: a interface baixa a frequência cardíaca. Nada grita, tudo tem textura de coisa real.

## Quando usar

- **Setores:** saúde mental, meditação, sono, terapia, yoga e pilates, nutrição, cosméticos naturais, farmácia de manipulação, sustentabilidade, agro e orgânicos, ecoturismo, maternidade, floricultura.
- **Público:** adultos 25–55 buscando cuidado; famílias; público consciente de consumo.
- **Imagem que passa:** calmo, acolhedor, honesto, natural, cuidadoso, "feito para durar".

## Quando não usar

- Produto que vende velocidade, performance ou tecnologia de ponta (trading, devtools, esportes de alta intensidade).
- Ferramenta densa em dados: o respiro todo vira scroll infinito.
- Cuidado com greenwashing: se a marca não é sustentável de fato, a estética vira mentira visual.

## A regra em números

| Grupo | Regra |
|---|---|
| Grid | 12 colunas com margens largas (≥ 1,5 coluna no desktop). Conteúdo central de até 680 px para texto. Elementos orgânicos (blobs, folhas) podem sangrar o grid, nunca o texto. |
| Tipo | Serifa suave ou humanista no display: Fraunces (com SOFT alto), Recoleta, GT Alpina, Canela (livres: Fraunces, Young Serif, Lora). Corpo em sans humanista: DM Sans, Nunito Sans, Figtree. Escala de 1,25 (16, 20, 25, 31, 39, 49). Display em 400–500, nunca pesado. Entrelinha 1,6 no corpo. |
| Cor | Terrosos dessaturados: areia #F3EDE4, argila #C9A78B, terracota #B8643F, sálvia #8A9A7B, oliva #5E6B4E, marrom escuro #2E2A24 para texto. Um acento (terracota ou sálvia escura) para ação. Nada de cor neon ou azul elétrico. |
| Forma | Raio grande: 20–32 px em cards, pílula em botões. Blobs e formas assimétricas suaves como fundo. Sombra difusa e quente (0 8px 24px rgba(46,42,36,.08)). Sem borda dura. |
| Imagem | Foto com luz natural, tons quentes, mãos, plantas, textura de pele real, sem retoque pesado. Grão sutil (opacidade 4–8%). Ilustração botânica de traço fino. |
| Espaço | Muito respiro: seções de 120–160 px, cards com 32 px de padding. Uma ideia por dobra. |
| Movimento | Lento e suave dentro do teto: fade + deslocamento de 12 px em 400–600 ms com ease-in-out; respiração de meditação é loop (fora da regra). Toque ≤ 160 ms. Respeite o teto do projeto (revelar ≤ 700 ms, cena ≤ 1,2 s) e `prefers-reduced-motion`. |

## Por superfície

- **App web / dashboard:** fundo areia, cards brancos-quentes com raio 24, gráficos em sálvia e argila (sem vermelho alarmante; problema em terracota com texto). Linguagem gentil.
- **App mobile:** uma ação por tela, botão pílula grande, tela de sessão (respiração, diário) com fundo de cor sólida suave e pouquíssimo texto. Lembretes sem culpa.
- **Landing page:** foto grande com luz natural, manchete em serifa suave curta, depoimentos com foto real, ingredientes ou princípios em ícones botânicos. Muito branco quente.
- **Site institucional:** história da marca, origem dos ingredientes, mapa de produtores. Fotos editoriais em ritmo lento.

## Tokens de partida

```css
:root {
  --font-display: "Fraunces", "Young Serif", Georgia, serif;
  --font-sans: "DM Sans", "Figtree", system-ui, sans-serif;
  --fs-1: 0.8rem; --fs-2: 1rem; --fs-3: 1.25rem; --fs-4: 1.563rem; --fs-5: 1.953rem; --fs-6: 3.052rem;
  --c-sand: #F3EDE4; --c-card: #FBF8F3; --c-ink: #2E2A24; --c-mute: #6B6257;
  --c-clay: #C9A78B; --c-terracotta: #B8643F; --c-sage: #8A9A7B; --c-olive: #5E6B4E;
  --c-action: var(--c-olive);
  --radius: 24px; --radius-pill: 999px;
  --shadow: 0 8px 24px rgba(46, 42, 36, 0.08);
  --ease: cubic-bezier(.45, 0, .25, 1);
}
```

## Referências para olhar

- Aesop (lojas e site), Headspace (ilustração e tom), Calm, Oura (versão premium).
- *Biophilia*, Edward O. Wilson (1984); trabalho de Terrapin Bright Green sobre design biofílico.
- Marcas brasileiras como Natura (linha Ekos) e Granado (versão clássica).

## O que faz parecer genérico

- Bege em tudo sem contraste: o cinza-areia sobre areia reprova na WCAG. Texto é marrom escuro.
- Blob em toda seção. Forma orgânica é pontual.
- Foto de banco de imagem com mulher de olhos fechados no campo. Use foto real da marca ou nada.
- Lento demais: animação de 1,5 s em botão. Calmo não é lerdo.

## Combina com / briga com

- **Combina:** `escola-escandinava` (calor e madeira), `escola-japonesa` (ma e wabi-sabi), `escola-artesanal` (textura), `escola-editorial` (serifa).
- **Briga:** `escola-y2k-retrofuturo`, `escola-dark-tech`, `escola-esportiva`, `escola-neobrutalismo`.

## Checklist

1. Texto em marrom escuro com 4,5:1 sobre o fundo areia?
2. Paleta só terrosa, um acento para ação?
3. Raio grande e consistente, sombra difusa e quente?
4. Foto real com luz natural, ou nenhuma?
5. Animações suaves, mas dentro do teto (revelar ≤ 700 ms)?
6. Microcopy gentil, sem culpa nem urgência falsa?
