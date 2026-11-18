---
name: trend-collage
description: Anti-polish trends (Muzli curation). Collage and mixed media (scrapbook) combine torn edges, layered paper and photos, monochrome cutouts, hand-drawn marks over digital and visible texture. Surreal blur uses soft focus, blended color, undefined shapes and distorted images, in a mood of imperfect dream. Use in creative portfolios, culture, editorial, fashion, music, art, fragrance and campaigns when someone asks for "collage", "scrapbook", "torn", "zine", "handmade", "less perfect", "dreamy", "blurred", "ethereal", "a dream", "surreal". Never in product UI, forms, data or purchase flows.
---

# Collage and blur · The hand and the dream show through

Two ways to refuse machine polish. Both are **showcase** work: hero, story opener, campaign. Reading text and actions always stay outside the effect, sharp and with contrast ≥ 4.5:1.

## 1. Collage and mixed media

- **What it is:** torn edges, layered paper and photos, black-and-white cutouts, hand-drawn marks over digital and visible texture.
- **Composition:** 3 to 5 layers, in the order paper background, cutout, photo, hand mark and type.
- **Cutout:** a truly irregular edge in PNG/WebP, never `border-radius`.
- **Photo:** cut out in black and white, plus one highlight color.
- **Rotation:** slight, from −4° to 4°, on the pieces. Never on reading text.
- **Texture:** grain or paper at 3 to 8% opacity.
- **By surface:**
  - Landing page and website: in the hero and the section dividers.
  - Editorial: in the story opener.
  - App: at most on the welcome screen of a cultural product.
- **Examples:** Grit Pictures (grit.pictures), Adrien Lamy, Loli Laboureau, KARO (handmade), Caren Ginsberg and Sinem Akdemir (Behance).
  - Sources: [10 graphic design trends 2025](https://muz.li/blog/10-graphic-design-trends-2025/) (#7), [top 100 portfolios 2025](https://muz.li/blog/top-100-most-creative-and-unique-portfolio-websites-of-2025/) and the [April 2026 roundup](https://muz.li/blog/the-best-creative-websites-of-the-month-april-2026/).

## 2. Surreal blur

- **What it is:** soft focus, blended color, shapes without outlines, distorted images. A dream that is imperfect on purpose.
- **Blur:** 8 to 40 px on the image, never on the text. The text stays sharp, over a scrim that guarantees 4.5:1.
- **Palette:** 2 to 3 close, blended tones.
- **Anchor:** one sharp layer (the product, the face or the headline) against the blurred rest. It is what gives the focus. Distortion also needs a sharp anchor point and low intensity.
- **By surface:**
  - Landing page and website: in the hero background, the transition between sections and the gallery.
  - Fashion e-commerce: in the campaign photo. The product photo stays sharp.
  - App: no.
- **Examples:** Studio of Vincent Lowe (vincent-lowe.info) and Compagnie de Provence (Thomas Lateur).
  - Sources: 10 graphic design trends 2025 (#5) and the April 2026 roundup.

## When to use / When not to

- **Use:** creative portfolios, culture, editorial, fashion, music, art, zines, fragrance, campaigns.
- **Don't use:** product UI, forms, checkout, data, health, information. Keep it out of every place where clarity matters.
- Pieces heavy on collage and blur call for a direction chosen as `school-maximalist` or `school-editorial`. The trend is an accent, not a base.

## Within the motion ceiling

Ceiling: touch ≤ 160 ms, reveal ≤ 700 ms, scene ≤ 1.2 s including delays, loops excluded.

- Pieces that enter one by one form a **scene**: the whole composition, with delays, within 1.2 s. Example: 5 pieces × 120 ms + 500 ms = 1.1 s.
- Focus coming in, from blurred to sharp, is a **reveal** (≤ 700 ms).
- The slight floating of the pieces and the "breathing" of the blur are a **loop**, turned off under `prefers-reduced-motion`.
- Heavy `backdrop-filter` costs GPU. Test it on a mid-range phone.

## Pitfalls

- Stock texture applied over a template layout. The collage has to be composed, not a "paper effect" on everything.
- "Screenshot over a blurred photo" is the Dribbble layout Muzli criticizes (`anti-generic`). The blur has to be the idea, not the default background.

## Checklist

1. Is the reading text outside the effect, sharp and at 4.5:1?
2. Do the pieces have truly irregular edges?
3. Is there one sharp layer that anchors the eye?
4. Does the whole entrance fit in 1.2 s, and do loops stop under `prefers-reduced-motion`?
5. Does it run smoothly on a mid-range phone?
