---
name: school-pop-memphis
description: Pop/Memphis School. Flat vivid colors, playful geometric shapes (zigzags, circles, confetti), black outlines, fat rounded type, humor in the interface. Use when the product must feel fun, young, approachable and full of personality (Gen Z, gamified learning, creators, communities, events, light habit apps, youth consumer brands) or when someone asks for something "fun", "colorful", "young", "with personality", "Duolingo style", "Gumroad", "Memphis", "pop", "playful".
---

# Pop/Memphis · Too serious is boring

Milan, 1981: Ettore Sottsass and the Memphis Group answer modernist good taste with color, pattern and humor. On the web it came back through flat illustration, black outlines and brands that talk like people (Duolingo, Gumroad, Mailchimp in its Freddie era). Core idea: the interface has a personality and is allowed to smile.

## When to use

- **Sectors:** gamified learning, light habit apps, communities and creators, events, stationery, toys, drinks and snacks, youth consumer brands.
- **Audience:** Gen Z and millennials, creators, students, people who use the app because they want to, not because they have to.
- **Image it projects:** fun, approachable, optimistic, "doesn't take itself seriously", full of energy.

## When not to use

- Serious money, serious health, legal, enterprise B2B. Humor reads as disrespect.
- Audiences who need calm (grief, mental health crisis). Too much stimulus.
- Heavy daily-use tools: confetti gets tiring by the tenth time. Use pop in the showcase and at moments of achievement, not on every screen.

## The rules in numbers

| Area | Rule |
|---|---|
| Grid | 12 columns, but it can break: elements rotated (−6° to 6°) and overlapping the grid. At most 1 "off-grid" element per section. |
| Type | Fat, rounded or geometric display: Bricolage Grotesque, Recoleta, Cooper, Feather (Duolingo), Clash Display (free: Bricolage Grotesque, Fredoka, Lilita One, Baloo 2). Body in a friendly sans (Nunito, DM Sans). 1.5 scale (16, 24, 36, 54, 81). Display at 700–900. |
| Color | 3–4 flat vivid colors (e.g. yellow #FFD23F, pink #FF6B9A, blue #3D5AFE, green #2EC4B6) + black #111 and cream #FFF8EC. Each color has a fixed role (one is action). Text always black or white at 4.5:1. No gradients. |
| Shape | Radius 12–24 px or pill. 2–3 px black outline. Solid offset shadow (4px 4px 0 #111), never blurred. Loose shapes: circles, zigzags, stars, squiggles. |
| Imagery | Flat illustration with outlines, stickers, simple characters. Cut-out photos with a white border, sticker style. |
| Spacing | Generous between sections (96–128 px), tight inside cards (16–24 px). Geometric patterns fill backgrounds, never behind text. |
| Motion | Springy and short: the button sinks 2 px on click (≤ 120 ms), achievements get a bounce or confetti (≤ 700 ms, once). Mascot loops are exempt from the rule but must be pausable. Respect the project's motion ceiling (touch ≤ 160 ms, reveal ≤ 700 ms, scene ≤ 1.2 s) and `prefers-reduced-motion`. |

## By surface

- **Web app / dashboard:** neutral base (cream and black), vivid color only for action, state and achievement. Cards with outline and solid shadow. Empty states with an illustration and a funny line.
- **Mobile app:** fat primary button (56 px tall) that "sinks" on tap. Full-screen celebration only at milestones, not on every action. Tabs with a flat icon and a label.
- **Landing page:** giant headline with one marked word (squiggle underline or color fill), floating stickers, a scrolling strip of phrases (marquee). Yellow CTA with a black outline.
- **Website:** each section on a different background color, in flat blocks. Team in sticker-style cut-out photos.

## Starter tokens

```css
:root {
  --font-display: "Bricolage Grotesque", "Fredoka", system-ui, sans-serif;
  --font-sans: "DM Sans", "Nunito", system-ui, sans-serif;
  --fs-1: 0.875rem; --fs-2: 1rem; --fs-3: 1.5rem; --fs-4: 2.25rem; --fs-5: 3.375rem; --fs-6: 5rem;
  --c-ink: #111111; --c-paper: #FFF8EC;
  --c-yellow: #FFD23F; --c-pink: #FF6B9A; --c-blue: #3D5AFE; --c-green: #2EC4B6;
  --c-action: var(--c-yellow);
  --radius: 16px; --radius-pill: 999px;
  --stroke: 2.5px solid var(--c-ink);
  --shadow-pop: 4px 4px 0 var(--c-ink);
}
```

## References to study

- Memphis Group, Ettore Sottsass (furniture and objects, 1981–1988).
- Duolingo (brand and illustration system), Gumroad (2021 redesign), Mailchimp (Freddie-era illustration).
- Figma Config (event identities), Notion (Roman Muradov's illustrations, a more restrained take).

## What makes it look generic

- Vivid color everywhere with no fixed role: it turns into a kids' party. Each color has a job.
- Stock illustration in the "corporate Memphis" style (long-armed purple people). That is the opposite: good Memphis has authorship.
- A blurred shadow with a black outline. The Memphis shadow is solid and offset.
- White text on yellow or light pink: fails contrast.

## Pairs with / clashes with

- **Pairs with:** `school-neobrutalism` (outline and solid shadow), `school-clay-3d` (characters), `school-bento` (colored blocks), `school-maximalist`, `school-bauhaus`, `school-y2k-retrofuture`.
- **Clashes with:** `school-quiet-luxury`, `school-trusted-corporate`, `school-japanese`, `school-swiss`.

## Checklist

1. Does each vivid color have exactly one role (action, state, category)?
2. Does all text pass 4.5:1, including on yellow and pink?
3. Are shadows solid and offset, with a consistent black outline?
4. Does celebration appear only at milestones, not on every action?
5. Do animations respect the ceiling and `prefers-reduced-motion`?
6. Is the tool still usable without the illustration (the charm does not hide the action)?
