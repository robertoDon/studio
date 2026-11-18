---
name: school-neobrutalism
description: Neobrutalism (and its raw web-brutalism variant). Thick black borders, hard offset shadows with no blur, flat saturated colors, heavy type, exposed structure. Use when the product should feel bold, honest, young, indie and memorable (creative tools, early-stage startups, products for developers and makers, newsletters, Gen Z, portfolios, events), or when the user asks for something "brutalist", "neo-brutalism", "bold", "with black borders", "Gumroad style", "raw", "anti-design", "unlike anything else".
---

# Neobrutalism · Structure on show

Web brutalism began as a reaction to polished design (brutalistwebsites.com, Pascal Deville, 2014): raw HTML, system fonts, nothing hidden. Neobrutalism (around 2020, Gumroad, Figma community) tamed it: it keeps the black border and the hard shadow, and adds flat color and usability. Core idea: don't fake depth or luxury. What it is, shows.

## When to use

- **Sectors:** creative tools, creator economy, newsletters, indie products and early-stage dev tools, offbeat education, events, portfolios.
- **Audience:** 18–35, digital natives, creative, tired of generic SaaS.
- **Image it projects:** bold, honest, fun, independent, "made by people".

## When not to use

- Banks, health, legal, luxury: it reads as amateur or aggressive.
- Audiences aged 55+ or with low digital fluency: the aesthetic looks like a bug.
- Dense dashboards: 3 px borders on every cell become noise.

## The rules in numbers

| Area | Rule |
|---|---|
| Grid | Simple and visible. 12 columns, blocks butted together or with a fixed 16–24 px gap. The grid can show (2–3 px lines). |
| Type | Heavy grotesque or mono: Space Grotesk, Archivo Black, Inter 800, Darker Grotesque, Space Mono, IBM Plex Mono (all free). Display 700–900, uppercase or lowercase, tracking −1%. Body 400–500. Scale 1.333. Raw variant: system Times/Arial/monospace. |
| Color | Cream #FFF4E0 or white background, black #000 for borders and text. 2–3 flat saturated colors: yellow #FFD23F, pink #FF6B9D, green #4ADE80, blue #5B8CFF, orange #FF7A00. No gradients. Raw variant: link blue #0000EE and system gray. |
| Shape | A 2–4 px black border on everything clickable and on every card. Hard shadow: 4px 4px 0 #000 (6–8 px for emphasis), zero blur. Radius 0, or 8–12 px for a friendly version — never mix them. |
| Imagery | Cut-out photos with a black border, stickers, thick-line illustration, framed screenshots. Emoji fits here. |
| Spacing | Generous inside blocks (24–32 px), blocks packed tight against each other. Multiples of 8. |
| Motion | The button "sinks": on hover, shadow 4→2 px and translate 2 px; on click, shadow 0 and translate 4 px. 80–120 ms, linear or ease-out. Nothing too smooth. Respect the project's motion ceiling (default: touch ≤ 160 ms, reveal ≤ 700 ms, scene ≤ 1.2 s). |

## By surface

- **Web app / dashboard:** cards with border and shadow only on top-level elements; tables with a thick outer border and 1 px inner dividers. One color per status type, always with text.
- **Mobile app:** large buttons with a 3 px border and a 4 px shadow, tabs with a color block on the active one. Watch touch targets: the border counts toward the size.
- **Landing page:** a giant headline, alternating colored blocks, CTAs that sink, a logo marquee, pricing in a card with an 8 px shadow.
- **Company website / raw brutalism:** HTML with almost no CSS, the system font, underlined blue links, lists of text. Works for portfolios and manifestos, not for selling.

## Starter tokens

```css
:root {
  --font-display: "Archivo Black", "Space Grotesk", sans-serif;
  --font-sans: "Space Grotesk", system-ui, sans-serif;
  --font-mono: "Space Mono", ui-monospace, monospace;
  --c-bg: #FFF4E0; --c-ink: #000000; --c-yellow: #FFD23F; --c-pink: #FF6B9D; --c-green: #4ADE80; --c-blue: #5B8CFF;
  --border: 3px solid var(--c-ink);
  --shadow: 4px 4px 0 var(--c-ink); --shadow-lg: 8px 8px 0 var(--c-ink);
  --radius: 0px; /* or 10px for the friendly version */
  --dur: 100ms;
}
```

## References to study

- gumroad.com (2021 redesign), figma.com/community during its neobrutalist phases.
- brutalistwebsites.com (curated by Pascal Deville).
- Poolsuite, Mailchimp (illustration era), neobrutalism-components (shadcn).

## What makes it look generic

- Thick border and shadow on absolutely everything, including text and icons: it becomes noise.
- A shadow with blur: it stops being brutal.
- Washed-out pastels: it loses its energy. It's flat and saturated.

## Pairs with / clashes with

- **Pairs with:** `school-pop-memphis`, `school-bauhaus`, `school-y2k-retrofuture`, `school-maximalist`.
- **Clashes with:** `school-quiet-luxury`, `school-spatial-glass`, `school-refined-minimalism`, `school-japanese`.

## Checklist

1. A hard shadow with no blur, and a black border only on the elements that matter?
2. A single radius across the whole product (0 or one value)?
3. At most 3 flat colors, all passing 4.5:1 with black text?
4. Does the button sink on hover and click within 120 ms?
5. Heavy type with a clear jump between display and body?
6. Still usable: visible focus, targets ≥ 44 px, states with text?
