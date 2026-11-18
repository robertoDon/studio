---
name: school-japanese
description: Japanese school (Ma, wabi-sabi, Muji, Kenya Hara). Emptiness as an element, calm asymmetry, natural imperfection, small and precise type, a palette of paper, ink and earth, contemplative rhythm. Use when the product should feel serene, mindful, refined without showing off, and deep (tea, ceramics, skincare, meditation, architecture, hospitality, bookshops, Japanese food, sustainable products, galleries), or when the user asks for something "zen", "calm", "Japanese", "Muji", "wabi-sabi", "Japanese minimalism", "contemplative", "with negative space".
---

# Japanese · Emptiness speaks too

*Ma* (間) is the interval, the space between things, and it is worth as much as the things themselves. *Wabi-sabi* is the beauty of the imperfect and the transient. Kenya Hara (art direction for Muji; the book *Designing Design*) and Ikko Tanaka brought this into graphic design. Core idea: don't fill. Emptiness is active and invites the viewer to complete it.

## When to use

- **Sectors:** specialty tea and coffee, ceramics and crafts, skincare, meditation and wellness, architecture, hospitality (ryokan, guesthouses), bookshops, Japanese food, slow fashion, stationery, sustainability.
- **Audience:** adults, 28–60, who value calm, quality and meaning.
- **Image it projects:** serene, mindful, refined, honest, "every detail considered".

## When not to use

- Products that need fast conversion and urgency (deal-driven retail, delivery apps).
- Dense working interfaces: the emptiness turns into scrolling.
- Brands that want energy and noise (sport, parties, Gen Z).

## The rules in numbers

| Area | Rule |
|---|---|
| Grid | Asymmetric. Content shifted to one third; emptiness fills ≥ 50% of a showcase screen. A vertical grid (text in a narrow column) can nod to tategaki. |
| Type | Small, precise type. A thin neutral sans (Noto Sans JP, Zen Kaku Gothic, Inter 300–400) or a delicate serif (Shippori Mincho, Zen Old Mincho, Noto Serif JP, EB Garamond), all free. Body 14–16 px, line height 1.8. Titles rarely above 40 px. Labels with +8% tracking. A kanji or a single character as a graphic element. |
| Color | Washi paper #F5F1EA, rice white #FBFAF7, sumi (ink) #1F1E1C, stone gray #8A867E. Earth accents: aizome indigo #2D3E5E, shu red #B5452B, matcha green #7A8B5C, ochre #B08A4E. One accent, very small. |
| Shape | Radius 0–4 px. 0.5–1 px hairlines. No shadows. A small red seal (hanko) as a mark. Minimal icons, or none. |
| Imagery | Photos with natural side light, soft shadows, a single object, texture (ceramic, paper, wood). Visible imperfection is welcome. |
| Spacing | Plenty, and irregular by intent. Sections ≥ 160 px. Wide margins. Group little, separate a lot. |
| Motion | Slow and rare: 500–700 ms fade, ease-in-out, like ink appearing. Nothing jumps. Respect the project's motion ceiling (default: touch ≤ 160 ms, reveal ≤ 700 ms, scene ≤ 1.2 s). |

## By surface

- **Web app / dashboard:** only the calm: paper background, small type with generous line height, one accent, thin hairlines. Low density, one task at a time.
- **Mobile app:** one piece of content per screen, text navigation, fade transitions, a full-screen timer or practice screen with almost nothing on it.
- **Landing page:** a photo of one object with lots of emptiness, one short sentence, text in a narrow offset column, a CTA as discreet text.
- **Company website:** the process and the materials, a page per collection, a minimal map and opening hours.

## Starter tokens

```css
:root {
  --font-sans: "Zen Kaku Gothic New", "Noto Sans JP", "Inter", sans-serif;
  --font-serif: "Shippori Mincho", "Noto Serif JP", "EB Garamond", serif;
  --fs-label: 0.75rem; --fs-body: 0.9375rem; --fs-h2: 1.5rem; --fs-h1: 2.25rem;
  --lh-body: 1.8; --tracking-label: 0.08em;
  --c-paper: #F5F1EA; --c-rice: #FBFAF7; --c-sumi: #1F1E1C; --c-stone: #6F6B64;
  --c-ai: #2D3E5E; --c-shu: #B5452B; --c-matcha: #7A8B5C;
  --rule: 1px solid rgba(31,30,28,.12); --radius: 2px;
  --dur-reveal: 600ms; --ease: cubic-bezier(.4,0,.2,1);
}
```

## References to study

- muji.com, Kenya Hara (*Designing Design*, *White*), Ikko Tanaka.
- Junichiro Tanizaki, *In Praise of Shadows*.
- Leonard Koren, *Wabi-Sabi for Artists, Designers, Poets & Philosophers*.
- Sites: Aesop (stores), Kinto (kinto.co.jp), Hoshinoya.

## What makes it look generic

- Clichés: Hokusai's wave, cherry blossoms, fake "Oriental" fonts. That's a stereotype, not a school.
- Emptiness without intent: just removing elements is not *ma*. Emptiness needs an element that activates it.
- Gray too light for the sake of "delicacy", below 4.5:1.

## Pairs with / clashes with

- **Pairs with:** `school-quiet-luxury`, `school-editorial`, `school-organic`, `school-scandinavian`, `school-handcrafted`, `school-refined-minimalism`.
- **Clashes with:** `school-maximalist`, `school-pop-memphis`, `school-neobrutalism`, `school-y2k-retrofuture`.

## Checklist

1. Does emptiness fill at least half of the showcase, with an element that activates it?
2. An intentional asymmetric composition?
3. Small type with line height ≥ 1.7?
4. One earth accent, very small?
5. No "Japanese" visual clichés?
6. Delicate as it is, does all text pass 4.5:1?
