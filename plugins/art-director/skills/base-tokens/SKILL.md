---
name: base-tokens
description: Design tokens em 3 camadas (primitivo → semântico → componente), nomes, implementação em CSS variables e Tailwind, e como ligar ao DESIGN.md do projeto. Use ao criar ou organizar design system, tema, variáveis de cor/espaço/tipo, modo escuro, troca de marca, ou quando pedirem "tokens", "design system", "variáveis de tema", "padronizar valores".
---

# Tokens · Poucos valores, cada um com nome

Fontes: W3C Design Tokens Community Group (Format Module); Material Design 3 (design tokens: reference, system, component); Salesforce Lightning (origem do termo, Jina Anne); Nathan Curtis, "Naming Tokens in Design Systems" (EightShapes). Tela com cara de gerada tem valor solto. Token fecha a conta: se um valor não tem nome, não entra.

## O documento de direção

A direção de arte do projeto mora no **`DESIGN.md` na raiz** do repositório. O formato está em `skills/direcao-de-arte/references/design-md.md`. Os tokens são a tradução técnica dele: o DESIGN.md diz *por quê* e *qual escola*; os tokens dizem *quanto*. Mudou o DESIGN.md, atualize os tokens no mesmo commit.

## Três camadas

| Camada | O que é | Exemplo | Quem usa |
|---|---|---|---|
| **Primitivo** (reference) | O valor bruto, sem sentido | `--green-600: oklch(0.52 0.17 150)` · `--space-4: 16px` | Só a camada semântica |
| **Semântico** (system) | O papel do valor | `--color-action` · `--color-text-mute` · `--space-stack` | Componentes e telas |
| **Componente** | Decisão de um componente | `--button-radius` · `--card-padding` | Só aquele componente |

Regra: **componente nunca lê primitivo**. Trocar de tema (claro/escuro) ou de marca (outro produto) muda só a camada semântica.

## O que vira token

| Grupo | Tokens mínimos |
|---|---|
| Cor | bg, surface, surface-raised, text, text-mute, border, action, on-action, focus, success, warning, danger |
| Tipo | família display/texto/mono; 4–6 tamanhos com entrelinha; pesos |
| Espaço | 4, 8, 12, 16, 24, 32, 48, 64, 96 |
| Raio | 2–4 valores (controle, card, folha, pílula) |
| Sombra / elevação | 2–3 níveis |
| Movimento | durações toque/revelar/cena, curvas de entrada e saída |
| Tamanho | alvo de toque (44), ícone (16, 20, 24), largura máxima |
| Camada | z-index nomeado (dropdown, sticky, modal, toast) |

## Nomes

Padrão: `categoria-papel-variante-estado`. Em inglês ou português, mas um idioma só.

- Bom: `--color-text-mute`, `--color-action-hover`, `--radius-card`, `--dur-revelar`.
- Ruim: `--gray2`, `--blue-button`, `--big-padding`, `--color-1`.
- Nome de papel, não de aparência: `--color-danger`, não `--color-red`. Assim o tema pode mudar o tom.

## CSS variables

```css
:root {
  /* primitivos */
  --gray-50: oklch(0.98 0.003 260); --gray-900: oklch(0.21 0.012 260);
  --brand-600: oklch(0.52 0.17 150);
  /* semânticos */
  --color-bg: var(--gray-50); --color-text: var(--gray-900);
  --color-action: var(--brand-600); --color-on-action: #fff;
  --space-1: 4px; --space-2: 8px; --space-3: 12px; --space-4: 16px; --space-6: 24px;
  --radius-control: 8px; --radius-card: 16px; --radius-pill: 999px;
  --fs-sm: 0.75rem; --fs-body: 1rem; --fs-title: 1.5rem; --fs-display: 2rem;
  --dur-toque: 120ms; --dur-revelar: 240ms; --ease-out: cubic-bezier(.2,0,0,1);
}
[data-theme="dark"] { --color-bg: oklch(0.17 0.01 260); --color-text: oklch(0.95 0.005 260); }
```

## Tailwind

Aponte o tema para as variáveis, não para valores. No Tailwind v4, use `@theme`; no v3, `theme.extend` com `var(--...)`. Troque a escala padrão em vez de só estender, para que valores fora da régua nem existam.

```css
@theme {
  --color-action: var(--brand-600);
  --spacing: 4px;            /* p-4 = 16px */
  --radius-card: 16px;
}
```

## Como auditar valores soltos

1. Liste os valores distintos no código: `grep -Eo 'font-size:[^;]+|padding[^;]+|gap:[^;]+|border-radius:[^;]+|#[0-9a-fA-F]{3,8}'` (e classes arbitrárias tipo `p-[13px]`).
2. Conte por grupo. Mais de 4 tamanhos de texto, 8 espaços ou 4 raios já é desvio.
3. Troque cada valor pelo vizinho da régua. Precisa de um valor novo? Mude a régua (o token) antes, não a tela.
4. Mostre antes e depois com os números (ex.: 11 → 4 tamanhos, 14 → 7 espaços).

## Checklist

1. Existe DESIGN.md na raiz e os tokens batem com ele?
2. Três camadas, e nenhum componente lê primitivo?
3. Nomes por papel, não por aparência?
4. Tema escuro e troca de marca mudam só a camada semântica?
5. Nenhum valor solto no código (hex, px arbitrário)?
6. Movimento também é token?
