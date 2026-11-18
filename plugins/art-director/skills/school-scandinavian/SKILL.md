---
name: school-scandinavian
description: Scandinavian School (warm minimalism, hygge). Warm neutrals, wood, linen, soft rounded corners, humanist sans, welcoming functionality, natural light. Use when the product wants to look simple but warm, honest and human (home and decor, furniture, family, wellness, early education, friendly personal finance, routine apps, cafés, coworking spaces, preventive health) or when someone asks for something "cozy", "clean but warm", "IKEA/Muuto style", "Nordic", "Scandinavian", "hygge", "welcoming".
---

# Scandinavian · Simple and warm

Postwar Nordic design (Arne Jacobsen, Alvar Aalto, Hans Wegner) and the Danish idea of *hygge*. Today: IKEA, Muuto, HAY, Monzo, Spotify (Swedish roots). Core idea: functional minimalism, but with warmth: natural material, soft corners, light, nothing that intimidates.

## When to use

- **Sectors:** home and decor, furniture, family and parenting, education, personal finance, habit and routine apps, preventive health, modern cafés and bakeries, coworking, sustainability.
- **Audience:** 25–50, families, people who want simplicity without coldness.
- **Image it projects:** welcoming, honest, serene, trustworthy, human, "made for real life".

## When not to use

- Brands that need impact, speed or adrenaline (sport, games, crypto).
- High-end luxury: it feels too casual; use `school-quiet-luxury`.
- Dense technical products: warm neutrals reduce data contrast.

## The rules in numbers

| Area | Rule |
|---|---|
| Grid | 12 columns, max width 1200 px, lots of centered block alignment. 24 px gutter. Calm, symmetric composition with one break. |
| Type | Humanist or soft geometric sans: DM Sans, Nunito Sans, Figtree, Karla, Work Sans (free); paid: Circular, Brown, Gerstner. Optional soft serif for headings: Fraunces "soft", Recoleta. Weights 400 and 600. 1.25 scale. Body 16–17 px, line height 1.55. |
| Color | Warm backgrounds: linen #F3EEE7, sand #E8DFD3, oat #D9CBB8. Text #2B2724. Natural, desaturated accents: moss green #6B7F5E, terracotta #C46A4A, fjord blue #4F6D7A, mustard #D4A24C. One main accent per screen. |
| Shape | Radius 12–20 px on cards, 10 px on controls, pill on chips. Soft, low shadow (0 2px 8px rgba(43,39,36,.06)). Icons with a 1.5–2 stroke and round caps. |
| Imagery | Natural-light photography, interiors, wood, plants, real people at home. Simple illustration with soft shapes and light texture. |
| Spacing | Generous and regular. Card padding 24–32. Sections ≥ 96 px. Multiples of 8. |
| Motion | Soft and welcoming: ease-out, 180–300 ms, enter with fade + 8 px. A slight scale (0.98 → 1) on tap. Respect the project's motion ceiling (default: touch ≤ 160 ms, reveal ≤ 700 ms, scene ≤ 1.2 s). |

## By surface

- **Web app / dashboard:** linen background with warm white cards (#FFFDF9), charts in natural accents, gentle language in empty states.
- **Mobile app:** large rounded cards, a small illustration in empty and success states, labeled tabs, sheets with radius 24.
- **Landing page:** large ambient photo in natural light, the title as a calm sentence ("Your home, lighter."), benefits in 3 soft cards, a testimonial with a real photo.
- **Website:** history and values, sustainability, team in natural photos, catalog in a spaced grid.

## Starter tokens

```css
:root {
  --font-sans: "DM Sans", "Figtree", system-ui, sans-serif;
  --font-display: "Fraunces", "DM Sans", serif;
  --fs-1: 0.8125rem; --fs-2: 1.0625rem; --fs-3: 1.25rem; --fs-4: 1.75rem; --fs-5: 2.5rem; --fs-6: 3.5rem;
  --c-bg: #F3EEE7; --c-surface: #FFFDF9; --c-sand: #E8DFD3; --c-ink: #2B2724; --c-mute: #6B625A;
  --c-moss: #6B7F5E; --c-terracotta: #C46A4A; --c-fjord: #4F6D7A;
  --radius-control: 10px; --radius-card: 18px; --radius-pill: 9999px;
  --shadow-1: 0 2px 8px rgba(43,39,36,.06);
  --dur: 220ms; --ease: cubic-bezier(.2,.7,.3,1);
}
```

## References to study

- ikea.com, muuto.com, hay.dk, menu (audo.com), Monzo (app), Kinfolk (Nordic phase).
- The book *The Little Book of Hygge* (Meik Wiking).
- Alvar Aalto and Arne Jacobsen (furniture).

## What makes it look generic

- Beige everywhere with no contrast: washed out and illegible.
- "Corporate" illustration of long-armed people: it breaks the real warmth.
- A different radius on every component.

## Pairs with / clashes with

- **Pairs with:** `school-organic`, `school-refined-minimalism`, `school-japanese`, `school-clay-3d`, `school-handcrafted`.
- **Clashes with:** `school-dark-tech`, `school-neobrutalism`, `school-y2k-retrofuture`.

## Checklist

1. Warm background (not pure white, not cold gray)?
2. Natural, desaturated accents, one main accent per screen?
3. Soft, consistent radius (10 control, 18 card, pill)?
4. Natural-light photos with real people or homes?
5. Does text on sand and linen pass 4.5:1?
6. Gentle, human microcopy?
