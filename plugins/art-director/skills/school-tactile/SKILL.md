---
name: school-tactile
description: Tactile School / Neo-skeuomorphism. An interface that feels like a physical object: buttons that press in, knobs, sliders with tracks, materials (aluminum, matte plastic, rubber), consistent light and shadow, with safe contrast (neumorphism done right). Use when the product controls something physical or wants to be a pleasure to handle (audio and music, camera, smart home, hardware, cars, watches, calculators, creative tool apps) or when someone asks for something "tactile", "physical", "skeuomorphic", "neumorphism", "textured", "Teenage Engineering style", "Dieter Rams", "like a device".
---

# Tactile · You can feel the click

Skeuomorphism was the iPhone's language up to iOS 6 (2012): leather, wood, paper. Flat design killed the excess; neumorphism (2019–2020) tried to bring it back with soft shadows, but without contrast. The current version learns from both: objects with material and light, like Teenage Engineering's devices and Dieter Rams's Braun, but with clear contrast and state. Core idea: a control has weight, travel and response.

## When to use

- **Sectors:** audio and music production, camera and photo, smart home, hardware and IoT, car dashboards, watches and wearables, creative tools, calculators and utilities, premium electronics brands.
- **Audience:** enthusiasts, creators, people who love a well-made object.
- **Image it projects:** precise, pleasurable, premium, "made with care", engineering.

## When not to use

- Dense text and data interfaces: the material takes up space and distracts.
- Pure neumorphism (gray on gray, white and gray shadows): it fails contrast and nobody can tell what is a button. Use only the corrected version.
- Products with no link to a physical object and no budget for detail: it turns kitsch.

## The rules in numbers

| Area | Rule |
|---|---|
| Grid | Control panel: modules on a 4- or 8-column grid, like a device. Controls aligned in rows, labels always in the same position (above or below). |
| Type | Small technical sans, like the silkscreen printing on a device: Univers, DIN, Neue Haas Unica, Söhne Mono (free: Barlow, IBM Plex Sans, Space Mono, Chakra Petch). Labels in caps at 10–12 px with +6% tracking. Numeric display in mono or a 7-segment font (DSEG, free) for reading values. |
| Color | Neutral material: aluminum #D9DADC, light plastic #ECEBE7, graphite #2B2C2E. One strong signal accent (orange #FF5A1F like Teenage Engineering, or Braun red) only on the main control or record. LEDs: green, amber, red, always with text or a shape alongside. Text ≥ 4.5:1. |
| Shape | Radius consistent with the object (4–12 px on buttons, circles for knobs). Light always comes from the top left: a 1 px light highlight on top, shadow below. Button at rest raised (shadow 0 2px 0), pressed sunk (inset). A 1 px border always present to define the object. |
| Imagery | Studio product photography, real material with texture (brushed, subtle grain ≤ 6%). Stroke icons that recall silkscreen printing. |
| Spacing | Modular: 8 px base, modules with 16–24 px padding, control rows 12 px apart. Tap target ≥ 44 px, even for a small knob. |
| Motion | Physical and short: buttons press in within ≤ 80 ms, knobs turn 1:1 with the gesture, sliders have light resistance. Haptic feedback on mobile (`navigator.vibrate` or the native API) in steps. Respect the project's motion ceiling (touch ≤ 160 ms, reveal ≤ 700 ms, scene ≤ 1.2 s) and `prefers-reduced-motion`. |

## By surface

- **Web app / dashboard:** use tactile on the controls (toggle, slider, main button), not on tables. Device panel as an object card with state (LED + text).
- **Mobile app:** remote, mixer or camera: big knobs and sliders, the numeric value always visible, haptics on every step, an unmistakable record button.
- **Landing page:** photo or render of the device as the hero, interactive controls that respond to the mouse ("press here"), specs in a silkscreened technical table.
- **Website:** product catalog as an object showcase, aluminum-gray background, close-up details.

## Starter tokens

```css
:root {
  --font-sans: "IBM Plex Sans", "Barlow", system-ui, sans-serif;
  --font-mono: "Space Mono", "IBM Plex Mono", monospace;
  --c-body: #ECEBE7; --c-metal: #D9DADC; --c-graphite: #2B2C2E;
  --c-ink: #1C1C1E; --c-mute: #5E5E62; --c-line: #BDBDB8;
  --c-signal: #FF5A1F; --c-led-on: #2FBF71;
  --radius: 8px;
  --raised: 0 2px 0 #A9A9A4, inset 0 1px 0 rgba(255,255,255,.8), 0 0 0 1px var(--c-line);
  --pressed: inset 0 2px 4px rgba(0,0,0,.18), 0 0 0 1px var(--c-line);
  --label: 600 0.6875rem/1 var(--font-sans);
}
.btn { box-shadow: var(--raised); transition: box-shadow 80ms ease-out, transform 80ms ease-out; }
.btn:active { box-shadow: var(--pressed); transform: translateY(1px); }
```

## References to study

- Teenage Engineering (OP-1, OP-Z, TX-6), Braun and Dieter Rams (ET66 calculator, T3 radio).
- Nothing (Phone and Ear, interface with a dot-matrix font), Apple iOS up to version 6 (including what not to repeat).
- Michał Malewicz, "Neumorphism in user interfaces" (2019), and the accessibility critiques that followed.

## What makes it look generic

- Dribbble neumorphism: gray on gray, no border, no state. Nobody knows what is on.
- Light coming from different sides on different buttons.
- Leather and wood textures for no reason: that is 2010, not tactile.
- A beautiful button with no pressed feedback.

## Pairs with / clashes with

- **Pairs with:** `school-refined-minimalism` (Dieter Rams), `school-utilitarian` (reading values), `school-bauhaus` (function), `school-clay-3d` (soft volume).
- **Clashes with:** `school-neobrutalism`, `school-maximalist`, `school-editorial`, `school-y2k-retrofuture`.

## Checklist

1. Does every control show its on/off state without relying on shadow alone (LED, text, color + shape)?
2. Does light always come from the same direction?
3. Does a 1 px border define each object; is text ≥ 4.5:1?
4. Does the button press in on click within ≤ 80 ms; is the numeric value always visible?
5. Tap target ≥ 44 px, even on knobs?
6. Is the tactile treatment on the controls, not on lists and tables?
