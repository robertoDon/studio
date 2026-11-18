---
name: escola-tatil
description: Escola Tátil / Neo-skeuomorfismo. Interface que parece objeto físico: botões que afundam, knobs, sliders com trilho, materiais (alumínio, plástico fosco, borracha), luz e sombra coerentes, com contraste seguro (neumorphism corrigido). Use quando o produto controla algo físico ou quer prazer de manuseio (áudio e música, câmera, casa inteligente, hardware, carros, relógios, calculadoras, apps de ferramenta criativa) ou quando pedirem algo "tátil", "físico", "skeuomórfico", "neumorphism", "com textura", "estilo Teenage Engineering", "Dieter Rams", "como um aparelho".
---

# Escola Tátil · Dá para sentir o clique

Skeuomorfismo foi a linguagem do iPhone até o iOS 6 (2012): couro, madeira, papel. O flat matou o excesso; o neumorphism (2019–2020) tentou voltar com sombras suaves, mas sem contraste. A versão atual aprende com os dois: objetos com material e luz, como os aparelhos da Teenage Engineering e da Braun de Dieter Rams, mas com contraste e estado claros. Ideia central: o controle tem peso, curso e resposta.

## Quando usar

- **Setores:** áudio e produção musical, câmera e foto, casa inteligente, hardware e IoT, painel de carro, relógios e wearables, ferramentas criativas, calculadoras e utilitários, marcas de eletrônico premium.
- **Público:** entusiastas, criadores, gente que gosta de objeto bem-feito.
- **Imagem que passa:** preciso, prazeroso, premium, "feito com cuidado", engenharia.

## Quando não usar

- Interfaces de texto e dados densos: o material ocupa espaço e distrai.
- Neumorphism puro (cinza sobre cinza, sombra branca e cinza): reprova em contraste e ninguém sabe o que é botão. Use só a versão corrigida.
- Produto sem relação com objeto físico e sem orçamento para detalhe: fica kitsch.

## A regra em números

| Grupo | Regra |
|---|---|
| Grid | Painel de controle: módulos em grade de 4 ou 8 colunas, como um aparelho. Controles alinhados em fileiras, rótulos sempre na mesma posição (acima ou abaixo). |
| Tipo | Sans técnica e pequena, estilo serigrafia de aparelho: Univers, DIN, Neue Haas Unica, Söhne Mono (livres: Barlow, IBM Plex Sans, Space Mono, Chakra Petch). Rótulos em caixa-alta 10–12 px com tracking +6%. Display numérico em mono ou fonte de 7 segmentos (DSEG, livre) para leitura de valor. |
| Cor | Material neutro: alumínio #D9DADC, plástico claro #ECEBE7, grafite #2B2C2E. Um acento de sinalização forte (laranja #FF5A1F como Teenage Engineering, ou vermelho Braun) só em controle principal ou gravação. LEDs: verde, âmbar, vermelho, com texto ou forma junto. Texto ≥ 4,5:1. |
| Forma | Raio coerente com objeto (4–12 px em botões, círculo em knobs). Luz vem sempre de cima-esquerda: highlight 1 px claro em cima, sombra embaixo. Botão em repouso elevado (sombra 0 2px 0), pressionado afundado (inset). Borda de 1 px sempre presente para definir o objeto. |
| Imagem | Foto de produto em estúdio, material real com textura (escovado, granulado sutil ≤ 6%). Ícones de traço que lembram serigrafia. |
| Espaço | Modular: 8 px de base, módulos com padding de 16–24 px, fileiras de controle com 12 px entre si. Alvo de toque ≥ 44 px mesmo para knob pequeno. |
| Movimento | Físico e curto: botão afunda em ≤ 80 ms, knob gira 1:1 com o gesto, slider com leve resistência. Feedback háptico no mobile (`navigator.vibrate` ou API nativa) em passos. Respeite o teto do projeto (toque ≤ 160 ms, revelar ≤ 700 ms, cena ≤ 1,2 s) e `prefers-reduced-motion`. |

## Por superfície

- **App web / dashboard:** use o tátil nos controles (toggle, slider, botão principal), não em tabelas. Painel de dispositivo como cartão-objeto com estado (LED + texto).
- **App mobile:** controle remoto, mixer ou câmera: knobs e sliders grandes, valor numérico sempre visível, háptico em cada passo, botão de gravar inconfundível.
- **Landing page:** foto ou render do aparelho como herói, controles interativos que respondem ao mouse ("aperte aqui"), especificações em tabela técnica serigrafada.
- **Site institucional:** catálogo de produtos como vitrine de objeto, fundo cinza-alumínio, detalhes em close.

## Tokens de partida

```css
:root {
  --font-sans: "IBM Plex Sans", "Barlow", system-ui, sans-serif;
  --font-mono: "Space Mono", "IBM Plex Mono", monospace;
  --c-body: #ECEBE7; --c-metal: #D9DADC; --c-graphite: #2B2C2E;
  --c-ink: #1C1C1E; --c-mute: #5E5E62; --c-line: #BDBDB8;
  --c-signal: #FF5A1F; --c-led-on: #2FBF71;
  --radius: 8px;
  --raised: 0 2px 0 #A9A9A4, inset 0 1px 0 rgba(255,255,255,.8), 0 0 0 1px var(--c-line);
  --pressed: inset 0 2px 4px rgba(0,0,0,.18), 0 0 0 1px var(--c-line);
  --label: 600 0.6875rem/1 var(--font-sans);
}
.btn { box-shadow: var(--raised); transition: box-shadow 80ms ease-out, transform 80ms ease-out; }
.btn:active { box-shadow: var(--pressed); transform: translateY(1px); }
```

## Referências para olhar

- Teenage Engineering (OP-1, OP-Z, TX-6), Braun e Dieter Rams (calculadora ET66, rádio T3).
- Nothing (Phone e Ear, interface com fonte de matriz de pontos), Apple iOS até a versão 6 (o que não repetir também).
- Michał Malewicz, "Neumorphism in user interfaces" (2019), e as críticas de acessibilidade que vieram depois.

## O que faz parecer genérico

- Neumorphism de Dribbble: cinza sobre cinza, sem borda, sem estado. Ninguém sabe o que está ligado.
- Luz vindo de lados diferentes em botões diferentes.
- Textura de couro e madeira sem motivo: é 2010, não tátil.
- Botão bonito sem feedback de pressionado.

## Combina com / briga com

- **Combina:** `escola-minimalismo-refinado` (Dieter Rams), `escola-utilitaria` (leitura de valor), `escola-bauhaus` (função), `escola-clay-3d` (volume suave).
- **Briga:** `escola-neobrutalismo`, `escola-maximalista`, `escola-editorial`, `escola-y2k-retrofuturo`.

## Checklist

1. Todo controle tem estado ligado/desligado visível sem depender só de sombra (LED, texto, cor + forma)?
2. Luz vem sempre da mesma direção?
3. Borda de 1 px define cada objeto; texto ≥ 4,5:1?
4. Botão afunda no clique em ≤ 80 ms; valor numérico sempre visível?
5. Alvo de toque ≥ 44 px, mesmo em knob?
6. O tátil está nos controles, não em listas e tabelas?
