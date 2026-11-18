---
name: school-trusted-corporate
description: Trusted Corporate School / Institutional. Trust first: AA/AAA accessibility, predictable components, plain language, institutional blue or green, flawless forms, inspired by the GOV.UK Design System and IBM Carbon. Use when the product handles money, health, personal data, law or public services (banks, insurance, healthcare, hospitals, health plans, government, legal, accounting, pensions, HR, formal education), when the audience includes older adults and non-experts, or when someone asks for something "trustworthy", "serious", "institutional", "accessible", "for everyone", "bank-style", "government-site style", "professional".
---

# Trusted Corporate · Nobody can get lost

It comes from the design systems of public services and large companies: GOV.UK Design System (Government Digital Service, 2016), IBM Carbon, US Web Design System, Brazil's gov.br standard. Core idea: the user is anxious (about money, health, a deadline) and can be of any age, vision or literacy. Trust is built with predictability, clarity and accessibility, not ornament.

## When to use

- **Sectors:** banks and credit unions, insurance, pensions, healthcare (hospitals, health plans, labs), government, legal, accounting, HR and payroll, formal education, utilities (water, power), telecom.
- **Audience:** everyone, including older adults, people with disabilities, people with low digital literacy, people under stress.
- **Image it projects:** trustworthy, safe, serious, clear, "I can sort this out here without fear".

## When not to use

- Brands that need to stand out through style and emotion (fashion, culture, entertainment): it falls flat.
- Startups that want to look "new" next to traditional banks: use the trusted base (accessibility, forms) and differentiate with another school in the showcase.
- Never give up its principles (accessibility, plain language) in any school. What you leave out is only the aesthetic.

## The rules in numbers

| Area | Rule |
|---|---|
| Grid | 12 columns, reading content up to 640–720 px. Single-column forms (never side-by-side fields, except date and postal code). Predictable layout: the same header and the same button position on every page. |
| Type | Highly legible sans: IBM Plex Sans, Source Sans 3, Noto Sans, Public Sans, Atkinson Hyperlegible (all free; the last one made by the Braille Institute for low vision). Body ≥ 16 px (19 px on GOV.UK), line height 1.5. 1.2 scale. Weights 400 and 700. No thin text (≤ 300). |
| Color | Institutional blue (#1D4ED8 or #0B5CAB) or green (#00703C) for actions and links. Text #0B0C0C on white. Error red #D4351C, success green, warnings with an icon. Contrast ≥ 4.5:1 always, ≥ 7:1 for body text when the audience is older (AAA). High-contrast yellow focus #FFDD00 (GOV.UK standard). |
| Shape | Radius 0–6 px. 2 px borders on inputs (visible, not light gray). Buttons with a solid fill and a 2 px bottom shadow. No decorative shadows. Icons always with a text label. |
| Imagery | Little, and functional: real photos of real people from the audience (diverse, for real), simple step-by-step diagrams. No stock handshakes. |
| Spacing | Generous and regular: multiples of 8, tap targets ≥ 44 px (48 px for older audiences), 24–32 px between form fields. |
| Motion | Minimal and functional: transitions ≤ 200 ms, no decorative animation, nothing that flashes more than 3 times per second (WCAG 2.3.1). Respect the project's motion ceiling (touch ≤ 160 ms, reveal ≤ 700 ms, scene ≤ 1.2 s) and `prefers-reduced-motion`. |

## By surface

- **Web app / dashboard:** "one thing per page" in flows (GOV.UK pattern), a summary before confirming ("Check your answers"), a receipt with a reference number. Tables with real headers (`<th>`), labeled filters.
- **Mobile app:** biometrics and simple login, balance or status up front, main actions as large buttons with text, explicit confirmation before moving money. Scale with the system font size (Dynamic Type).
- **Landing page:** a headline that says what it is and who it is for in plain language, real regulator and security seals (in Brazil: Banco Central, ANS, Susep), clear prices and fees, a visible human support channel.
- **Website:** strong search, task-based navigation ("Get a copy of my bill", "Book a test"), help pages in plain language, contact and ombudsman in the footer.

## Starter tokens

```css
:root {
  --font-sans: "Public Sans", "IBM Plex Sans", "Atkinson Hyperlegible", Arial, sans-serif;
  --fs-1: 0.875rem; --fs-2: 1.125rem; --fs-3: 1.35rem; --fs-4: 1.62rem; --fs-5: 2.25rem; --fs-6: 3rem;
  --lh-body: 1.5;
  --c-text: #0B0C0C; --c-mute: #505A5F; --c-bg: #FFFFFF; --c-line: #B1B4B6;
  --c-action: #0B5CAB; --c-action-hover: #08467F;
  --c-error: #D4351C; --c-success: #00703C; --c-focus: #FFDD00;
  --radius: 4px; --input-border: 2px solid var(--c-text);
  --target: 44px;
}
:focus-visible { outline: 3px solid var(--c-focus); box-shadow: 0 0 0 6px var(--c-text); }
```

## References to study

- GOV.UK Design System and the Service Manual (design-system.service.gov.uk), US Web Design System (designsystem.digital.gov).
- IBM Carbon Design System, Brazil's Padrão Digital de Governo (gov.br/ds).
- WCAG 2.2 (W3C); *Don't Make Me Think*, Steve Krug; *Letting Go of the Words*, Ginny Redish (plain language).

## What makes it look generic

- Corporate blue + a handshake photo + "innovative solutions": that is the cliché, not the school.
- A light-gray placeholder used as the label: it disappears and fails contrast.
- Internal jargon ("expense reimbursement request submission"). Write "Claim expenses".
- A confirmation modal for everything except what moves money.

## Pairs with / clashes with

- **Pairs with:** `school-swiss` (grid and clarity), `school-utilitarian` (back office), `school-refined-minimalism` (premium banking version), `school-material` (predictable components).
- **Clashes with:** `school-maximalist`, `school-y2k-retrofuture`, `school-neobrutalism`, `school-pop-memphis`.

## Checklist

1. All text ≥ 4.5:1 (≥ 7:1 for body text with older audiences), with visible, high-contrast focus?
2. Body ≥ 16 px, no weight below 400, works at 200% zoom?
3. Single-column forms, visible label above the field, errors with text and an icon?
4. Plain language, no jargon, a verb on every button?
5. Does every action that moves money or data have a summary and a confirmation?
6. Full keyboard and screen-reader navigation (tested with VoiceOver or NVDA)?
