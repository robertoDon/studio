---
name: school-maximalist
description: Maximalist school. More is more: layers, collage, many colors and type families, patterns, textures, expressive type and surprising composition, with a hierarchy hidden under the chaos. Use when the product sells culture, expression and experience (festivals, music, art, museums, bold fashion, independent publishers, bars and nightclubs, creative agencies, campaigns), or when the user asks for something "bold", "busy", "vibrant", "artsy", "experimental", "bold editorial", "collage", "out of the box", "eye-catching".
---

# Maximalist · Excess with intent

It answers Mies van der Rohe's "less is more" with Robert Venturi's "less is a bore" (1966). It runs through postmodernism, 1960s psychedelia and David Carson at *Ray Gun* (1990s), and arrives at today's festival identities and fashion campaigns. Core idea: the experience is the content. But good maximalism has a system underneath: people can still find the ticket.

## When to use

- **Sectors:** festivals and cultural events, music, museums and galleries, bold fashion, independent publishers, culture magazines, bars and nightclubs, creative agencies and studios, campaigns and launches.
- **Audience:** culture-goers, creatives, young adults looking for experience and identity.
- **Image it projects:** bold, artistic, alive, memorable, "not for everyone".

## When not to use

- Work tools, finance, health, government: it gets in the way of the task.
- Critical flows (checkout, sign-up, payment), even in a maximalist brand: simplify there.
- Without strong art direction and your own assets: it becomes a generic mess.

## The rules in numbers

| Area | Rule |
|---|---|
| Grid | It exists and is rigid underneath (12 columns), but broken on purpose: overlap, rotation, bleed. Rule: 1 clear reading axis per screen (the path to the CTA never breaks). |
| Type | 2–3 families with clear roles: an expressive display face (PP Editorial, Ogg, Monument Extended; free: Rubik Mono One, Fraunces 900 italic, Bowlby One, DM Serif Display, Instrument Serif), a supporting face (mono or grotesque) and a neutral reading face (Inter, Work Sans). Extreme scale (14 to 200 px). Mixing caps, italics and outline is allowed in display, never in body. |
| Color | A wide but closed palette: 5–7 colors defined in tokens, with 1 color reserved for action. Strong complementary contrasts (pink and green, orange and blue). Reading text always on a solid color area at 4.5:1. |
| Shape | A deliberate mix: cutouts, stickers, tape, organic and geometric shapes. Varied radii allowed, but each component type has one (buttons always the same). |
| Imagery | Collage of cut-out photos, paper and photocopy texture, patterns, authored illustration, scans. Grain, halftone, duotone. Everything with usage rights. |
| Spacing | Dense in layers, but with 1 breathing space per section where the reading text sits. Sections of varying height. |
| Motion | Expressive within the ceiling: marquee, light parallax and a custom cursor are loops or continuous (exempt from the ceiling, pausable); entrances with rotation and scale ≤ 700 ms; opening scene ≤ 1.2 s, with a skip option. Respect the project's motion ceiling (touch ≤ 160 ms) and `prefers-reduced-motion` (it cuts parallax and marquee). |

## By surface

- **Web app / dashboard:** almost never. If the brand demands it, maximalism only in the header, empty states and shareables; the work area stays neutral.
- **Mobile app:** a festival or museum app: maximalist cover and line-up, but a clean, fast schedule, map and ticket. Ticket QR on a white background.
- **Landing page:** its habitat. A collage hero, a giant overlapping headline, a marquee of acts, sections in different colors. A fixed buy CTA, always legible.
- **Company website:** studio portfolio, museum, magazine: experimental navigation allowed as long as an accessible traditional menu exists.

## Starter tokens

```css
:root {
  --font-display: "Instrument Serif", "DM Serif Display", serif;
  --font-loud: "Rubik Mono One", "Bowlby One", sans-serif;
  --font-sans: "Work Sans", "Inter", system-ui, sans-serif;
  --fs-1: 0.875rem; --fs-2: 1rem; --fs-3: 1.5rem; --fs-4: 3rem; --fs-5: 6rem; --fs-6: 12.5rem;
  --c-ink: #141414; --c-paper: #F5F0E6;
  --c-hot: #FF3D7F; --c-leaf: #1DB954; --c-sun: #FFB800; --c-sea: #2448FF; --c-plum: #5B2A86;
  --c-action: var(--c-sun);
  --grain: url("data:image/svg+xml,..."); /* your own texture, opacity ≤ 10% */
}
```

## References to study

- Robert Venturi, *Complexity and Contradiction in Architecture* (1966); David Carson, *Ray Gun* and *The End of Print* (1995).
- Paula Scher (Pentagram) for New York's Public Theater; Stefan Sagmeister.
- Festival identities such as Primavera Sound and Sónar; Gucci's editorial work in the Alessandro Michele era (2015–2022).

## What makes it look generic

- Chaos without a system: each section with a different rule, and the buy button disappearing.
- 7 fonts with no roles. Use 3 at most, each with a job.
- Reading text over collage or pattern.
- Animation on everything, with no way to reduce it.

## Pairs with / clashes with

- **Pairs with:** `school-pop-memphis`, `school-y2k-retrofuture`, `school-neobrutalism`, `school-editorial` (bold version).
- **Clashes with:** `school-swiss`, `school-japanese`, `school-quiet-luxury`, `school-trusted-corporate`.

## Checklist

1. Is there a grid underneath and a clear reading path to the CTA?
2. At most 3 type families, each with a role?
3. A palette closed in tokens, with 1 color reserved for action?
4. Is all reading text on solid color at 4.5:1?
5. Are critical flows (purchase, ticket, sign-up) clean?
6. Does `prefers-reduced-motion` turn off parallax and marquee, and can the opening scene be skipped?
