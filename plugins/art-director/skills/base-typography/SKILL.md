---
name: base-typography
description: Interface typography: modular scale, font pairs by personality, a 45–75 character measure, line height, tabular numbers, and font loading without layout shift. Use when choosing a font, building a type scale, or reviewing hierarchy or legibility, or when the user asks "which font should I use", "font pairing", "type scale", "this text is hard to read".
---

# Typography · 95% of an interface is text

Sources: Robert Bringhurst, *The Elements of Typographic Style*; Adam Wathan and Steve Schoger, *Refactoring UI*; Material Design 3 (type scale); Apple HIG (Typography); Butterick, *Practical Typography*. The school picks the personality. This skill makes sure any choice reads well.

## Modular scale

Pick a ratio and generate every size from the body (16 px). No size off the scale.

| Ratio | Name | Use | Example from 16 |
|---|---|---|---|
| 1.125 | Major second | Dense app, dashboard | 14 · 16 · 18 · 20 · 23 |
| 1.200 | Minor third | General app | 13 · 16 · 19 · 23 · 28 · 33 |
| 1.250 | Major third | App + marketing | 13 · 16 · 20 · 25 · 31 · 39 |
| 1.333 | Perfect fourth | Website, landing | 12 · 16 · 21 · 28 · 38 · 50 |
| 1.618 | Golden ratio | Editorial, dramatic hero | 16 · 26 · 42 · 68 |

Rule of thumb: **at most 4 sizes on a screen** (small, body, title, display). Hierarchy by **size and weight**, then by color; never by color alone. Round to whole numbers or multiples of 2.

## Line height and tracking

| Size | Line height | Tracking |
|---|---|---|
| ≤ 14 px | 1.5–1.6 | 0 to +1% |
| Body 16–18 px | 1.5 (reading), 1.4 (UI) | 0 |
| Title 24–40 px | 1.2–1.3 | −1% |
| Display ≥ 48 px | 1.0–1.1 | −2% to −3% |
| Small caps / all caps | 1.2 | +5% to +10% |

Line height drops as size goes up. All caps always get open tracking.

## Measure (line length)

- Running text: **45–75 characters per line**, ideal 66 (Bringhurst). In CSS: `max-width: 65ch`.
- UI and cards: up to 40–50 characters.
- On mobile, 35–45 characters is normal; don't shrink the font to fit more.

## Font pairs by personality

One family covers most interfaces. Two at most: one display, one text. Contrast in structure (serif × sans serif), not near-twins.

| Personality | Display | Text | Free (Google Fonts) |
|---|---|---|---|
| Neutral, precise | Inter Display / Neue Haas | Inter | Inter, Geist |
| Technical, dev | Geist / Söhne | Geist Mono for code | Geist, JetBrains Mono, IBM Plex |
| Editorial, literate | GT Sectra / Tiempos | Söhne / Inter | Fraunces + Inter, Newsreader + Inter |
| Chic, luxury | Canela / Didot | Neue Montreal | Cormorant Garamond + Manrope, Bodoni Moda + Jost |
| Warm, human | Recoleta / GT Walsheim | Inter | DM Serif Display + DM Sans, Nunito |
| Bold, sport | Druk / Monument Extended | Inter Tight | Anton + Inter, Bebas Neue + Barlow |
| Playful | Clash Display / Cabinet Grotesk | Satoshi | Bricolage Grotesque + Outfit |
| Trusted, institutional | Source Serif | Source Sans | IBM Plex Serif + Plex Sans |

## Numbers

- In tables, prices, counters, times: `font-variant-numeric: tabular-nums;` (every digit the same width).
- Currency and percentages right-aligned.
- Headline number: big value, small unit (the currency symbol and cents at body size, in gray).
- Use the right locale, e.g. `Intl.NumberFormat('pt-BR')` → R$ 1.234,56.

## Font loading

- At most 2 families and 4 files (weights/styles). Prefer a variable font.
- `font-display: swap` and a fallback with adjusted metrics (`size-adjust`, `ascent-override`) so the layout doesn't jump (CLS).
- `<link rel="preload">` only for the text font above the fold. WOFF2 format. Latin subset.
- A system stack is a legitimate, instant choice: `system-ui, -apple-system, "Segoe UI", Roboto, sans-serif`.

## What looks amateur

- 6 similar sizes (13, 14, 15, 16, 17, 18) on the same screen.
- Centered text in a block longer than 3 lines.
- Bold on everything; fake italics (synthesized by the browser).
- All caps on a long sentence. Thin display weights (100–200) at small sizes.
- Straight quotes ("") and hyphens in place of em dashes (—) in marketing copy.

## Checklist

1. Do all sizes come from one scale, with at most 4 per screen?
2. Body ≥ 16 px, with line height 1.4–1.6?
3. Reading lines between 45 and 75 characters?
4. At most 2 families, with structural contrast?
5. Tabular numbers wherever values are compared?
6. Does the font load without shifting the layout?
7. Does the hierarchy work in grayscale?
