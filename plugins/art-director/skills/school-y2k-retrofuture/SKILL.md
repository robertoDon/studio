---
name: school-y2k-retrofuture
description: Y2K/Retrofuture School. Chrome, holographic, iridescent, pixel and bitmap, 2000s system interfaces, acid gradients, wide techno type. Use when the product sells nostalgia, music, youth fashion, internet culture, games, parties or limited drops, or when someone asks for something "Y2K", "2000s", "chrome", "holographic", "retrofuturistic", "cyber", "nostalgic", "vaporwave", "Windows 98", "pixel".
---

# Y2K/Retrofuture · The future we imagined in 2000

The turn of the millennium: the translucent iMac G3, Winamp, MSN, Hype Williams music videos, Designers Republic sleeves. Gen Z rediscovered this aesthetic as nostalgia for something it never lived. Core idea: technology as a shiny toy, optimistic and a little over the top.

## When to use

- **Sectors:** music (labels, festivals, artists), streetwear, drops and collectibles, indie games, internet culture, bars and parties, youth cosmetics.
- **Audience:** Gen Z and nostalgic millennials, pop culture audiences, fan niches.
- **Image it projects:** bold, fun, nostalgic, "internet cool", limited edition.

## When not to use

- Work tools, serious finance, health, B2B. It looks like a joke or a scam.
- Products that must last 5 years without a redesign: it is a short-cycle aesthetic.
- Audiences over 45 with no affection for the reference.
- Use it as a layer (campaign, landing, drop), not as the base system of a daily-use app.

## The rules in numbers

| Area | Rule |
|---|---|
| Grid | Floating windows and panels over a background; a 12-column grid underneath, with "system" elements (title bar, window buttons) on top. At most 3 overlapping windows per screen. |
| Type | Wide or techno display: Monument Extended, Druk Wide, Eurostile, Microgramma (free: Syncopate, Orbitron, Michroma, Unbounded). Pixel for detail: VT323, Silkscreen, Press Start 2P (only ≥ 16 px and on short labels). Readable body in a neutral sans (Inter, Space Grotesk). 1.5 scale. |
| Color | Black background #0A0A0F or light lilac #E8E4FF. Acid gradients (lime #C6FF00, cyan #00F0FF, magenta #FF2BD6, silver). Chrome = a linear gradient of 4–6 gray/white stops. Text always on a solid area at 4.5:1, never on holographic. |
| Shape | Inflated pills and capsules, radius 999 px, beveled edges (1 px inner shadow, light on top, dark below). Four-point stars, orbits, wireframe globes. |
| Imagery | Chrome 3D renders, colorful translucent objects (iMac G3 style), blown-out flash photography, subtle CRT texture or scanlines (opacity ≤ 8%). |
| Spacing | Denser than minimal: 16–24 px between elements, 80 px sections. The background can carry a pattern (perspective grid, stars). |
| Motion | A shine sweeping across the chrome on hover ≤ 160 ms; a window that "opens" scaling from 0.95 to 1 in ≤ 300 ms. 3D object rotation and marquees count as loops (exempt from the rule), but must be pausable. Respect the project's motion ceiling (touch ≤ 160 ms, reveal ≤ 700 ms, scene ≤ 1.2 s) and `prefers-reduced-motion`. |

## By surface

- **Web app / dashboard:** use it only in details (chrome logo, beveled primary button, a holographic sticker on achievement). A dark, neutral base for working.
- **Mobile app:** capsule cards, a primary button with an acid gradient and black text, pixel icons on labels. A drop or unlock screen can be the full Y2K moment.
- **Landing page:** hero with a spinning chrome 3D object, a wide all-caps headline, OS-style windows with the product inside, a countdown to the drop.
- **Website:** desktop-style navigation (folder icons that open windows), a custom cursor, a 404 page as a system error screen.

## Starter tokens

```css
:root {
  --font-display: "Unbounded", "Syncopate", system-ui, sans-serif;
  --font-pixel: "VT323", "Silkscreen", monospace;
  --font-sans: "Space Grotesk", "Inter", system-ui, sans-serif;
  --c-void: #0A0A0F; --c-text: #F4F4F8; --c-mute: #A0A0B8;
  --c-lime: #C6FF00; --c-cyan: #00F0FF; --c-magenta: #FF2BD6;
  --chrome: linear-gradient(180deg, #FFFFFF 0%, #B8B8C8 30%, #F0F0F5 50%, #6E6E80 70%, #E0E0EA 100%);
  --holo: linear-gradient(120deg, #FF2BD6, #00F0FF, #C6FF00, #FF2BD6);
  --radius-pill: 999px;
  --bevel: inset 0 1px 0 rgba(255,255,255,.6), inset 0 -1px 0 rgba(0,0,0,.4);
}
```

## References to study

- The Designers Republic (Warp Records sleeves, Wipeout).
- Apple's iMac G3 and "clamshell" iBook (1998–2001), Winamp and Windows 98/XP interfaces.
- Artist sleeves and sites: Charli XCX (*Pop 2* era), Bladee/Drain Gang; brands like Diesel and Blumarine in recent collections.

## What makes it look generic

- A holographic gradient behind text: illegible and cheap.
- Piling every reference (vaporwave + cyberpunk + Windows 98 + chrome) onto the same screen. Pick one decade and one register.
- A pixel font in a paragraph. Pixel is an accent.
- Making the whole app like this: people tire of it in a week.

## Pairs with / clashes with

- **Pairs with:** `school-maximalist`, `school-pop-memphis`, `school-dark-tech` (dark base), `school-spatial-glass` (translucency), `school-neobrutalism`.
- **Clashes with:** `school-quiet-luxury`, `school-trusted-corporate`, `school-scandinavian`, `school-handcrafted`, `school-japanese`, `school-organic`, `school-tactile`.

## Checklist

1. Did I pick a single register (2000s chrome, or system pixel, or holographic)?
2. Is all text on a solid area at 4.5:1?
3. Does the pixel font appear only on short labels, ≥ 16 px?
4. Is the aesthetic in the showcase and the key moments, while daily work stays neutral?
5. Are loops pausable, and do they respect `prefers-reduced-motion`?
6. Does it work at 375 px without the windows turning into a mess?
