---
name: school-material
description: Material Design 3 and Material 3 Expressive (Google). Tonal palettes generated from a seed color, surfaces with tonal elevation, expressive rounded shapes, standardized and accessible components. Use when the product is Android-first, needs a complete component system fast, or wants to feel friendly, modern and accessible (service apps, utilities, education, health, productivity, digital government), or when the user asks for "Material", "Android", "Google", "Material You", "dynamic color", "ready-made components".
---

# Material · A system that adapts

Google, 2014 (Material Design, the paper-and-ink metaphor), 2021 (Material You / M3, dynamic color) and 2025 (M3 Expressive, bolder shapes and motion). Core idea: a system of components and tokens so complete that any team can ship an interface that is consistent, accessible and adapts to the user's color.

## When to use

- **Sectors:** Android apps, utilities, digital public services, education, health, transport, productivity, internal tools that need many components.
- **Audience:** broad, including people with low digital fluency. Familiar patterns for Android users.
- **Image it projects:** friendly, accessible, modern, organized, "made by Google".

## When not to use

- Brands that need a strong identity of their own (luxury, fashion, editorial): pure Material looks like a Google app.
- iOS-first products: use `school-refined-minimalism` or the HIG.
- Brand landings: Material is a product system, not a showcase system.

## The rules in numbers

| Area | Rule |
|---|---|
| Grid | Responsive layout by window size class: compact < 600 dp (4 columns, 16 margin), medium 600–839 (8 columns, 24 margin), expanded ≥ 840 (12 columns, 24 margin). A 4 dp grid for icons and an 8 dp grid for layout. |
| Type | Roboto, Roboto Flex or Google Sans Flex (free: Roboto, Roboto Flex). M3 type scale: Display L/M/S 57/45/36, Headline 32/28/24, Title 22/16/14, Body 16/14/12, Label 14/12/11. Weights 400 and 500. |
| Color | One seed color generates 5 tonal palettes (primary, secondary, tertiary, neutral, neutral-variant) with tones 0–100. Roles: primary, on-primary, primary-container, surface, surface-container (low → highest), outline, error. Use the Material Theme Builder. Never a stray color outside the roles. |
| Shape | Shape scale: none 0, extra-small 4, small 8, medium 12, large 16, extra-large 28, full (pill). M3 Expressive adds morphable shapes (cookie, flower, pill) for emphasis. Elevation through surface tone; shadow only at levels 1–3. |
| Imagery | Flat, friendly illustration or real photos. Material Symbols icons (variable: fill, weight 400, grade, optical size 24). |
| Spacing | Multiples of 4. Minimum touch target 48 × 48 dp. Card padding 16. |
| Motion | M3 Expressive physics-based springs (spatial and effects). Durations: short 50–200 ms, medium 250–400 ms, long 450–600 ms, "emphasized" easing. Respect the project's motion ceiling (default: touch ≤ 160 ms, reveal ≤ 700 ms, scene ≤ 1.2 s). |

## By surface

- **Web app / dashboard:** navigation rail at the medium window, navigation drawer at the expanded one, top app bar, outlined or filled cards, data table with 52 px rows.
- **Mobile app:** bottom navigation bar (3–5 destinations), a FAB for the screen's main action, bottom sheet, snackbar for feedback. Dynamic color taken from the wallpaper.
- **Landing page:** use only Material's palette and shapes; a showcase calls for a hero with the real product and large expressive shapes as the background.
- **Company website:** top app bar, cards with radius 16, filter chips. Good for service portals with many sections.

## Starter tokens

```css
:root {
  --font-sans: "Roboto Flex", "Roboto", system-ui, sans-serif;
  --md-sys-color-primary: #6750A4; --md-sys-color-on-primary: #FFFFFF;
  --md-sys-color-primary-container: #EADDFF; --md-sys-color-on-primary-container: #21005D;
  --md-sys-color-surface: #FEF7FF; --md-sys-color-surface-container: #F3EDF7;
  --md-sys-color-on-surface: #1D1B20; --md-sys-color-outline: #79747E; --md-sys-color-error: #B3261E;
  --md-shape-small: 8px; --md-shape-medium: 12px; --md-shape-large: 16px; --md-shape-xl: 28px; --md-shape-full: 9999px;
  --md-motion-emphasized: cubic-bezier(.2,0,0,1); --md-dur-short: 150ms; --md-dur-medium: 300ms;
}
```

## References to study

- m3.material.io (official guide), Material Theme Builder (Figma and web).
- Google apps on Android 16: Gmail, Google Photos, Clock, Settings (M3 Expressive).
- Material Web Components and Jetpack Compose Material 3.

## What makes it look generic

- Using the default purple #6750A4 without changing the seed color: everyone recognizes it as "default".
- Mixing in colors outside the tonal roles: it breaks the automatic contrast.
- A FAB on every screen, even with no main action.

## Pairs with / clashes with

- **Pairs with:** `school-trusted-corporate`, `school-clay-3d` (friendly version), `school-bento`.
- **Clashes with:** `school-quiet-luxury`, `school-editorial`, `school-neobrutalism`.

## Checklist

1. Do all colors come from tonal roles generated from your own seed?
2. Does every component's shape come from the scale (4, 8, 12, 16, 28, full)?
3. Touch targets ≥ 48 dp, and does the layout change by window size class?
4. Material Symbols icons with a single weight and fill?
5. Does on-* contrast on each container pass 4.5:1?
6. A FAB only where there is a main action?
