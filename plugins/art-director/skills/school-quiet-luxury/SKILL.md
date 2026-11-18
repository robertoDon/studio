---
name: school-quiet-luxury
description: Quiet Luxury. Thin serifs or wide sans in spaced capitals, lots of empty space, black, off-white and one restrained metal, product photography treated like jewelry, slow rhythm. Use when the product wants to look chic, exclusive, expensive and discreet (fashion, jewelry, hospitality, high-end real estate, wine, fragrance, premium aesthetic clinics, interior architecture, concierge) or when someone asks for something "chic", "elegant", "luxurious", "truly premium", "sophisticated", "high-end", "boutique".
---

# Quiet Luxury · True status never shouts

It comes from the fashion houses (Phoebe Philo's Celine, The Row, Loro Piana, Hermès) and high-end hospitality (Aman). On the web, the standard was set by fashion and jewelry sites with lots of emptiness and restrained type. Core idea: luxury lives in restraint. Few elements, lots of space, flawless material, no discounts or urgency.

## When to use

- **Sectors:** fashion, jewelry, watchmaking, hotels and resorts, high-end real estate, wine and spirits, fragrance, premium aesthetics, galleries, interiors, concierge and family-office services.
- **Audience:** high income, 30–65, who does not want to be persuaded but to be recognized.
- **Image it projects:** chic, exclusive, timeless, calm, "not for everyone".

## When not to use

- Volume retail, promotions, low prices: the emptiness looks like missing product.
- Daily work tools: the slowness and thin type wear people out.
- Without top-quality photography: luxury with poor photos looks fake.

## The rules in numbers

| Area | Rule |
|---|---|
| Grid | 12 columns, many left empty. Content takes 4–6 columns, the rest is breathing room. Product centered or in a deliberate asymmetric composition. |
| Type | Thin, high-contrast serif: Cormorant Garamond, Bodoni Moda, Playfair Display 400, Italiana, Marcellus (free); paid: Didot, Canela, Ogg, Saol. Or a wide, light sans: Montserrat 300, Jost 300, Syne (free), Neue Haas Unica. Labels in capitals with +12% to +20% tracking, 11–13 px. Display at 300–400, never 700. Body 15–16 px, line height 1.6. |
| Color | Off-white #F7F4EF, ivory #EFE9E1, soft black #111110, taupe #8C8279. Metal only in fine detail: restrained gold #B39762 or champagne #C9B79C (never a "gold" gradient). At most 1 brand color, and a dark one (bottle green #1E2B24, burgundy #4A1C24). |
| Shape | Radius 0. Hairlines of 0.5–1 px. No shadow. Buttons as underlined text or a rectangle with a thin outline. Ultra-thin icons (stroke 1). |
| Imagery | Editorial photography in natural or studio light, product as an art object, lots of air around it. Slow looping video in the hero. Never stock, never the white-background cutout of cheap e-commerce. |
| Spacing | Exaggerated. Sections ≥ 160 px vertical, side margins ≥ 8% of the width. One element per fold. |
| Motion | Slow and rare: 400–700 ms fade, ease-in-out; image zoom from 1.00 → 1.03 in a scene of up to 1.2 s. No bounce. Respect the project's motion ceiling (default: touch ≤ 160 ms, reveal ≤ 700 ms, scene ≤ 1.2 s). |

## By surface

- **Web app / dashboard:** a clear client area (orders, bookings), thin type only in titles, body in a readable sans. Tables with fine rules, no loud status colors.
- **Mobile app:** minimal navigation (text menu), full-screen product, information in a sheet that slides up. Labels in spaced capitals.
- **Landing page:** hero with a full-bleed photo or video and only the logo + one line. Collections in a spaced grid, discreet price or "price on request". Text CTA ("Discover", "Book a visit").
- **Website:** the house's story in chapters, photos of the atelier or space, discreet map and contact, a concierge sign-off.

## Starter tokens

```css
:root {
  --font-display: "Cormorant Garamond", "Bodoni Moda", Didot, serif;
  --font-sans: "Jost", "Montserrat", system-ui, sans-serif;
  --fs-label: 0.75rem; --fs-body: 0.9375rem; --fs-h2: 2rem; --fs-h1: 3.5rem; --fs-display: 5.5rem;
  --tracking-label: 0.16em; --fw-display: 400; --fw-body: 300;
  --c-bg: #F7F4EF; --c-bg-2: #EFE9E1; --c-ink: #111110; --c-mute: #6E665F; --c-gold: #B39762;
  --rule: 1px solid rgba(17,17,16,.15); --radius: 0;
  --ease: cubic-bezier(.45,0,.25,1); --dur-reveal: 600ms;
}
```

## References to study

- therow.com, celine.com, loropiana.com, hermes.com, aman.com, bottegaveneta.com.
- Aesop (aesop.com) as a bridge between luxury and handcrafted.
- Kenya Hara and emptiness as a value (see `school-japanese`).

## What makes it look generic

- Gradient gold, shine, ornament: it reads as "shopping-mall luxury", not luxury.
- Urgency and discounts ("Only a few left!", countdown timers): they destroy the image.
- Thin light-gray text on off-white below 4.5:1. Chic is not illegible.

## Pairs with / clashes with

- **Pairs with:** `school-editorial`, `school-japanese`, `school-refined-minimalism`.
- **Clashes with:** `school-neobrutalism`, `school-pop-memphis`, `school-clay-3d`, `school-sport`.

## Checklist

1. One element per fold, with more empty space than occupied space?
2. Display at weight 300–400, labels in spaced capitals?
3. Warm neutral palette, with metal only in fine detail?
4. No urgency, discounts or exclamation marks?
5. High-quality editorial photography for every product?
6. Even when thin, does all text pass 4.5:1?
