---
name: surface-mobile-app
description: Mobile apps (native or PWA): the thumb zone, tab bar, sheets, gestures that always have a button equivalent, safe areas, iOS vs Android differences and PWA care. Works with any visual school. Use when designing, coding or reviewing a phone app, PWA or mobile screen, or when someone asks for "mobile", "an app", "phone", "iOS", "Android", "bottom sheet", "tab bar".
---

# Mobile app · Everything within thumb's reach

Sources: Apple Human Interface Guidelines (iOS); Material Design 3 (Android); Steven Hoober, "How Do Users Really Hold Mobile Devices?" (UXmatters, 2013) and *Designing Mobile Interfaces*; Luke Wroblewski, *Mobile First*; web.dev (PWA). The school gives the look. This skill makes it fit the hand.

## Thumb zone

~49% of people use their phone one-handed (Hoober). The bottom third of the screen is easy; the top and top corners are hard.

- **Bottom (easy):** tabs, primary action, sheet buttons, keyboard.
- **Middle:** content and scrolling.
- **Top (hard):** title, back, rare actions (settings, search; create can sit top right if the app's convention calls for it).
- Keep destructive actions away from the primary one.

## Measurements

| Item | iOS | Android (Material 3) |
|---|---|---|
| Minimum target | 44 × 44 pt | 48 × 48 dp |
| Side margin | 16–20 pt | 16 dp |
| Tab bar | 49 pt + safe area | Navigation bar 80 dp |
| Body text | 17 pt (Body) | 16 sp (Body Large) |
| Large title | 34 pt (Large Title) | 28–32 sp (Headline) |

Respect the system text size (Dynamic Type / font scale): the layout doesn't break at 200%.

## Navigation

- **Tab bar** with 3–5 top-level destinations, icon + label, always visible on top-level screens. The active tab gets a filled icon and weight, not color alone.
- More than 5 destinations: "More", or rethink the architecture. A hamburger menu hides everything and cuts usage (NN/g).
- Navigation stack: back at top left + edge swipe (iOS) / system back button and gesture (Android). Never break back.
- Create action: top right or in the content; a FAB (Android) only if it is *the* app's action, and never over the tab bar in the thumb's way.

## Sheets and modals

- **Bottom sheet** for short actions, choices and details: visible grabber, 16–24 corners, closes by dragging down and also with a "Close" button.
- Heights: medium (~50%) and large (~90%). Content that needs more becomes a screen.
- Full-screen modal only for a task with a start and an end (create, edit, pay), with "Cancel" and the named action.
- System alert only for irreversible or critical things. 2 buttons max.

## Gestures

- **Every gesture has a named button equivalent.** Swipe to delete also exists under "…" → "Delete". A gesture is a shortcut, not the only path (WCAG 2.5.1).
- Standard gestures: tap, drag to scroll, pull to refresh, swipe a row for actions, pinch to zoom, edge swipe to go back (iOS). Don't invent gestures that fight the system.
- Row swipe: 2–3 actions max, the destructive one in red and with undo.

## Safe areas and keyboard

- Use `env(safe-area-inset-*)` (web) or SafeAreaView (native). Nothing important under the notch, the Dynamic Island or the home indicator.
- `viewport-fit=cover` in the PWA's viewport meta tag.
- When the keyboard opens, the active field and the send button stay visible.
- The right keyboard per field: `inputmode="numeric"`, `type="email"`, `autocomplete="one-time-code"`, `enterkeyhint="send"`.

## iOS vs Android

| Topic | iOS (HIG) | Android (Material 3) |
|---|---|---|
| Back | Top left + edge swipe | System gesture/button; arrow at the top |
| Title | Large title that shrinks on scroll | Top app bar, title on the left |
| Primary action | In the bar or the content | FAB allowed |
| Selection | Switch, segmented control | Switch, chips, radio |
| System font | SF Pro | Roboto / manufacturer font |
| Haptics | Light, on confirmations | Light, used less |

In a cross-platform app, keep the brand and respect each system's navigation conventions (Jakob's law).

## PWA

- Manifest with name, icons (192 and 512, maskable), `display: standalone`, theme color.
- Works offline, at minimum with the shell and the last state. Say when there's no connection.
- iOS: push notifications only for a PWA installed on the home screen; explain how to install when it makes sense, with no pop-up on the first visit.
- No `user-scalable=no`. No hover as the only way to reveal something.
- Taps respond within ≤ 100 ms: no 300 ms delay (`touch-action: manipulation`), visible pressed state.

## Foldables and adaptive screens

A structure rule, not a style. Source: https://muz.li/blog/apple-event-2026-iphone-duo-designers/ (the article names no apps).

- **Size class, not device:** compact (< 600 dp), medium (600–840 dp) and expanded (> 840 dp), Material's window size class breakpoints. Make 3 layouts, not 1 stretched. On the web, use container queries.
- **Even columns around the fold** (2, 4 or 6), so nothing lands in the crease. Nothing interactive on the fold or behind the camera.
- **Book posture:** alerts and actions move to the thumb side. **Tabletop posture:** what's for watching sits on top and the controls go below (video and calls).
- In expanded, the tab bar becomes a sidebar, and an icon-only toolbar moves to the vertical edge.
- Opening or folding the device is a reveal (≤ 700 ms) that keeps the focused item in place. With reduced motion, cut straight.
- Pitfall: stretching the phone layout across the open screen. Lines run to 200 characters and buttons end up far from the finger.

## Performance and motion

- Virtualize long lists. Images at screen size.
- Screen transitions 250–350 ms, sheets 300–400 ms, taps ≤ 160 ms (see `base-motion`).
- Skeletons instead of spinners; optimistic updates.

## Checklist

1. Primary action and tabs in the thumb zone?
2. 44 pt / 48 dp targets, text that respects the system scale?
3. Tab bar with 3–5 items, icon and label, no hamburger?
4. Sheet closes by dragging and with a button?
5. Every gesture has a button equivalent?
6. Safe areas and keyboard handled?
7. iOS and Android conventions respected?
8. PWA with a manifest, basic offline and no zoom blocking?
