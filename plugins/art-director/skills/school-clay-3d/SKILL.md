---
name: school-clay-3d
description: Clay / Soft 3D school (claymorphism). 3D objects and icons that look like modeling clay, saturated pastels, very rounded corners, soft inner and outer shadows, a toy-like feel. Use when the product should feel friendly, safe and easy (kids, education, friendly fintech, first bank account, health for non-experts, onboarding, casual games), or when the user asks for something "cute", "friendly", "3D", "clay", "claymorphism", "playful", "for kids", "Headspace/Duolingo 3D style".
---

# Clay 3D · Makes you want to squeeze it

Born around 2021 from Blender and Cinema 4D renders that imitate modeling clay and matte plastic, and from Microsoft's 3D emojis (Fluent Emoji). Core idea: take the fear away. Soft 3D turns a hard subject (money, learning, health) into something touchable and gentle.

## When to use

- **Sectors:** early-childhood and language learning, first bank accounts and accounts for teens, investing fintech for beginners, simplified insurance, health for non-experts, casual games, family apps, onboarding for any product.
- **Audience:** children and parents, young people aged 16–25, beginners in an intimidating subject.
- **Image it projects:** friendly, safe, simple, optimistic, "you can do this".

## When not to use

- Luxury, legal, dense professional tools. It feels childish.
- Products sold to business owners or experts: characters and clay strip away authority.
- When performance matters: large 3D PNG renders slow down loading. If there's no budget for custom 3D assets, don't use it. Generic stock 3D is worse than nothing.

## The rules in numbers

| Area | Rule |
|---|---|
| Grid | 12 columns, centered compositions in the hero (3D object in the center or on the right). Cards in a 2–3 column grid. |
| Type | Rounded or friendly geometric sans: Nunito, Quicksand, Fredoka, Baloo 2, Plus Jakarta Sans (all free on Google Fonts). Scale 1.25. Display at 700–800, body at 400–500. No thin serifs. |
| Color | Saturated pastels (not washed out): lavender #B9A6FF, mint #8EE3C8, peach #FFB997, sky #8EC9FF, yellow #FFE07A. Light background #F6F4FF. Text in dark indigo #1F1B3A. Action in a single, more saturated color (#6C4CFF). Each color has a fixed role. |
| Shape | Very large radius: 24–40 px on cards, pill on buttons. Clay = a diffuse colored outer shadow + an inner shadow, light on top and dark at the bottom. No sharp corners. |
| Imagery | Custom 3D objects and characters, matte, soft studio lighting, contact shadow. Same angle and light across the whole set. Microsoft's Fluent Emoji 3D for large icons (MIT license). |
| Spacing | Generous: 24–32 px inside cards, 96–120 px between sections. One 3D object per block, not several competing. |
| Motion | Elastic: the button shrinks to 0.96 on tap (≤ 120 ms), the 3D object "bounces" in (spring, ≤ 500 ms). The object's idle float is a loop (exempt from the ceiling), subtle and pausable. Respect the project's motion ceiling (touch ≤ 160 ms, reveal ≤ 700 ms, scene ≤ 1.2 s) and `prefers-reduced-motion`. |

## By surface

- **Web app / dashboard:** clay only on category icons, empty states and achievements. Clean tables and forms, with a large radius. Don't put a clay shadow on every row.
- **Mobile app:** its natural habitat. Clay main button, lesson or goal cards with a 3D object, celebrations with the object. Touch target ≥ 48 px for children.
- **Landing page:** a hero 3D object (safe, rocket, book) with a contact shadow, a short optimistic headline, "1, 2, 3" steps with 3D icons.
- **Company website:** a 3D mascot as a guide, sections in different pastels, an FAQ in plain language.

## Starter tokens

```css
:root {
  --font-sans: "Nunito", "Plus Jakarta Sans", system-ui, sans-serif;
  --fs-1: 0.875rem; --fs-2: 1rem; --fs-3: 1.25rem; --fs-4: 1.563rem; --fs-5: 2.441rem; --fs-6: 3.815rem;
  --c-bg: #F6F4FF; --c-ink: #1F1B3A; --c-mute: #5A5677;
  --c-lavender: #B9A6FF; --c-mint: #8EE3C8; --c-peach: #FFB997; --c-sky: #8EC9FF; --c-sun: #FFE07A;
  --c-action: #6C4CFF;
  --radius: 32px; --radius-pill: 999px;
  --clay: 0 12px 24px rgba(108, 76, 255, 0.18),
          inset 0 -6px 12px rgba(31, 27, 58, 0.12),
          inset 0 6px 12px rgba(255, 255, 255, 0.7);
}
```

## References to study

- Microsoft Fluent Emoji (3D, open source on GitHub).
- Duolingo (characters and celebrations), Headspace (characters, 2D version), youth banking apps such as NuConta for minors (Nubank) and Revolut <18.
- Dribbble: the "claymorphism" tag (Michał Malewicz coined the term in 2021, in the article "Claymorphism").

## What makes it look generic

- Stock 3D with a different light and angle on each icon: it looks like a collage.
- Clay shadow on everything, including text and inputs: it turns to jelly and the hierarchy disappears.
- Washed-out pastel with light gray text: it fails contrast.
- A 2 MB 3D PNG in the mobile hero.

## Pairs with / clashes with

- **Pairs with:** `school-pop-memphis`, `school-bento` (cards with an object), `school-material` (expressive shapes), `school-tactile`, `school-refined-minimalism`, `school-scandinavian`.
- **Clashes with:** `school-quiet-luxury`, `school-swiss`, `school-utilitarian`, `school-editorial`, `school-dark-tech`, `school-sport`.

## Checklist

1. Do all 3D objects share the same angle, light and material?
2. Clay only on actions, icons and moments, not on every element?
3. Text in dark indigo, 4.5:1 on pastel?
4. 3D assets optimized (WebP/AVIF, ≤ 150 KB each, `loading="lazy"` outside the hero)?
5. Elastic motion within the ceiling and with `prefers-reduced-motion`?
6. Is the audience really beginners or young people (not treating an expert like a child)?
