---
name: school-swiss
description: Swiss School (International Typographic Style). Rigid grid, grotesque sans, flush-left alignment, hierarchy through size and weight only, color as a signal. Use when the product must look clear, serious, organized and timeless (transport, government, health, finance, information tools, architecture portfolios, signage) or when someone asks for something "clean", "informative", "grid-based", "no ornament", "Swiss", "Helvetica".
---

# Swiss · The information is the ornament

Zurich and Basel, 1950s (Josef Müller-Brockmann, Armin Hofmann, Emil Ruder). Core idea: the design disappears and the information stays. Mathematical grid, neutral type, nothing decorative. It never went out of fashion because it was never in fashion.

## When to use

- **Sectors:** mobility and transport, government, health, banking, insurance, data tools, museums, architecture, design studios, conferences.
- **Audience:** adult, professional, wants to find information fast. Works for every age because it puts reading first.
- **Image it projects:** reliable, precise, intelligent, timeless, "knows what it's doing".

## When not to use

- Products that need human warmth or emotion (wellness, kids, comfort cooking). It feels cold.
- Brands that sell fun or rebellion (Gen Z, games). It feels stiff.
- With little content, the grid sits empty and the page looks unfinished. Swiss needs information to organize.

## The rules in numbers

| Area | Rule |
|---|---|
| Grid | 12 columns on desktop, 4 on mobile. 24 px gutter (16 on mobile). Every element starts on a column. Outer margin ≥ 1 column on desktop. |
| Type | One family only, a grotesque: Inter, Helvetica Now, Neue Haas, Suisse Int'l, Geist, Aktiv Grotesk (free: Inter, Geist, Instrument Sans). 1.333 scale (16, 21, 28, 38, 50, 67). Weights: 400 and 700 (3 at most). Flush left, never justified, never centered in blocks. Line height 1.4 for body, 1.05 for display. Negative tracking (−2%) above 32 px. |
| Color | Black, white and one gray. One pure, saturated accent (Swiss red #E30613, or the brand color) only as a signal: action, alert, a single highlight. No gradients. |
| Shape | Radius 0 to 4 px. 1 px dividers. No shadow (or a near-invisible 1 px one). Thin-stroke geometric icons. |
| Imagery | Objective photography, cropped to the grid, black and white or natural color. No decorative illustration. Numbers and data can be the image. |
| Spacing | Asymmetric, deliberate white space. Multiples of 8. Landing sections ≥ 96 px. |
| Motion | Almost none. Enter with a short offset (8–16 px) + opacity, 150–250 ms, ease-out. Respect the project's motion ceiling (default: touch ≤ 160 ms, reveal ≤ 700 ms, scene ≤ 1.2 s). |

## By surface

- **Web app / dashboard:** tables without vertical rules, headers in small caps, tabular numbers aligned right. Plain-text sidebar. One accent per screen.
- **Mobile app:** large title aligned left (iOS large-title style), lists with 1 px dividers, 44 px tap targets. Tabs with labels, not icons alone.
- **Landing page:** huge headline (64–96 px) over 2–3 lines, flush left, breaking on the grid. A proof number up front ("12 min saved"). No illustrated hero.
- **Website:** typographic navigation, numbered index (01, 02, 03), lots of white, large cropped photography.

## Starter tokens

```css
:root {
  --font-sans: "Inter", "Helvetica Neue", Arial, sans-serif;
  --fs-1: 0.75rem; --fs-2: 1rem; --fs-3: 1.333rem; --fs-4: 1.777rem; --fs-5: 2.369rem; --fs-6: 4.209rem;
  --c-ink: #111111; --c-paper: #FFFFFF; --c-mute: #5C5C5C; --c-line: #E5E5E5;
  --c-signal: #E30613;
  --radius: 2px; --line: 1px solid var(--c-line);
  --space: 8px; --gutter: 24px;
}
```

## References to study

- Josef Müller-Brockmann, *Grid Systems in Graphic Design* (1981).
- New York subway signage (Unimark, Massimo Vignelli).
- Sites: Swiss Federal Railways (SBB), Experimental Jetset, Vercel (tech version), Stripe Press (editorial version).

## What makes it look generic

- Inter everywhere with no clear scale: that is a "SaaS template", not Swiss. Swiss is the **dramatic scale** (16 px text next to a 96 px headline).
- Centering everything. Swiss is asymmetric and flush left.
- Accent used as decoration. The accent is a signal.

## Pairs with / clashes with

- **Pairs with:** `school-utilitarian` (dense data), `school-editorial` (headlines), `school-refined-minimalism`, `school-bauhaus`, `school-dark-tech`, `school-trusted-corporate`.
- **Clashes with:** `school-pop-memphis`, `school-maximalist`, `school-clay-3d`.

## Checklist

1. Does every element sit on a grid column?
2. One type family, 3 weights at most, a scale with a dramatic jump?
3. Everything flush left, nothing justified?
4. Only black, white, gray and one accent, with the accent used only as a signal?
5. Radius ≤ 4 px, no blurred shadow?
6. Can you understand the page by reading the headings alone?
