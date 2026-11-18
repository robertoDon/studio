---
name: base-motion
description: Interface motion: types (touch, reveal, scene, loop) with duration caps, easing curves, choreography, reduced motion, and what never to animate. Use when creating or reviewing an animation, transition, micro-interaction, hover, screen change or animated onboarding, or when the user asks to "make it smoother", "animate this", "transition", "motion".
---

# Motion · It explains, it doesn't decorate

Sources: Material Design 3 (Motion: easing and duration); Apple HIG (Motion); Val Head, *Designing Interface Animation*; Nielsen Norman Group ("Animation Duration"; "Executing UX Animations"); WCAG 2.2 2.3.3. Motion exists to say where something came from, where it went and what changed. If it explains nothing, it goes.

## Cap per type

The plugin's default rule. **If the project has its own stricter rule (CLAUDE.md, DESIGN.md), the project's rule wins.** Over the cap, cut it.

| Type | Examples | Cap | Typical |
|---|---|---|---|
| **Touch** | Hover, button press, chip, toggle, focus | **≤ 160 ms** | 100–150 ms |
| **Reveal** | Menu, tooltip, modal, sheet, toast, item entering a list | **≤ 700 ms** | 200–350 ms |
| **Scene** | Full sequence, screen change, onboarding, view transition | **≤ 1.2 s including delays** | 400–800 ms |
| **Loop** | Loading, pulse, skeleton | Outside the rule | Slow and quiet (1–2 s per cycle) |

Exits are faster than entrances: an exit takes ~70% of the entrance duration. Longer distance calls for a bit more time; on mobile, a bit less than on desktop.

## Curves

| Situation | Curve | CSS |
|---|---|---|
| Something enters | Decelerate (ease-out) | `cubic-bezier(0.2, 0, 0, 1)` |
| Something exits | Accelerate (ease-in) | `cubic-bezier(0.3, 0, 1, 1)` |
| Something moves on screen | Standard (ease-in-out) | `cubic-bezier(0.2, 0, 0, 1)` (Material standard) |
| Touch, hover | Short ease-out | `ease-out` |
| Spring (drag, drop, sheet) | Spring without excess bounce | High damping; at most 1 light overshoot |

Never `linear` on position changes (it looks robotic); `linear` only for loop rotation and progress.

## Choreography

- **One lead at a time.** The eye follows one thing. The rest waits or follows with less amplitude.
- **Stagger:** 20–40 ms between items, at most 6–8 staggered items; after that, everything enters together. Count the total delay against the scene cap.
- **Spatial continuity:** what opens from a button grows out of the button (transform origin). A card that becomes a page grows from the card.
- **Short travel:** entrances use 8–24 px of translation + opacity. Nothing flies in from the screen edge without a reason.
- **Common fate:** things in the same group move together.

## What to animate

- `transform` and `opacity`: they run on the compositor, at 60 fps. Always prefer them.
- Avoid animating `width`, `height`, `top`, `left`, large `box-shadow` and `filter: blur` over large areas: they trigger layout/paint and stutter on mobile. Use `transform: scale` or FLIP.

## What never to animate

- Text the person needs to read while it moves.
- The main content on first load just to "look nice" (it delays LCP and reading).
- Form errors with a long shake (at most one 300 ms shake, and only with a message).
- Anything that flashes more than 3 times per second.
- Full-screen spinners: prefer a skeleton in the final shape.
- Jumping layout (CLS). Reserve the space before the content arrives.

## Micro-interactions

Small responses with a purpose, like a button that bounces lightly, a toggle with a physical feel, or a field that reacts as you type. It is the safest trend in the Muzli catalog: it fits all product UI. Source: https://muz.li/blog/web-design-trends-2026/ (#5), with examples from 21st.dev and React Bits.

- Every micro-interaction answers an action by the person. No trigger, no micro-interaction.
- Click: scale to 0.96–0.98 and back in ≤ 160 ms.
- Toggle: the knob slides in 100–160 ms, with a 5–10% overshoot.
- Field: border and label change in ≤ 150 ms. Validation shows when the person leaves the field, not on every keystroke.
- Success shows where the action happened (the button becomes "Sent ✓"), not in a toast in the corner. A check mark that draws itself counts as a reveal: ≤ 700 ms.
- Where to use: primary button, toggle, copy, save, add to cart, landing CTA.
- Trap: animating what nobody touched. "Fade-up on everything on scroll" is slop (`anti-generic`).

## Sound and haptics

Evidence: a Muzli **forecast**, still uncommon. Source: https://muz.li/blog/web-design-trends-2026/ (#7), example brand.ledger.com.

- Short sounds: 50–300 ms on touch, up to 1 s for an achievement. Low volume (−18 to −24 LUFS as a reference; that range is our own rule).
- 3 to 5 sounds in the whole product, all from the same timbre family.
- Every sound comes with visual feedback. Sound is never the only information.
- On the web, sound is off by default, with a visible control to turn it on. In an app, respect silent mode and pair sound with haptics.
- Nothing plays without an action by the person. Continuous ambient sound counts as a loop and only plays if the person turns it on.
- Where to use: brand sites, hardware, payment confirmation, habit products, games.
- Where not to use: tools used for hours, offices, hospitals.

## Reduced motion

```css
@media (prefers-reduced-motion: reduce) {
  * { animation-duration: .01ms !important; transition-duration: .01ms !important; }
}
```

With reduced motion: swap movement, zoom and parallax for a fade of ≤ 150 ms or a hard cut. Decorative loops stop. Video autoplay stops.

## Starter tokens

```css
:root {
  --dur-touch: 120ms; --dur-reveal: 240ms; --dur-scene: 600ms;
  --ease-out: cubic-bezier(0.2, 0, 0, 1);
  --ease-in: cubic-bezier(0.3, 0, 1, 1);
  --stagger: 30ms;
}
```

## Checklist

1. Does each animation explain something (origin, destination, change)?
2. Touch ≤ 160 ms, reveal ≤ 700 ms, scene ≤ 1.2 s with delays (or the project's rule, if stricter)?
3. Entrances with ease-out, faster exits with ease-in?
4. Only `transform` and `opacity`?
5. One lead at a time, stagger ≤ 40 ms?
6. `prefers-reduced-motion` respected?
7. Nothing flashes, nothing jumps, no full-screen spinner?
