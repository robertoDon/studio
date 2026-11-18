---
name: base-tokens
description: Design tokens in 3 layers (primitive → semantic → component), naming, implementation in CSS variables and Tailwind, and how to tie them to the project's DESIGN.md. Use when creating or organizing a design system, a theme, color/spacing/type variables, dark mode or a brand swap, or when the user asks for "tokens", "design system", "theme variables", "standardize values".
---

# Tokens · Few values, each with a name

Sources: W3C Design Tokens Community Group (Format Module); Material Design 3 (design tokens: reference, system, component); Salesforce Lightning (where the term came from, Jina Anne); Nathan Curtis, "Naming Tokens in Design Systems" (EightShapes). A screen with a generated look has stray values. Tokens close the books: if a value has no name, it doesn't go in.

## The direction document

The project's art direction lives in **`DESIGN.md` at the root** of the repository. Its format is in `skills/art-direction/references/design-md.md`. Tokens are its technical translation: DESIGN.md says *why* and *which school*; tokens say *how much*. When DESIGN.md changes, update the tokens in the same commit.

## Three layers

| Layer | What it is | Example | Who uses it |
|---|---|---|---|
| **Primitive** (reference) | The raw value, no meaning | `--green-600: oklch(0.52 0.17 150)` · `--space-4: 16px` | Only the semantic layer |
| **Semantic** (system) | The value's role | `--color-action` · `--color-text-mute` · `--space-stack` | Components and screens |
| **Component** | A decision for one component | `--button-radius` · `--card-padding` | Only that component |

Rule: **a component never reads a primitive**. Switching theme (light/dark) or brand (another product) changes only the semantic layer.

## What becomes a token

| Group | Minimum tokens |
|---|---|
| Color | bg, surface, surface-raised, text, text-mute, border, action, on-action, focus, success, warning, danger |
| Type | display/text/mono families; 4–6 sizes with line height; weights |
| Spacing | 4, 8, 12, 16, 24, 32, 48, 64, 96 |
| Radius | 2–4 values (control, card, sheet, pill) |
| Shadow / elevation | 2–3 levels |
| Motion | touch/reveal/scene durations, enter and exit curves |
| Size | touch target (44), icon (16, 20, 24), max width |
| Layer | named z-index (dropdown, sticky, modal, toast) |

## Naming

Pattern: `category-role-variant-state`. English or another language, but only one.

- Good: `--color-text-mute`, `--color-action-hover`, `--radius-card`, `--dur-reveal`.
- Bad: `--gray2`, `--blue-button`, `--big-padding`, `--color-1`.
- Name the role, not the look: `--color-danger`, not `--color-red`. That way a theme can change the hue.

## CSS variables

```css
:root {
  /* primitives */
  --gray-50: oklch(0.98 0.003 260); --gray-900: oklch(0.21 0.012 260);
  --brand-600: oklch(0.52 0.17 150);
  /* semantics */
  --color-bg: var(--gray-50); --color-text: var(--gray-900);
  --color-action: var(--brand-600); --color-on-action: #fff;
  --space-1: 4px; --space-2: 8px; --space-3: 12px; --space-4: 16px; --space-6: 24px;
  --radius-control: 8px; --radius-card: 16px; --radius-pill: 999px;
  --fs-sm: 0.75rem; --fs-body: 1rem; --fs-title: 1.5rem; --fs-display: 2rem;
  --dur-touch: 120ms; --dur-reveal: 240ms; --ease-out: cubic-bezier(.2,0,0,1);
}
[data-theme="dark"] { --color-bg: oklch(0.17 0.01 260); --color-text: oklch(0.95 0.005 260); }
```

## Tailwind

Point the theme at the variables, not at values. In Tailwind v4, use `@theme`; in v3, `theme.extend` with `var(--...)`. Replace the default scale instead of only extending it, so values off the yardstick don't even exist.

```css
@theme {
  --color-action: var(--brand-600);
  --spacing: 4px;            /* p-4 = 16px */
  --radius-card: 16px;
}
```

## How to audit stray values

1. List the distinct values in the code with the counting script (`count-values.sh`; where to find it: `art-direction`, "The counting script"). It also counts arbitrary classes like `p-[13px]`.
2. Count per group. More than 4 text sizes, 8 spacings or 4 radii is already drift.
3. Swap each value for its nearest neighbor on the yardstick. Need a new value? Change the yardstick (the token) first, not the screen.
4. Show before and after with numbers (e.g. 11 → 4 sizes, 14 → 7 spacings).

## Checklist

1. Is there a DESIGN.md at the root, and do the tokens match it?
2. Three layers, and no component reads a primitive?
3. Names by role, not by look?
4. Do dark theme and brand swap change only the semantic layer?
5. No stray values in the code (hex, arbitrary px)?
6. Is motion a token too?
