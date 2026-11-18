---
name: base-layout-grid
description: Interface layout and grids: grids per surface, a 4/8 px rhythm, visual hierarchy, density, and 375/768/1024/1440 breakpoints. Use when building or reviewing screen structure, spacing, responsiveness or alignment, or when the user says "it looks messy", "spacing", "grid", "responsive", "hierarchy".
---

# Layout and grid · Space is information

Sources: Josef Müller-Brockmann, *Grid Systems in Graphic Design*; *Refactoring UI* (Wathan and Schoger); Material Design 3 (Layout: window size classes); Apple HIG (Layout); Nielsen Norman Group (F and Z reading patterns). The school decides whether the grid shows or hides. This skill makes sure it exists.

## The 4/8 px rhythm

- Every space is a multiple of 4. Use a short, named scale: **4, 8, 12, 16, 24, 32, 48, 64, 96**.
- Inside a component: 4–16. Between components: 16–32. Between sections: 48–96 (landing ≥ 96).
- **Proximity:** space between groups ≥ 2× the space within a group.
- Start with too much space and take it away (Refactoring UI). A cramped screen looks cheap; a roomy one looks cared for.
- Text line height falls on the rhythm too (16/24, 24/32).

## Grid per surface

| Surface | Columns | Gutter | Margin | Max width |
|---|---|---|---|---|
| Phone (< 600) | 4 | 16 | 16–20 | 100% |
| Tablet (600–1024) | 8 | 16–24 | 24–32 | 100% |
| Desktop (≥ 1024) | 12 | 24 | 32–80 | 1200–1440 |
| Reading (article) | 1 column | — | auto | 65ch (~680 px) |
| Web app with sidebar | fixed sidebar 240–280 + fluid content | 24 | 24–32 | content up to 1200 |

## Breakpoints

Design at **375** first (base iPhone), then **768** (tablet), **1024** (small laptop) and **1440** (desktop). Check 320 (the WCAG minimum) with no horizontal scroll.

```css
/* mobile first */
@media (min-width: 768px)  { /* tablet */ }
@media (min-width: 1024px) { /* laptop */ }
@media (min-width: 1440px) { /* wide desktop */ }
```

Use container queries for components that change shape based on the space they get, not the screen.

## Visual hierarchy

Order of strength for making something stand out: **size → weight → contrast → color → position → surrounding space**. Use the weakest one that works.

- One focal point per screen. Squint (the blur test): what remains must be the subject.
- **Z** reading on low-text screens (landing, hero): logo → navigation → headline → action. **F** reading on text-heavy screens (list, article, search results): the start of each line matters most, so put the keyword first.
- Shrink the secondary instead of enlarging the primary (Refactoring UI: "de-emphasize to emphasize").
- Labels smaller and lighter than values; the data is the subject.

## Alignment

- Few vertical lines. Every new alignment line is noise.
- Left-aligned text (in left-to-right languages). Centered only for short blocks (≤ 3 lines): hero, empty state, confirmation.
- Align an icon to the first line of text, not to the block. Right-align numbers in a column.
- Optical alignment: a play icon, a triangle and round letters need a 1–2 px nudge to *look* centered.

## Density

| Density | List/table row | When |
|---|---|---|
| Compact | 32–36 px | Expert tools, spreadsheets, terminals, trading |
| Comfortable | 44–52 px | Product default |
| Spacious | 56–72 px | Consumer, mobile, broad audience, older users |

Offer a density switch only in heavy-use tools. On mobile, never go below a 44 px target.

## Structure patterns

- **Stack**: elements in a column with a single spacing value. 80% of mobile screens.
- **Sidebar + content**: web apps.
- **Card grid**: catalog, gallery. `grid-template-columns: repeat(auto-fill, minmax(240px, 1fr))`.
- **Bento**: blocks of different sizes on a shared grid. Good for showcases, bad for data people compare.
- **List-detail**: list on the left, detail on the right on desktop; separate screens on phones.

## Checklist

1. Is every space on the scale (multiples of 4), with no more than 6–8 distinct values?
2. Space between groups ≥ 2× the space within?
3. Does everything sit on a grid with defined columns, gutter and margin?
4. Designed at 375 first and tested at 320, 768, 1024 and 1440?
5. One focal point per screen (blur test)?
6. Few alignment lines, text left-aligned?
7. Does density fit the audience and the use?
