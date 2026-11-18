---
name: school-bento
description: Bento grid. A modular grid of cards in mixed sizes (1×1, 2×1, 2×2), one idea per card, large radius, the showcase rhythm of an Apple keynote. Use to present several features, numbers or facets of a product in a single fold (SaaS landing, product page, profile, portfolio, summary dashboard, "wrapped"/year-in-review, link-in-bio page), or when the user asks for "bento", "card grid", "keynote style", "show the features", "overview", "a nice summary".
---

# Bento · One box, one idea

The name comes from the Japanese lunch box with compartments. In interfaces it spread through Apple's keynote slides (since the iPhone 14, 2022) and the iOS 14 widgets (2020), and became standard on SaaS landings from 2023 (bentogrids.com collects examples). Core idea: many messages on one screen, each in its own box, with sizes that show the hierarchy.

## When to use

- **Sectors:** SaaS and apps (feature landings), hardware, profiles and portfolios, summary dashboards, year-in-review recaps (Spotify Wrapped), event pages, link-in-bio.
- **Audience:** broad; works from technical users to consumers.
- **Image it projects:** organized, modern, rich in content without clutter, "there's a lot here and it's all in place".

## When not to use

- Sequential flows (checkout, onboarding): bento is for looking, not for following steps.
- A single message: a one-box bento is just a card.
- Content with no hierarchy: if everything is 1×1, it becomes an ordinary card grid.

## The rules in numbers

| Area | Rule |
|---|---|
| Grid | CSS Grid with 4 or 6 columns on desktop, 2 on tablet, 1 on mobile. Fixed gap of 12–16 px (the same for rows and columns). Sizes: 1×1, 2×1, 1×2, 2×2. One 2×2 hero card per block; 5–9 cards per bento. The grid closes as a rectangle, with no holes. |
| Type | One sans: Inter, Geist, Manrope, Plus Jakarta Sans (free). Each card: a small label (12–13 px), a title (20–28 px) and at most one sentence. Headline number (48–96 px) on data cards. |
| Color | Neutral background (#F5F5F7 light or #0B0B0F dark), cards on a surface (#FFF or #161618). At most 1–2 full-color cards per bento (brand accent) to create rhythm. |
| Shape | Card radius 20–32 px (consistent), concentric inner radius. 1 px border or 1 px shadow. Content can bleed to the card edge (image, chart). |
| Imagery | Each card with its own visual: cropped screenshot, number, large icon, mini chart, photo. Variety in the type of visual, consistency in style. |
| Spacing | Inner padding 24–32 px. Text anchored top-left or bottom-left, always the same corner across the whole bento. |
| Motion | Cards enter in a cascade (40–60 ms stagger, total ≤ 700 ms); hover lifts 2 px or animates the inner visual in ≤ 160 ms. Respect the project's motion ceiling (default: touch ≤ 160 ms, reveal ≤ 700 ms, scene ≤ 1.2 s). |

## By surface

- **Web app / dashboard:** an overview screen with a 2×1 KPI, a 2×2 chart, a 1×2 list, 1×1 shortcuts. Each card clicks through to the full screen. Don't use bento on working screens.
- **Mobile app:** 2-column grid with 2×1 and 1×1 cards, like iOS widgets. In 1 column, keep the heights varied.
- **Landing page:** an "everything you get" section: a hero card with the product, smaller feature cards, a number card, a testimonial card.
- **Company website / portfolio:** a profile (photo, bio, map, links, featured project) in a single bento.

## Starter tokens

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

## References to study

- Apple: keynote slides and product pages (iPhone, Apple Watch).
- bentogrids.com (curation), linear.app (feature sections), Spotify Wrapped.
- iOS 14+ widgets as the origin of the format on mobile.

## What makes it look generic

- Every card the same size: it loses the hierarchy that justifies the bento.
- Each card in a different visual style (one 3D, one flat, one photo): it looks like a collage.
- Long text inside the cards. Bento is one idea per box.

## Pairs with / clashes with

- **Pairs with:** `school-refined-minimalism`, `school-dark-tech`, `school-spatial-glass`, `school-utilitarian`, `school-clay-3d`, `school-material`, `school-pop-memphis`, `school-sport`.
- **Clashes with:** `school-editorial` (reading flow), `school-quiet-luxury` (density), `school-japanese`.

## Checklist

1. Is there a 2×2 hero card and a mix of sizes?
2. Does the grid close as a rectangle, with no holes and a single gap?
3. Same radius and padding on every card, concentric inner radius?
4. Does each card have one idea, one title and at most one sentence?
5. At most 1–2 full-color cards?
6. On mobile, does it become 2 or 1 columns without losing the reading order?
