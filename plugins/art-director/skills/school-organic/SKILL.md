---
name: school-organic
description: Organic / Biophilic school. Earthy palette, organic rounded shapes, grain and natural texture, soft serifs, slow rhythm and lots of breathing room. Use when the product is about wellness, mental health, sleep, meditation, yoga, natural nutrition, natural cosmetics, sustainability, agriculture, nature tourism or motherhood, or when the user asks for something "calm", "natural", "warm", "organic", "earthy", "zen", "wellness", "sustainable", "human".
---

# Organic · Breathe, there's time

From biophilic design (the idea that people feel better close to nature), the Arts & Crafts movement and the wellness wave of the 2010s (Aesop, Headspace, Calm, Oatly in its serious mode). Core idea: the interface lowers the heart rate. Nothing shouts; everything has the texture of something real.

## When to use

- **Sectors:** mental health, meditation, sleep, therapy, yoga and pilates, nutrition, natural cosmetics, compounding pharmacies, sustainability, agriculture and organics, ecotourism, motherhood, florists.
- **Audience:** adults 25–55 looking for care; families; conscious consumers.
- **Image it projects:** calm, welcoming, honest, natural, caring, "made to last".

## When not to use

- Products that sell speed, performance or cutting-edge tech (trading, devtools, high-intensity sports).
- Data-dense tools: all that breathing room becomes endless scrolling.
- Watch out for greenwashing: if the brand isn't actually sustainable, the aesthetic becomes a visual lie.

## The rules in numbers

| Area | Rule |
|---|---|
| Grid | 12 columns with wide margins (≥ 1.5 columns on desktop). Central content up to 680 px for text. Organic elements (blobs, leaves) can bleed past the grid; text never does. |
| Type | A soft or humanist serif for display: Fraunces (with high SOFT), Recoleta, GT Alpina, Canela (free: Fraunces, Young Serif, Lora). Body in a humanist sans: DM Sans, Nunito Sans, Figtree. Scale 1.25 (16, 20, 25, 31, 39, 49). Display at 400–500, never heavy. Line height 1.6 for body. |
| Color | Desaturated earth tones: sand #F3EDE4, clay #C9A78B, terracotta #B8643F, sage #8A9A7B, olive #5E6B4E, dark brown #2E2A24 for text. One accent (terracotta or dark sage) for action. No neon, no electric blue. |
| Shape | Large radius: 20–32 px on cards, pill on buttons. Blobs and soft asymmetric shapes as backgrounds. A diffuse, warm shadow (0 8px 24px rgba(46,42,36,.08)). No hard borders. |
| Imagery | Photos in natural light, warm tones, hands, plants, real skin texture, no heavy retouching. Subtle grain (4–8% opacity). Fine-line botanical illustration. |
| Spacing | Lots of breathing room: 120–160 px sections, cards with 32 px padding. One idea per fold. |
| Motion | Slow and soft within the ceiling: fade + 12 px shift in 400–600 ms with ease-in-out; meditation breathing is a loop (exempt from the ceiling). Tap ≤ 160 ms. Respect the project's motion ceiling (reveal ≤ 700 ms, scene ≤ 1.2 s) and `prefers-reduced-motion`. |

## By surface

- **Web app / dashboard:** sand background, warm-white cards with radius 24, charts in sage and clay (no alarming red; problems in terracotta, with text). Gentle language.
- **Mobile app:** one action per screen, a large pill button, a session screen (breathing, journal) with a soft solid-color background and very little text. Guilt-free reminders.
- **Landing page:** a large natural-light photo, a short soft-serif headline, testimonials with real photos, ingredients or principles as botanical icons. Lots of warm white.
- **Company website:** the brand story, ingredient origins, a map of producers. Editorial photos at a slow pace.

## Starter tokens

```css
:root {
  --font-display: "Fraunces", "Young Serif", Georgia, serif;
  --font-sans: "DM Sans", "Figtree", system-ui, sans-serif;
  --fs-1: 0.8rem; --fs-2: 1rem; --fs-3: 1.25rem; --fs-4: 1.563rem; --fs-5: 1.953rem; --fs-6: 3.052rem;
  --c-sand: #F3EDE4; --c-card: #FBF8F3; --c-ink: #2E2A24; --c-mute: #6B6257;
  --c-clay: #C9A78B; --c-terracotta: #B8643F; --c-sage: #8A9A7B; --c-olive: #5E6B4E;
  --c-action: var(--c-olive);
  --radius: 24px; --radius-pill: 999px;
  --shadow: 0 8px 24px rgba(46, 42, 36, 0.08);
  --ease: cubic-bezier(.45, 0, .25, 1);
}
```

## References to study

- Aesop (stores and site), Headspace (illustration and tone), Calm, Oura (premium version).
- *Biophilia*, Edward O. Wilson (1984); Terrapin Bright Green's work on biophilic design.
- Brazilian brands such as Natura (Ekos line) and Granado (classic range).

## What makes it look generic

- Beige everywhere with no contrast: sand-gray on sand fails WCAG. Text is dark brown.
- A blob in every section. Organic shapes are occasional.
- A stock photo of a woman with her eyes closed in a field. Use the brand's real photos, or none.
- Too slow: a 1.5 s animation on a button. Calm is not sluggish.

## Pairs with / clashes with

- **Pairs with:** `school-scandinavian` (warmth and wood), `school-japanese` (ma and wabi-sabi), `school-handcrafted` (texture), `school-editorial` (serif).
- **Clashes with:** `school-y2k-retrofuture`, `school-dark-tech`, `school-sport`, `school-neobrutalism`.

## Checklist

1. Text in dark brown at 4.5:1 on the sand background?
2. An earth-only palette, with one accent for action?
3. A large, consistent radius and a diffuse, warm shadow?
4. Real photos in natural light, or none?
5. Soft animations, but within the ceiling (reveal ≤ 700 ms)?
6. Gentle microcopy, with no guilt or false urgency?
