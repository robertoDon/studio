---
name: school-refined-minimalism
description: Refined Minimalism (Apple HIG, Dieter Rams). Breathing room, one subject per screen, large and short type, hierarchy through size and weight, flawless materials and details. Use when the product wants to look premium, simple, trustworthy and modern at once (consumer tech, hardware, productivity apps, B2C fintech, digital health, SaaS that sells like B2C) or when someone asks for something "Apple-like", "clean", "premium", "minimalist", "less is more", "simple", "elegant".
---

# Refined Minimalism · Less, but better

Dieter Rams at Braun (1960s–90s, "Weniger, aber besser") and Jony Ive at Apple, codified today in the Human Interface Guidelines. Core idea: strip away until only the essential is left, then perfect every detail that remains. Minimalism is not emptiness, it is finish.

## When to use

- **Sectors:** electronics, consumer apps, productivity, B2C fintech, digital health, mobility, self-serve SaaS, single-product e-commerce.
- **Audience:** broad, ages 20 to 60, values quality and does not want to learn an interface.
- **Image it projects:** premium, simple, trustworthy, modern, "works without thinking".

## When not to use

- Products with a lot of information per screen (trading, ERP). It turns into endless scrolling; use `school-utilitarian`.
- Brands that want to look fun, loud or handcrafted.
- No beautiful product to show: minimalism exposes everything, including a lack of content.

## The rules in numbers

| Area | Rule |
|---|---|
| Grid | 12 columns, content centered at a max width of 980–1200 px. Running text at 680 px max. 24 px gutter. |
| Type | One family: SF Pro, Inter, Geist, Manrope (free: Inter, Geist, Manrope). Display 600–700 with −2% to −3% tracking; body 400. 1.25 scale with a display jump (12, 15, 17, 22, 28, 48, 80). Titles up to 6 words. At most 3 sizes per screen. |
| Color | White #FFFFFF or ice gray #F5F5F7, text #1D1D1F, secondary gray #6E6E73. One accent (blue #0071E3 or the brand color) only on links and actions. Dark mode with #000 and #1C1C1E surfaces. |
| Shape | Radius 12–20 px on cards, 8 px on controls, pill on buttons. Near-invisible shadow (0 1px 2px rgba(0,0,0,.06)) or none. SF Symbols or Lucide icons, uniform stroke. |
| Imagery | The real product, shot large on a clean background. No generic illustration or stock photos of smiling people. |
| Spacing | Breathing room is the design. Sections ≥ 120 px vertical on desktop, card padding ≥ 24 px, 8 grid. One subject per fold. |
| Motion | Smooth and physical: ease-out, 150–300 ms in UI, reveal by opacity + 12 px. Scroll can reveal the product in a scene of up to 1.2 s. Respect the project's motion ceiling (default: touch ≤ 160 ms, reveal ≤ 700 ms, scene ≤ 1.2 s). |

## By surface

- **Web app / dashboard:** discreet sidebar, one primary action per screen, settings in a grouped list like iOS Settings. Empty state with a sentence and a button.
- **Mobile app:** large title, inset grouped lists with radius 12, tab bar with 3–5 items, bottom sheet instead of a modal. Tap targets ≥ 44 pt.
- **Landing page:** short centered headline (48–80 px), one-line subtitle, giant product below. Each section = one feature, with one sentence and one image.
- **Website:** thin global navigation (44 px), lots of white, dense footer organized in columns.

## Starter tokens

```css
:root {
  --font-sans: "Inter", -apple-system, "SF Pro Text", system-ui, sans-serif;
  --fs-1: 0.75rem; --fs-2: 0.9375rem; --fs-3: 1.0625rem; --fs-4: 1.75rem; --fs-5: 3rem; --fs-6: 5rem;
  --c-bg: #FFFFFF; --c-bg-2: #F5F5F7; --c-ink: #1D1D1F; --c-mute: #6E6E73; --c-line: #D2D2D7;
  --c-accent: #0071E3;
  --radius-control: 8px; --radius-card: 18px; --radius-pill: 9999px;
  --shadow-1: 0 1px 2px rgba(0,0,0,.06);
  --ease: cubic-bezier(.25,.1,.25,1); --dur: 200ms;
}
```

## References to study

- Dieter Rams, the 10 principles of good design.
- Apple Human Interface Guidelines (developer.apple.com/design).
- apple.com (product pages), Things 3, Linear (light version), Arc.
- The book *Designed by Apple in California* (2016).

## What makes it look generic

- White + Inter + a blue button with no detail cared for: that is a template, not minimalism. The refinement lives in the tracking, the consistent radius, the tuned icon.
- Hiding features to "clean up" the screen. Minimalism removes ornament, not actions.
- Secondary text in a gray that is too light (below 4.5:1).

## Pairs with / clashes with

- **Pairs with:** `school-swiss`, `school-spatial-glass`, `school-bento`, `school-japanese`, `school-clay-3d`, `school-dark-tech`, `school-quiet-luxury`, `school-scandinavian`, `school-tactile`, `school-trusted-corporate`, `school-utilitarian`.
- **Clashes with:** `school-maximalist`, `school-neobrutalism`, `school-pop-memphis`.

## Checklist

1. Does each screen have one subject and one primary action?
2. Titles up to 6 words, 3 text sizes at most?
3. A single accent, used only on actions and links?
4. Consistent radii and icon strokes everywhere?
5. Real product instead of illustration?
6. Does all gray text pass 4.5:1?
