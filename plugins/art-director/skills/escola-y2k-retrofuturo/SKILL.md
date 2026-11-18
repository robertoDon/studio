---
name: escola-y2k-retrofuturo
description: Escola Y2K / Retrofuturo. Cromado, holográfico, iridescente, pixel e bitmap, interfaces de sistema dos anos 2000, gradientes ácidos, tipografia larga e tecnológica. Use quando o produto vende nostalgia, música, moda jovem, cultura de internet, games, festas ou drops limitados, ou quando pedirem algo "Y2K", "anos 2000", "cromado", "holográfico", "retrofuturista", "cyber", "nostálgico", "vaporwave", "Windows 98", "pixel".
---

# Escola Y2K / Retrofuturo · O futuro que a gente imaginava em 2000

Virada do milênio: iMac G3 translúcido, Winamp, MSN, videoclipes de Hype Williams, capas de Designers Republic. A Gen Z redescobriu essa estética como nostalgia de algo que não viveu. Ideia central: a tecnologia como brinquedo brilhante, otimista e um pouco exagerada.

## Quando usar

- **Setores:** música (selos, festivais, artistas), moda streetwear, drops e colecionáveis, games indie, cultura de internet, bares e festas, cosméticos jovens.
- **Público:** Gen Z e millennials nostálgicos, público de cultura pop, nichos de fã.
- **Imagem que passa:** ousado, divertido, nostálgico, "cool de internet", edição limitada.

## Quando não usar

- Ferramentas de trabalho, finanças sérias, saúde, B2B. Parece piada ou golpe.
- Produto que precisa durar 5 anos sem redesign: é estética de ciclo curto.
- Público acima de 45 que não tem afeto pela referência.
- Use em camada (campanha, landing, drop), não como sistema base de um app de uso diário.

## A regra em números

| Grupo | Regra |
|---|---|
| Grid | Janelas e painéis flutuantes sobre fundo; grid de 12 colunas por baixo, com elementos "de sistema" (barra de título, botões de janela) em cima. Máximo 3 janelas sobrepostas por tela. |
| Tipo | Display larga ou tecnológica: Monument Extended, Druk Wide, Eurostile, Microgramma (livres: Syncopate, Orbitron, Michroma, Unbounded). Pixel para detalhe: VT323, Silkscreen, Press Start 2P (só ≥ 16 px e em rótulos curtos). Corpo legível em sans neutra (Inter, Space Grotesk). Escala 1,5. |
| Cor | Fundo preto #0A0A0F ou lilás claro #E8E4FF. Gradientes ácidos (lima #C6FF00, ciano #00F0FF, magenta #FF2BD6, prata). Cromado = gradiente linear de 4–6 paradas cinza/branco. Texto sempre sobre área sólida com 4,5:1, nunca sobre holográfico. |
| Forma | Pílulas e cápsulas infladas, raio 999 px, bordas biseladas (inner shadow 1 px clara em cima, escura embaixo). Estrelas de 4 pontas, órbitas, globos wireframe. |
| Imagem | Render 3D cromado, objetos translúcidos coloridos (estilo iMac G3), foto com flash estourado, textura de CRT ou scanline sutil (opacidade ≤ 8%). |
| Espaço | Mais denso que o minimal: 16–24 px entre elementos, seções de 80 px. O fundo pode ter padrão (grid de perspectiva, estrelas). |
| Movimento | Brilho que passa no cromado (shine) no hover ≤ 160 ms; janela que "abre" com escala de 0,95 a 1 ≤ 300 ms. Rotação de objeto 3D e marquee contam como loop (fora da regra), mas pausáveis. Respeite o teto do projeto (toque ≤ 160 ms, revelar ≤ 700 ms, cena ≤ 1,2 s) e `prefers-reduced-motion`. |

## Por superfície

- **App web / dashboard:** use só em detalhes (logo cromado, botão principal com bisel, um adesivo holográfico na conquista). Base escura e neutra para trabalhar.
- **App mobile:** cards em cápsula, botão principal com gradiente ácido e texto preto, ícones pixel em rótulos. Tela de drop ou desbloqueio pode ser o momento Y2K completo.
- **Landing page:** hero com objeto 3D cromado girando, manchete larga em caixa-alta, janelas estilo sistema operacional com o produto dentro, contagem regressiva para o drop.
- **Site institucional:** navegação como desktop (ícones de pasta que abrem janelas), cursor customizado, página 404 como tela de erro de sistema.

## Tokens de partida

```css
:root {
  --font-display: "Unbounded", "Syncopate", system-ui, sans-serif;
  --font-pixel: "VT323", "Silkscreen", monospace;
  --font-sans: "Space Grotesk", "Inter", system-ui, sans-serif;
  --c-void: #0A0A0F; --c-text: #F4F4F8; --c-mute: #A0A0B8;
  --c-lime: #C6FF00; --c-cyan: #00F0FF; --c-magenta: #FF2BD6;
  --chrome: linear-gradient(180deg, #FFFFFF 0%, #B8B8C8 30%, #F0F0F5 50%, #6E6E80 70%, #E0E0EA 100%);
  --holo: linear-gradient(120deg, #FF2BD6, #00F0FF, #C6FF00, #FF2BD6);
  --radius-pill: 999px;
  --bevel: inset 0 1px 0 rgba(255,255,255,.6), inset 0 -1px 0 rgba(0,0,0,.4);
}
```

## Referências para olhar

- The Designers Republic (capas da Warp Records, Wipeout).
- iMac G3 e iBook "clamshell" da Apple (1998–2001), interfaces de Winamp e Windows 98/XP.
- Capas e sites de artistas: Charli XCX (era *Pop 2*), Bladee/Drain Gang; marcas como Diesel e Blumarine nas coleções recentes.

## O que faz parecer genérico

- Gradiente holográfico atrás de texto: ilegível e barato.
- Juntar todas as referências (vaporwave + cyberpunk + Windows 98 + cromado) na mesma tela. Escolha uma década e um registro.
- Fonte pixel em parágrafo. Pixel é tempero.
- Fazer o app inteiro assim: a pessoa cansa em uma semana.

## Combina com / briga com

- **Combina:** `escola-maximalista`, `escola-pop-memphis`, `escola-dark-tech` (base escura), `escola-vidro-espacial` (translúcido).
- **Briga:** `escola-luxo-silencioso`, `escola-corporativa-confiavel`, `escola-escandinava`, `escola-artesanal`.

## Checklist

1. Escolhi um registro só (cromado de 2000, ou pixel de sistema, ou holográfico)?
2. Todo texto está sobre área sólida com 4,5:1?
3. A fonte pixel aparece só em rótulo curto, ≥ 16 px?
4. A estética está na vitrine e nos momentos, e o trabalho diário continua neutro?
5. Loops são pausáveis e respeitam `prefers-reduced-motion`?
6. Funciona em 375 px sem as janelas virarem bagunça?
