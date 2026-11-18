---
name: escola-vidro-espacial
description: Vidro e espaço (glassmorphism, Apple Liquid Glass, visionOS). Camadas translúcidas com desfoque de fundo, bordas de luz, profundidade por camada, controles flutuando sobre o conteúdo. Use quando o produto quer parecer futurista, leve, imersivo e premium (apps Apple, música e mídia, clima, viagens, carteiras e fintech de consumo, IA de consumo, smart home, AR/VR, players, widgets) ou quando pedirem "glass", "vidro", "translúcido", "Liquid Glass", "visionOS", "frosted", "iOS 26", "flutuante".
---

# Vidro e espaço · Camadas sobre o mundo

Desfoque de fundo já existia no Windows Vista (Aero, 2007) e no iOS 7 (2013). O termo *glassmorphism* veio em 2020 (Michal Malewicz). Em 2023 o visionOS fez do vidro o material base do espaço, e em 2025 a Apple lançou o Liquid Glass em todos os sistemas (iOS 26). Ideia central: a interface é uma camada de vidro sobre o conteúdo; o conteúdo é o herói e os controles flutuam.

## Quando usar

- **Setores:** música, vídeo e fotos, clima, viagens, carteira e pagamentos, smart home, IA de consumo, players, apps Apple-first, AR/VR, painéis de carro.
- **Público:** 18–45, consumidor de tecnologia, iOS.
- **Imagem que passa:** futurista, leve, premium, imersivo, "nativo da Apple".

## Quando não usar

- Fundo sem imagem rica: vidro sobre branco liso não tem o que desfocar e vira cinza.
- Ferramenta densa e de leitura longa: o contraste varia com o fundo.
- Público com baixa visão ou dispositivos fracos (blur custa GPU).

## A regra em números

| Grupo | Regra |
|---|---|
| Grid | Conteúdo em tela cheia; controles em cápsulas flutuantes com margem de 12–16 px das bordas. Barra de abas flutuando, não colada. Camadas: fundo → conteúdo → vidro → controle. No máximo 2 camadas de vidro empilhadas. |
| Tipo | SF Pro (Apple), Inter, Manrope, Plus Jakarta Sans (livres). Pesos 500–600 sobre vidro (o vidro come peso). Corpo 15–17 px. Display 600–700 com tracking −2%. |
| Cor | Vidro claro: rgba(255,255,255,.55–.72) + blur 20–40 px + saturate 160–180%. Vidro escuro: rgba(20,20,24,.45–.6). Borda de luz: 1 px rgba(255,255,255,.35) em cima e .08 embaixo. Fundo com imagem ou gradiente rico (aurora, malha). Texto sempre com contraste ≥ 4,5:1 medido no pior trecho do fundo. |
| Forma | Raio grande e concêntrico: cápsula em controle, 24–32 px em painel, raio interno = externo − padding. Sombra suave ampla (0 8px 32px rgba(0,0,0,.12)). Ícones SF Symbols preenchidos em controles flutuantes. |
| Imagem | Foto, capa de álbum, mapa, vídeo como fundo vivo. Gradiente em malha (mesh) quando não há conteúdo. |
| Espaço | Padding interno de painel 16–24. Controles com 44 pt mínimo. O conteúdo atrás deve respirar, não ficar coberto. |
| Movimento | Vidro que se adapta: morphing de cápsula (aba vira barra de busca), reflexo que reage ao movimento, 200–400 ms com spring suave. Respeite o teto do projeto (padrão: toque ≤ 160 ms, revelar ≤ 700 ms, cena ≤ 1,2 s) e `prefers-reduced-transparency` / `prefers-reduced-motion`. |

## Por superfície

- **App web / dashboard:** vidro só em navegação e overlays (barra lateral, menu de comando, toolbar flutuante). Cards de dados em superfície opaca para leitura.
- **App mobile:** barra de abas em cápsula de vidro flutuante, botões circulares de vidro sobre mídia, sheets de vidro que viram opacas ao expandir.
- **Landing page:** fundo com gradiente aurora ou foto, cards de feature em vidro com borda de luz, produto real em mockup de dispositivo.
- **Site institucional:** usar com moderação: header de vidro sticky, resto opaco.

## Tokens de partida

```css
:root {
  --font-sans: "Inter", -apple-system, "SF Pro Display", system-ui, sans-serif;
  --glass-light: rgba(255,255,255,.62); --glass-dark: rgba(20,20,24,.52);
  --glass-blur: blur(28px) saturate(170%);
  --glass-edge: inset 0 1px 0 rgba(255,255,255,.35), inset 0 -1px 0 rgba(255,255,255,.08);
  --glass-shadow: 0 8px 32px rgba(0,0,0,.12);
  --c-ink: #0B0B0F; --c-ink-on-dark: #FFFFFF;
  --radius-panel: 28px; --radius-pill: 9999px;
  --dur: 280ms; --spring: cubic-bezier(.34,1.2,.64,1);
}
.glass { background: var(--glass-light); backdrop-filter: var(--glass-blur); -webkit-backdrop-filter: var(--glass-blur); box-shadow: var(--glass-edge), var(--glass-shadow); }
@media (prefers-reduced-transparency: reduce) { .glass { background: #F2F2F5; backdrop-filter: none; } }
```

## Referências para olhar

- Apple: Liquid Glass (WWDC 2025), visionOS Human Interface Guidelines.
- Apps: Apple Music, Clima, Fotos no iOS 26; Arc (fase de vidro).
- Michal Malewicz, artigo "Glassmorphism in user interfaces" (2020).

## O que faz parecer genérico

- Vidro sobre fundo liso ou sobre outro vidro sobre outro vidro.
- Texto branco fino sobre vidro claro: some.
- Bolhas de gradiente roxo-rosa genéricas como único fundo.

## Combina com / briga com

- **Combina:** `escola-minimalismo-refinado`, `escola-dark-tech`, `escola-bento`, `escola-y2k-retrofuturo` (versão cromada).
- **Briga:** `escola-neobrutalismo`, `escola-editorial`, `escola-artesanal`, `escola-suica`.

## Checklist

1. Há conteúdo rico atrás do vidro?
2. No máximo 2 camadas de vidro empilhadas?
3. Contraste ≥ 4,5:1 medido no pior trecho do fundo?
4. Raios concêntricos (interno = externo − padding)?
5. Fallback opaco para `prefers-reduced-transparency`?
6. Dado e leitura longa ficam em superfície opaca?
