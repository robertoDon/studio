---
name: school-utilitarian
description: Utilitarian School / Data density. An interface for people who use it all day: lots of information per screen, mono and tabular type, shortcuts, compact rows, color only as a signal, inspired by the terminal, Bloomberg and spreadsheets. Use when the product is for power users (trading, operations, logistics, support, devops, observability, ERP, back office, analytics, internal tools) or when someone asks for something "dense", "professional", "terminal-style", "Bloomberg", "spreadsheet", "for all-day use", "with shortcuts", "data-dense".
---

# Utilitarian · Every pixel works

It comes from the Bloomberg terminal (1982), air traffic and power plant control screens, spreadsheets (VisiCalc, Excel) and developer tools. Edward Tufte supplied the theory: maximize the data-ink ratio. Core idea: the expert wants to see everything at once and act without leaving the keyboard. Density is not clutter; it is respect for their time.

## When to use

- **Sectors:** financial markets and trading, operations and logistics, support centers, devops and observability, ERP and back office, analytics, security (SOC), internal tools, fleet management.
- **Audience:** expert professionals who spend 4–8 h a day in the tool and already know what they are looking for.
- **Image it projects:** powerful, precise, serious, fast, "a tool for people who know".

## When not to use

- Occasional or non-expert users: density scares them and hides the main action.
- Consumer product landing pages and B2C sales: use density as proof (a screenshot), not as the page layout.
- Mobile as the main surface: the school needs a large screen; on a phone, put the alert and the action first.

## The rules in numbers

| Area | Rule |
|---|---|
| Grid | Resizable, docked panels, no large outer margin (8–16 px). 3-zone layout: navigation, list or table, detail. 1 px gutter (a divider) between panels. |
| Type | Compact sans for the interface: Inter (with `cv11`, `ss01`), IBM Plex Sans, Geist (free). Mono for data and code: JetBrains Mono, IBM Plex Mono, Geist Mono, Berkeley Mono (paid). Sizes of 11–14 px in the interface, 3 steps at most (11, 13, 16). Numbers always `tabular-nums` and aligned right. |
| Color | Neutral base (dark #0E1012 or light #FAFAFA). Color only with meaning: green #2FBF71 up/ok, red #F0484A down/error, amber #E8A33D warning, blue #4C8DFF selection/link. State = color + signal (▲▼, icon, text), never color alone. One selection highlight per screen. |
| Shape | Radius 2–4 px. 1 px borders. No shadow (only on popovers and menus). 16 px icons, 1.5 stroke. |
| Imagery | Nothing decorative. The chart is the image: sparklines in table rows, mini bars, heatmaps. Follow Tufte: no 3D, no pie with more than 4 slices. |
| Spacing | Table rows of 28–36 px (compact mode) or 40 px (comfortable), with an option to switch. Cell padding 8 px. Spacing in multiples of 4. |
| Motion | Near zero: hover and selection instant or ≤ 100 ms; panels open in ≤ 150 ms. New data flashes the cell background once (≤ 400 ms). No entrance animations on tables. Respect the project's motion ceiling (touch ≤ 160 ms, reveal ≤ 700 ms, scene ≤ 1.2 s). |

## By surface

- **Web app / dashboard:** command palette (`⌘K`), single-key shortcuts shown in menus and tooltips, Shift multi-select, configurable columns, saved filters, inline cell editing. Status bar at the bottom with connection and last update.
- **Mobile app:** do not replicate the table. Alert list by urgency, detail on one screen, action in one tap. A large tabular number at the top.
- **Landing page:** a real, dense screenshot of the tool as proof, surrounded by lots of breathing room. A list of shortcuts or commands as the argument ("everything from the keyboard").
- **Website / docs:** dense documentation with a fixed side index, instant search, code blocks with copy, a dated changelog.

## Starter tokens

```css
:root {
  --font-sans: "Inter", "IBM Plex Sans", system-ui, sans-serif;
  --font-mono: "JetBrains Mono", "IBM Plex Mono", ui-monospace, monospace;
  --fs-1: 0.6875rem; --fs-2: 0.8125rem; --fs-3: 1rem;
  --c-bg: #0E1012; --c-panel: #15181B; --c-line: #24282D;
  --c-text: #E6E8EA; --c-mute: #9097A0;
  --c-up: #2FBF71; --c-down: #F0484A; --c-warn: #E8A33D; --c-select: #4C8DFF;
  --row: 32px; --space: 4px; --radius: 3px;
}
td.num { font-family: var(--font-mono); font-variant-numeric: tabular-nums; text-align: right; }
```

## References to study

- Bloomberg Terminal; Edward Tufte, *The Visual Display of Quantitative Information* (1983).
- Linear, Superhuman (shortcuts and speed), Datadog and Grafana (observability), Retool (internal tools).
- IBM Carbon Design System (dense table patterns), Stephen Few, *Information Dashboard Design*.

## What makes it look generic

- A "template" dashboard with 4 giant KPI cards and a pie chart: decoration, not utility.
- Density without hierarchy: everything at the same weight. A dense screen needs 1 thing that pops (the alert, the selection).
- Green and red with no extra signal: color-blind users cannot read it.
- Animation on a table that updates every second.

## Pairs with / clashes with

- **Pairs with:** `school-swiss` (grid and type), `school-dark-tech` (dark base), `school-trusted-corporate` (accessibility), `school-sport` (stats), `school-bento`, `school-refined-minimalism`, `school-tactile`.
- **Clashes with:** `school-organic`, `school-clay-3d`, `school-maximalist`, `school-pop-memphis`, `school-handcrafted`.

## Checklist

1. Does every frequent action have a visible shortcut, and is there a `⌘K`?
2. Numbers in mono or tabular, aligned right?
3. Color only with meaning, and does every state have a signal beyond color?
4. Is there 1 element per screen that pops (alert or selection)?
5. Configurable density (compact/comfortable)?
6. No animation on updating data; does the data show the time of the last update?
