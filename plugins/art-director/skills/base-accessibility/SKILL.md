---
name: base-accessibility
description: WCAG 2.2 level AA applied to screens: 4.5:1 and 3:1 contrast, 24/44 px touch targets, visible focus, keyboard, screen readers, prefers-reduced-motion, state that never relies on color alone. Use when designing, coding or reviewing any interface, when choosing colors, or when the user asks for "accessible", "WCAG", "contrast", "a11y", "screen reader", "color blindness".
---

# Accessibility · AA is the floor, always

Source: W3C, *Web Content Accessibility Guidelines (WCAG) 2.2*, Recommendation of October 2023. Target: level AA everywhere. It is not a final step and not a design school: it is the floor. No school gives you leave to break it.

## Contrast (1.4.3, 1.4.11)

| What | AA minimum | Note |
|---|---|---|
| Normal text (< 24 px, or < 18.66 px bold) | **4.5:1** | Includes placeholder text if it carries information. |
| Large text (≥ 24 px, or ≥ 18.66 px bold) | **3:1** | |
| Components and graphics (field border, icon button, chart line, focus ring) | **3:1** against the neighbor | |
| Disabled text and logos | Exempt | Keep them legible anyway. |

Calculate with the WCAG 2.x relative luminance formula. An "elegant" #999 gray on white gives 2.85:1: fail. The lightest gray that passes on white is ~#767676 (4.54:1). Test dark mode too: the pair changes.

## Touch and click targets (2.5.8)

- WCAG 2.2 AA: target of **at least 24 × 24 px** (or clear space that makes up 24 px).
- Platform guidance, which counts as a house rule: **44 × 44 pt** (Apple HIG) and **48 × 48 dp** (Material). Use 44 as the default.
- A small icon can be drawn at 20 px, but its hit area is 44.

## Focus and keyboard (2.1.1, 2.4.7, 2.4.11, 2.4.3)

- Everything clickable is reachable with Tab and activates with Enter/Space. Esc closes modals and menus.
- **Focus always visible**: a 2 px ring at 3:1 contrast, offset 2 px from the element. Never `outline: none` without a replacement. Use `:focus-visible`.
- Focus must not hide behind a sticky bar or cookie banner (2.4.11, new in 2.2).
- Tab order follows visual order. A modal traps focus inside and returns it on close.
- A "Skip to content" link as the first focus stop on a website.

## Screen readers (1.1.1, 1.3.1, 4.1.2)

- Semantic HTML first: `button` for actions, `a` for navigation, `h1`–`h6` in order, `nav`, `main`, `label` tied to its field. ARIA only where HTML falls short.
- An informative image has `alt` text that says what it communicates; a decorative one has `alt=""`.
- An icon-only button has a name (`aria-label="Close"`).
- Dynamic changes (toast, error, loading) are announced with `aria-live="polite"`.
- Test for real: VoiceOver (iOS/macOS), TalkBack (Android), NVDA (Windows).

## Color and state (1.4.1)

- **State never by color alone.** Error = color + icon + text. Inline link = color + underline. Chart = color + label or pattern.
- ~8% of men have some color vision deficiency. Red and green side by side with no other cue is forbidden.

## Motion (2.3.3, 2.2.2)

- Respect `prefers-reduced-motion: reduce`: swap movement and zoom for a short fade, or nothing.
- Nothing flashes more than 3 times per second (2.3.1).
- Carousels and auto-playing animation longer than 5 s get a pause control.

```css
@media (prefers-reduced-motion: reduce) {
  *, *::before, *::after { animation-duration: .01ms !important; transition-duration: .01ms !important; scroll-behavior: auto !important; }
}
```

## Text and layout (1.4.4, 1.4.10, 1.4.12)

- 200% zoom without breaking. Layout works at 320 px wide with no horizontal scroll (reflow).
- Sizes in `rem`; never block zoom on mobile (`user-scalable=no` is forbidden).
- Body ≥ 16 px. Line height ≥ 1.5 on body text reads better.

## Forms (3.3.x)

- Always a visible label (a placeholder is not a label).
- Errors identified in text, next to the field, with a suggested fix (3.3.3).
- Don't ask again for what was already entered in the same flow (3.3.7, new in 2.2).
- Login with no cognitive test: allow pasting passwords and password managers (3.3.8, new in 2.2).

## Checklist

1. Does all text pass 4.5:1 (3:1 if large) in both themes?
2. Do field borders, icon buttons and focus pass 3:1?
3. Targets of 44 px (absolute minimum 24)?
4. Can everything be used by keyboard alone, with focus always visible?
5. Semantic HTML, correct `alt`, icon buttons with a name?
6. No state relies on color alone?
7. `prefers-reduced-motion` respected?
8. Works at 320 px and at 200% zoom?
9. Every field has a visible label, and every error a fix?
