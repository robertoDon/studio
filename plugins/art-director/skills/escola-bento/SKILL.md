---
name: escola-bento
description: Bento grid. Grade modular de cards de tamanhos variados (1×1, 2×1, 2×2), cada card com uma ideia, raio grande, ritmo de vitrine estilo keynote da Apple. Use para apresentar várias features, números ou facetas de um produto numa única dobra (landing de SaaS, página de produto, perfil, portfólio, dashboard de resumo, "wrapped"/retrospectiva, página de link-in-bio) ou quando pedirem "bento", "grid de cards", "estilo keynote", "mostrar features", "visão geral", "resumo bonito".
---

# Bento · Cada caixa, uma ideia

O nome vem da marmita japonesa com compartimentos. Na interface, popularizou-se com os slides de keynote da Apple (desde o iPhone 14, 2022) e com os widgets do iOS 14 (2020), e virou padrão em landings de SaaS a partir de 2023 (bentogrids.com reúne exemplos). Ideia central: muitas mensagens numa só tela, mas cada uma em sua caixa, com tamanhos que mostram a hierarquia.

## Quando usar

- **Setores:** SaaS e apps (landing de features), hardware, perfis e portfólios, dashboards de resumo, retrospectivas (Spotify Wrapped), páginas de evento, link-in-bio.
- **Público:** amplo; funciona do técnico ao consumidor.
- **Imagem que passa:** organizado, moderno, rico em conteúdo sem bagunça, "tem muito aqui e está tudo no lugar".

## Quando não usar

- Fluxo sequencial (checkout, onboarding): bento é para olhar, não para seguir passos.
- Uma mensagem só: um bento de uma caixa é um card.
- Conteúdo sem hierarquia: se tudo é 1×1, vira grade de cards comum.

## A regra em números

| Grupo | Regra |
|---|---|
| Grid | CSS Grid de 4 ou 6 colunas no desktop, 2 no tablet, 1 no celular. Gap fixo de 12–16 px (o mesmo em linha e coluna). Tamanhos: 1×1, 2×1, 1×2, 2×2. Um card-herói 2×2 por bloco; 5–9 cards por bento. A grade fecha em retângulo, sem buraco. |
| Tipo | Uma sans: Inter, Geist, Manrope, Plus Jakarta Sans (livres). Cada card: rótulo pequeno (12–13 px), título (20–28 px) e no máximo uma frase. Número-manchete (48–96 px) no card de dado. |
| Cor | Fundo neutro (#F5F5F7 claro ou #0B0B0F escuro), cards em superfície (#FFF ou #161618). No máximo 1–2 cards de cor cheia por bento (acento da marca) para criar ritmo. |
| Forma | Raio 20–32 px nos cards (consistente), raio interno concêntrico. Borda de 1 px ou sombra de 1 px. Conteúdo pode sangrar até a borda do card (imagem, gráfico). |
| Imagem | Cada card com um visual próprio: screenshot recortado, número, ícone grande, mini-gráfico, foto. Variedade de tipo de visual, consistência de estilo. |
| Espaço | Padding interno 24–32 px. Texto ancorado no topo-esquerda ou embaixo-esquerda, sempre o mesmo canto no bento inteiro. |
| Movimento | Cards entram em cascata (stagger de 40–60 ms, total ≤ 700 ms); hover levanta 2 px ou anima o visual interno em ≤ 160 ms. Respeite o teto do projeto (padrão: toque ≤ 160 ms, revelar ≤ 700 ms, cena ≤ 1,2 s). |

## Por superfície

- **App web / dashboard:** tela de visão geral com KPI 2×1, gráfico 2×2, lista 1×2, atalhos 1×1. Cada card clica para a tela completa. Não use bento em telas de trabalho.
- **App mobile:** grade de 2 colunas com cards 2×1 e 1×1, como widgets do iOS. Em 1 coluna, mantenha alturas variadas.
- **Landing page:** seção "tudo que você ganha": card-herói com o produto, cards menores com features, um card de número, um card de depoimento.
- **Site institucional / portfólio:** perfil (foto, bio, mapa, links, projeto em destaque) em um bento único.

## Tokens de partida

```css
:root {
  --font-sans: "Inter", "Geist", system-ui, sans-serif;
  --c-bg: #F5F5F7; --c-card: #FFFFFF; --c-ink: #1D1D1F; --c-mute: #6E6E73; --c-accent: #0071E3;
  --bento-gap: 16px; --bento-pad: 28px; --bento-radius: 28px;
  --shadow-1: 0 1px 2px rgba(0,0,0,.06);
  --stagger: 50ms; --dur: 300ms;
}
.bento { display: grid; grid-template-columns: repeat(4, 1fr); grid-auto-rows: 220px; gap: var(--bento-gap); }
.bento .hero { grid-column: span 2; grid-row: span 2; }
.bento .wide { grid-column: span 2; }
@media (max-width: 720px) { .bento { grid-template-columns: repeat(2, 1fr); } }
@media (max-width: 480px) { .bento { grid-template-columns: 1fr; } .bento > * { grid-column: auto; grid-row: auto; } }
```

## Referências para olhar

- Apple: slides de keynote e páginas de produto (iPhone, Apple Watch).
- bentogrids.com (curadoria), linear.app (seções de feature), Spotify Wrapped.
- Widgets do iOS 14+ como origem do formato no mobile.

## O que faz parecer genérico

- Todo card do mesmo tamanho: perde a hierarquia que justifica o bento.
- Cada card com estilo visual diferente (um 3D, um flat, um foto): parece colagem.
- Texto longo dentro dos cards. Bento é uma ideia por caixa.

## Combina com / briga com

- **Combina:** `escola-minimalismo-refinado`, `escola-dark-tech`, `escola-vidro-espacial`, `escola-utilitaria`, `escola-clay-3d`.
- **Briga:** `escola-editorial` (fluxo de leitura), `escola-luxo-silencioso` (densidade), `escola-japonesa`.

## Checklist

1. Existe um card-herói 2×2 e tamanhos variados?
2. A grade fecha em retângulo, sem buracos, com gap único?
3. Raio e padding iguais em todos os cards, raio interno concêntrico?
4. Cada card tem uma ideia, um título e no máximo uma frase?
5. No máximo 1–2 cards de cor cheia?
6. No celular vira 2 ou 1 coluna sem perder a ordem de leitura?
