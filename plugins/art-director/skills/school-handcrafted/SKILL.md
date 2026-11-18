---
name: school-handcrafted
description: Handcrafted / Vintage school. Made by hand: labels, letterpress, rubber stamps, paper and kraft, serifs and scripts with history, engraved illustration, seals and founding dates, ink colors. Use when the product sells origin, craft and flavor (food, restaurant, café, bakery, patisserie, brewery, wine, craft spirits, deli, barbershop, woodworking, handmade soap, local producer), or when the user asks for something "handcrafted", "rustic", "vintage", "retro", "handmade", "with history", "cozy", "neighborhood", "traditional".
---

# Handcrafted · There's a person behind it

From 19th-century labels and posters printed with movable type, hand-painted signs, general-store packaging and the craft wave of the 2010s (craft breweries, third-wave coffee, barbershops). Core idea: show the maker's hand. Controlled imperfection, origin and date, the smell of paper.

## When to use

- **Sectors:** restaurant, café, bakery and patisserie, brewery and distillery, winery, deli and grocery, cheesemaker, farm producer, barbershop, woodworking, artisan cosmetics, independent bookshop, recipes and cooking.
- **Audience:** adults who value origin, flavor and tradition; local customers; foodies.
- **Image it projects:** authentic, welcoming, traditional, honest, "made with time".

## When not to use

- Technology, fintech, SaaS: it looks like a costume (unless the product serves these trades, and even then only on the showcase).
- Heavy-use, data-rich apps (restaurant management, POS): use handcrafted on the brand and the public menu; the back office stays clean.
- A new brand pretending to be "since 1890": fake is worse than generic.

## The rules in numbers

| Area | Rule |
|---|---|
| Grid | Label composition: central symmetry and frames in the hero and the seals; the rest on a 12-column grid with a text column up to 640 px. Simple ornamental dividers. |
| Type | A serif with character for display: Playfair Display, Abril Fatface, Rye, Alfa Slab One, DM Serif Display, Bitter (free); slab and Victorian serifs for labels; script for a single word only (Pacifico, Yellowtail, Sacramento, free). Body in a reading serif (Lora, Source Serif 4, Crimson Pro). Small caps with +8% tracking for labels. Maximum 3 families. |
| Color | Ink colors on paper: cream #F4ECDD, kraft #C9A27E, black ink #1E1B18, stamp red #A63A2B, bottle green #2F4A3A, mustard #C8962E. One accent for action (red or green). Text ≥ 4.5:1. |
| Shape | Circular seals, ribbons, double frames, 1–2 px ink borders. Radius 0–6 px. No shadows; depth comes from texture and paper layers. |
| Imagery | Photos of the product and of hands at work, warm natural light, a wooden table, ingredients. Engraved illustration (linocut, pen and ink). Subtle paper texture and broken ink (≤ 10%). |
| Spacing | Comfortable: 96–120 px sections, menus with generous line height. Ornaments always with air around them. |
| Motion | Discreet: a stamp that "strikes" (scale 1.1 → 1) in ≤ 200 ms; a 300–500 ms fade on photos. Tap ≤ 160 ms. Respect the project's motion ceiling (reveal ≤ 700 ms, scene ≤ 1.2 s) and `prefers-reduced-motion`. |

## By surface

- **Web app / dashboard:** order, stock or booking management stays clean and neutral (cream and black ink, Lora only in titles). Handcrafted in the logo and the menu preview.
- **Mobile app:** delivery or recipes: a menu with large photos, names in serif, tabular prices aligned right, a clear add button. Recipes in numbered steps, time and yield as seals.
- **Landing page / online menu:** a hero with a product photo and a "since [real year]" seal, a short founder story, a typographic menu, map and opening hours clearly visible, an order or book button.
- **Company website:** the story, the process (from bean to cup), partner producers, the physical shop with real photos.

## Starter tokens

```css
:root {
  --font-display: "DM Serif Display", "Playfair Display", Georgia, serif;
  --font-slab: "Alfa Slab One", "Bitter", serif;
  --font-script: "Yellowtail", cursive;
  --font-body: "Lora", "Source Serif 4", Georgia, serif;
  --fs-1: 0.8125rem; --fs-2: 1.0625rem; --fs-3: 1.375rem; --fs-4: 1.875rem; --fs-5: 2.75rem; --fs-6: 4.5rem;
  --c-paper: #F4ECDD; --c-kraft: #C9A27E; --c-ink: #1E1B18; --c-mute: #5E554B;
  --c-stamp: #A63A2B; --c-bottle: #2F4A3A; --c-mustard: #C8962E;
  --c-action: var(--c-stamp);
  --rule: 1.5px solid var(--c-ink);
  --radius: 3px;
}
.label { font: 600 var(--fs-1)/1 var(--font-body); letter-spacing: .08em; text-transform: uppercase; }
```

## References to study

- 19th-century movable-type labels and posters; Hatch Show Print (Nashville, since 1879).
- Louise Fili (packaging and restaurants, *Elegantissima*), Jessica Hische (lettering), Dana Tanamachi (chalk lettering).
- Brands: Blue Bottle Coffee (restrained version), Brooklyn Brewery (Milton Glaser), Tartine Bakery.

## What makes it look generic

- Script for a paragraph or a whole menu: illegible.
- A stock "hipster" kit (mustache, arrow, diamond) with no link to the business.
- Paper texture so strong that the text disappears.
- "Since 1890" on a 2024 brand.

## Pairs with / clashes with

- **Pairs with:** `school-editorial` (serif and rhythm), `school-organic` (earthy, natural photos), `school-scandinavian` (wood, warmth), `school-maximalist` (poster), `school-japanese`.
- **Clashes with:** `school-dark-tech`, `school-y2k-retrofuture`, `school-spatial-glass`, `school-utilitarian`.

## Checklist

1. Script on 1–2 words only, maximum 3 families?
2. Text ≥ 4.5:1 on paper, texture ≤ 10%?
3. Real photos of the product and of people making it?
4. Is every date and origin true?
5. Are hours, address, prices and the order or book button obvious?
6. Did the back office stay clean, with the handcrafted look kept to the showcase?
