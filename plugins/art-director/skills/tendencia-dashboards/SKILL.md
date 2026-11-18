---
name: tendencia-dashboards
description: Tendências de dashboard de 2026, a partir da seleção dos 50 melhores da Muzli. São três linhas. Escuro com acento neon: base carvão, um acento brilhante, cards modulares, gráficos suaves. Pastel ou neutro quente: base bege ou pastel, cantos arredondados, um acento quente, muito respiro. Dado no espaço: o dado sobre corpo 3D, planta baixa, vista aérea, satélite ou foto do cômodo. Use em finanças, cripto, segurança, fitness, ops, saúde, bem-estar, viagem, imóvel, esporte, casa inteligente, logística e SaaS de consumo quando pedirem "dashboard escuro", "dark mode", "painel tipo trading", "neon", "dashboard leve", "painel amigável", "menos frio", "mapa", "planta", "corpo 3D", "dashboard visual".
---

# Dashboards · Três climas para o mesmo dado

Fonte única: [50 Best Dashboard Designs 2026](https://www.muz.li/blog/best-dashboard-design-examples-inspirations-for-2026). Escolha o clima pelo público e pelo uso, não pela moda:

- **Escuro** para quem passa horas olhando número.
- **Pastel** para quem precisa de leveza.
- **Espacial** quando o dado tem um lugar de verdade.

## 1. Escuro com acento neon

- **O que é:** fundo carvão ou preto com **um** acento brilhante (verde, lavanda, rosa ou roxo), cards modulares de alto contraste, grupos de widgets e barra lateral. Os gráficos são linha e área suaves, donuts, heatmaps e, às vezes, Sankey ou onda.
- **Fundo:** L entre 8 e 14%, nunca #000 puro. Cards um degrau acima (+3 a 5% de L), com borda de 1 px a 8–12% de branco.
- **Acento:** só um, e com sentido (o número principal, a série atual ou o alerta). O resto do gráfico fica em cinza. Brilho só no acento, sutil: sombra de 8 a 16 px com 20 a 30% de opacidade.
- **Texto:** o principal com pelo menos 87% de branco. O secundário com 4,5:1 ou mais sobre o card.
- **Por superfície:**
  - App web: barra lateral, grid de widgets e um card-manchete no topo.
  - Mobile: uma coluna, com o número-manchete primeiro.
  - Landing de produto de dados: o dashboard real é o herói (`escola-dark-tech`).
- **Exemplos:** NobleFinance e Hynex (Orbix Studio), SaaS Dashboard (Mirhayot), Caltimes e Hyid (Sleeko Studio).

## 2. Pastel ou neutro quente

- **O que é:** base pastel ou bege, formas arredondadas, um acento quente (muitas vezes laranja) e espaço generoso entre os blocos.
- **Fundo:** neutro quente, com L entre 94 e 97% e chroma baixo. Cards brancos ou um tom mais claro.
- **Forma e espaço:** raio de 16 a 24 px nos cards e de 999 px nos chips. Gap de 16 a 24 px entre cards e padding de 24 px dentro deles.
- **Gráficos:** 2 a 3 pastéis mais o acento, e cada cor com legenda em texto.
- **Texto:** cinza-escuro quente, nunca cinza claro, porque pastel derruba o contraste fácil. Teste 4,5:1.
- **Por superfície:**
  - App web: de 4 a 6 widgets por tela.
  - Mobile: cards grandes, um por linha.
  - Landing: o painel em pastel como prova do produto.
- **Exemplos:** Intelly (Sigma Software Design), WanderWheels (BL/S), Lumos (RonDesignLab).

## 3. Dado no espaço

- **O que é:** o dado ancorado na coisa real:
  - modelo 3D do corpo (saúde);
  - planta baixa (imóvel);
  - vista aérea do campo (golfe);
  - satélite (logística);
  - foto do cômodo com gráfico de linha (casa).
- **Composição:** o lugar ocupa de 50 a 70% da tela. Os números ficam em cards pequenos, ligados ao ponto por uma linha guia de 1 px.
- **Cor:** o lugar fica neutro ou dessaturado, e quem leva a cor é o dado.
- **Equivalência:** toda informação do mapa também existe em lista ou tabela, para acessibilidade e leitura rápida. Zoom e seleção funcionam por toque e por teclado.
- **Por superfície:**
  - App web: o lugar no centro e a lista ao lado.
  - Mobile: o lugar no topo (40 a 50% da altura) e a lista embaixo.
- **Exemplos:** iHealth (corpo 3D), Golfio (campo em vista aérea), Realto (planta), Aeros de Konstantin Naumenko (fotos de cômodo com gráfico de linha).

## Quando usar / Quando não

- **Escuro:** finanças, cripto, segurança, fitness, ops, monitoramento e uso por horas. Não serve para bem-estar, consumo acessível ou público 60+.
- **Pastel:** saúde, bem-estar, viagem, SaaS de consumo, finanças pessoais e educação. Não serve para trading, ops densas ou monitoramento com muito número.
- **Espacial:** só quando o dado tem lugar físico (corpo, imóvel, campo, cômodo, mapa). Em métrica abstrata, como receita, conversão ou MRR, o "lugar" vira enfeite.
- Os dois climas de cor têm um padrão de IA ao lado (`anti-generico`): "quase preto + verde-limão ácido" e "bege + terracota". O acento vem da marca.

## Dentro do teto de movimento

Teto: toque ≤ 160 ms, revelar ≤ 700 ms, cena ≤ 1,2 s contando atrasos, loop fora.

- Gráfico que se desenha ao entrar, zoom e troca de cômodo são **revelar** (≤ 700 ms).
- Tooltip, hover em card e ponto no mapa são **toque** (≤ 160 ms).
- Cards em cascata formam uma **cena** de até 1,2 s com os atrasos. Exemplo: 6 cards × 60 ms + 500 ms = 860 ms.
- Dado ao vivo que pulsa e modelo 3D girando sozinho são **loop**: discretos e parados com `prefers-reduced-motion`. Quando é a pessoa que gira, o modelo segue o dedo.

## Armadilha

- Neon em toda série do gráfico. Um acento só, e o resto cinza.
- Pastel com texto pastel: bonito no Dribbble, ilegível na vida.
- Mapa bonito sem a lista equivalente. Quem precisa do número rápido, ou usa leitor de tela, fica sem.

## Checklist

1. O clima combina com o público e o uso (horas no escuro, leveza no pastel, lugar real no espacial)?
2. Há um acento só, da marca, e ele significa algo?
3. Todo texto passa 4,5:1 sobre o card ou o pastel?
4. Os números são tabulares e o número-manchete tem a unidade pequena?
5. Cada cor de gráfico tem rótulo em texto?
6. O painel espacial tem lista equivalente e funciona por teclado?
7. A cascata cabe em 1,2 s e os loops param com `prefers-reduced-motion`?
