---
name: school-bauhaus
description: Bauhaus school. Pure geometry (circle, square, triangle), flat primary colors, geometric type, form follows function. Use when the product should feel constructive, educational, creative and graphically bold without losing order (education, culture, museums, art schools, architecture, creative tools, kids' brands with a grown-up feel), or when the user asks for something "geometric", "primary colors", "constructivist", "Bauhaus", "basic shapes", "like an art poster".
---

# Bauhaus · Form follows function

Weimar and Dessau, 1919–1933 (Walter Gropius, Herbert Bayer, László Moholy-Nagy, Josef Albers, Wassily Kandinsky). Core idea: art and industry together. Every form comes from basic geometry, and every element has a job. Color is primary because primary is the most direct.

## When to use

- **Sectors:** education, culture and museums, architecture, product design, creative tools, publishers, art events, educational toys.
- **Audience:** curious young adults and adults, creatives, students. Works for children when the brand wants to look smart, not cute.
- **Image it projects:** constructive, bold but orderly, intellectual, creative, "made with method".

## When not to use

- Products that need discretion or luxury (jewelry, hospitality). It gets loud.
- Dense data tools: the shapes compete with the information.
- If the brand already has a cool, neutral palette: the primaries clash with everything.

## The rules in numbers

| Area | Rule |
|---|---|
| Grid | 12 columns, but with color blocks filling whole columns. Diagonal composition (15° or 45°) allowed only on showcase pages. 24 px gutter. |
| Type | Geometric sans: Futura, Josefin Sans, Jost, Poppins, Outfit; Bauhaus 93 only in a logo (free: Jost, Outfit, Josefin Sans, Space Grotesk). Display in all lowercase or all caps, weight 700–900. Body 400. Scale 1.5 (16, 24, 36, 54, 81). Line height 1.45 for body, 1.0 for display. |
| Color | Red #D62828, blue #1D4E89, yellow #F2C230, black #111, off-white #F4F1EA. At most 3 primaries per screen, always flat. No gradients, no transparency. |
| Shape | Circle, square and triangle as composition elements and icons. Radius 0 or 50% (never in between). No shadows. Thick rules (4–8 px) as dividers. |
| Imagery | Black-and-white photos cropped into geometric shapes, or compositions of shapes. Illustration built from primitives, never organic. |
| Spacing | Color blocks as whole areas, not decoration. Multiples of 8. Sections ≥ 96 px. |
| Motion | Shapes that slide or rotate on an axis (90°), 200–400 ms, ease-in-out. Nothing elastic. Respect the project's motion ceiling (default: touch ≤ 160 ms, reveal ≤ 700 ms, scene ≤ 1.2 s). |

## By surface

- **Web app / dashboard:** off-white background; each section marked by a small primary shape (●■▲) as its category icon. Charts in flat primaries. Plain tables, no decoration.
- **Mobile app:** tabs with a pure geometric icon and a label. Main button rectangular, radius 0, in one primary. One brand color per screen.
- **Landing page:** hero as a poster: a huge shape (600 px circle) behind a lowercase headline, asymmetric composition. Sections alternate color blocks.
- **Company website:** typographic navigation, each page with its own primary, an index with large geometric numerals.

## Starter tokens

```css
:root {
  --font-sans: "Jost", "Futura", "Century Gothic", sans-serif;
  --fs-1: 0.75rem; --fs-2: 1rem; --fs-3: 1.5rem; --fs-4: 2.25rem; --fs-5: 3.375rem; --fs-6: 5.063rem;
  --c-ink: #111111; --c-paper: #F4F1EA; --c-red: #D62828; --c-blue: #1D4E89; --c-yellow: #F2C230;
  --radius-0: 0; --radius-round: 9999px;
  --rule: 4px solid var(--c-ink);
  --space: 8px; --gutter: 24px;
}
```

## References to study

- Herbert Bayer, the Universal typeface (1925) and the Bauhaus posters.
- Josef Albers, *Interaction of Color* (1963).
- The book *Bauhaus 1919–1933* (Taschen, Magdalena Droste).
- Vitra Design Museum, identity for the 2019 Bauhaus centenary (bauhaus100.de).

## What makes it look generic

- Pastel primaries, or primaries with gradients: they lose their force.
- Shapes scattered like confetti, with no composition. In Bauhaus the shape organizes the page.
- Poppins everywhere with no dramatic scale: it becomes a delivery app, not Bauhaus.

## Pairs with / clashes with

- **Pairs with:** `school-swiss` (grid), `school-neobrutalism` (flat color), `school-pop-memphis` (the playful version).
- **Clashes with:** `school-quiet-luxury`, `school-spatial-glass`, `school-organic`.

## Checklist

1. Is every shape a circle, square or triangle, with radius 0 or 50%?
2. At most 3 primaries per screen, flat, no gradients?
3. Geometric typeface, with a big jump between body and display?
4. Do the shapes organize the composition instead of decorating it?
5. Does text on yellow and on red pass 4.5:1?
6. Does every element have a job?
