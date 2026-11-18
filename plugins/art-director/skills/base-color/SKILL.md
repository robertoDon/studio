---
name: base-color
description: Color system for interfaces: OKLCH palettes, primitives → semantics, one color = one meaning, the 60-30-10 ratio, real dark mode, and reading color by sector with care. Use when building or reviewing a palette, a dark theme, a brand color, state colors or charts, or when the user asks "which colors should I use", "palette", "dark mode", "the colors don't match".
---

# Color · Each color says one thing

Sources: *Refactoring UI* (Wathan and Schoger); Material Design 3 (color roles, tonal palettes); Apple HIG (Color, Dark Mode); CSS Color Module Level 4 (OKLCH); WCAG 2.2 for contrast (see `base-accessibility`). The school sets the mood. This skill makes sure the color works.

## One color = one meaning

Before picking a hue, write down what each color **means**. If one color does two jobs, one of them is wrong.

| Role | Use | Rule |
|---|---|---|
| **Brand / action** | Primary button, link, focus | One per screen, only on actions. Not decoration. |
| **Neutrals** | Background, surface, text, border | 80–90% of the screen. 8–11 steps of one ramp. |
| **Success** | Done, paid, positive | Green. State only. |
| **Warning** | Pending, deadline close | Amber. Use sparingly. |
| **Error / danger** | Error, overdue, delete | Red. Always with text and an icon. |
| **Info** | Neutral hint | Optional. Many products skip it. |

## The 60-30-10 ratio

- 60% dominant neutral (background), 30% secondary neutral or support color (surfaces, sections), 10% accent (actions and highlights).
- In a product (app), the accent usually sits at **5% or less**. If everything is colorful, nothing stands out (Von Restorff).

## Build in OKLCH

OKLCH (L = perceived lightness, C = chroma, H = hue) keeps perceived lightness stable when you change the hue. That makes ramps even and contrast predictable.

```css
:root {
  /* Neutral ramp: same H, low chroma, L from 0.98 to 0.15 */
  --gray-50:  oklch(0.98 0.003 260);
  --gray-100: oklch(0.95 0.004 260);
  --gray-300: oklch(0.85 0.006 260);
  --gray-500: oklch(0.62 0.010 260);
  --gray-700: oklch(0.42 0.012 260);
  --gray-900: oklch(0.21 0.012 260);
  /* Brand: same L as the ramp steps, only H and C change */
  --brand-500: oklch(0.60 0.18 150);
  --brand-600: oklch(0.52 0.17 150);
}
```

- "Living" neutrals: give them 0.003–0.015 chroma pulled toward the brand hue (cool gray for tech, warm for food and wellness). Pure gray (#808080) looks dead.
- 10–11 steps per color ramp (50 to 950), like Tailwind and the Material tonal palette.
- Always generate the contrast pairs: check every text on every background (≥ 4.5:1).

## Primitives → semantics

A component never uses `--green-600`. It uses `--color-success`. That way a theme or brand swap changes one layer only (see `base-tokens`).

```css
:root {
  --bg: var(--gray-50);  --surface: #fff;  --text: var(--gray-900);
  --text-mute: var(--gray-700); --border: var(--gray-300);
  --action: var(--brand-600); --on-action: #fff;
  --danger: oklch(0.55 0.20 25); --success: oklch(0.58 0.15 150);
}
```

## Real dark mode

It is not an inversion. It is a second palette with the same roles.

- The background is not #000: use L 0.14–0.20 (#121212 to #1C1C1E). Pure black only on OLED when the brand calls for it.
- **Elevation = lighter**, not shadow: each surface level goes up ~0.03–0.05 in L (Material 3, Apple HIG).
- Desaturate accent colors (chroma −20 to −30%) and raise their lightness, or they vibrate on dark.
- White text at 87–92% opacity, not 100%. Secondary text still at 4.5:1.
- Test both themes with the same care. `prefers-color-scheme` sets the default; the user can choose.

## Color by sector (with care)

Cultural associations exist, but they shift by country and category. Use them as a starting point, not a rule, and dodge the cliché when you want to stand out.

| Sector | Common tendency | Cliché to avoid or subvert |
|---|---|---|
| Finance, insurance | Blue, green, dark neutrals | Generic big-bank blue |
| Health | Light blue, aqua, white | Cold hospital look |
| Food | Red, orange, yellow, earth tones | Fast-food red on everything |
| Wellness | Soft greens, sand, terracotta | Low-contrast beige |
| Luxury | Black, white, cream, one metallic | Gold gradients |
| Tech / dev | Dark neutrals, one electric accent | AI purple gradient |
| Kids | Saturated primaries | Rainbow with no hierarchy |
| Sport | High contrast, team colors, neon | |

In Brazil, green and yellow together read as the national football team or the government.

## Charts

- Categories: up to 6–8 colors that stay distinct under color blindness too (Okabe-Ito-style palettes). Label each series directly.
- Sequential: one color, light to dark. Diverging: two colors with a neutral in the middle.
- Highlight one series and leave the rest gray.

## Checklist

1. Does each color have a written meaning, and none does two jobs?
2. Accent at ≤ 10% of the screen and only on actions?
3. Do components use semantic tokens, not primitives?
4. Even ramps (OKLCH), neutrals with a slight hue?
5. Do all text pairs pass 4.5:1 in both themes?
6. Dark mode with elevation by lightness and desaturated accents?
7. State never by color alone?
