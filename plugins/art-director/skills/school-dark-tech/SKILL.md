---
name: school-dark-tech
description: Dark tech (Linear, Vercel, Raycast). Near-black background, layered grays, subtle glow and gradients, luminous 1 px borders, mono type for details, keyboard shortcuts, pixel precision. Use when the product is for developers, product teams, AI, infrastructure, serious crypto, or SaaS that wants to feel fast, precise and cutting-edge (dev tools, APIs, AI, analytics, security, productivity for power users), or when the user asks for "Linear style", "Vercel style", "a beautiful dark mode", "techy", "developer look", "serious futuristic", "AI".
---

# Dark Tech · Precision in the dark

Born from devtools culture (dark editors, terminals) and refined by Linear (2019–), Vercel, Raycast, Supabase and the wave of AI products. Core idea: dark is not a style, it's focus. Many layered grays, one controlled glow and perceived speed. Every pixel is intentional.

## When to use

- **Sectors:** developer tools, APIs, cloud and infrastructure, AI and LLMs, security, product analytics, project management for technical teams, institutional crypto.
- **Audience:** 22–45, technical, power users who live on the keyboard.
- **Image it projects:** fast, precise, cutting-edge, serious, "made by engineers who care about design".

## When not to use

- General audiences with low digital fluency, health, family, food: dark feels cold and technical.
- Long-form reading (blog, extensive documentation): offer a light theme.
- When the product itself isn't fast: the aesthetic promises speed.

## The rules in numbers

| Area | Rule |
|---|---|
| Grid | 12 columns, max width 1120–1200 px. In the app: 220–260 px sidebar, medium-high content density. Pixel-exact alignment, 4 px grid. |
| Type | Inter, Geist, Söhne (free: Inter, Geist, Manrope) + mono for code, shortcuts and numbers: Geist Mono, JetBrains Mono, Berkeley Mono (paid). Display 500–600 with tracking −2% to −3%. Body 13–15 px in the app, 16–18 on the landing. White → gray gradient text only on headlines. |
| Color | Background #08090A to #0B0B0F, stepped surfaces: #111113, #18181B, #1F1F23. Borders rgba(255,255,255,.06–.10). Text: #F7F8F8, secondary #8A8F98 (≥ 4.5:1). One accent: violet #5E6AD2, blue #3B82F6 or green #3ECF8E. Glow: a radial-gradient of the accent at 8–15% opacity behind the hero. |
| Shape | Radius 6–8 px on controls, 12 px on cards. 1 px border instead of shadow. Highlight with a very subtle gradient border (conic or linear). Icons with a 1.5 stroke at 16 px. |
| Imagery | Real interface screenshots, high resolution, with slight perspective and reflection. A dot or line grid at 4% as texture. No cute illustrations. |
| Spacing | Dense app (32–36 px rows, 8–12 padding). Landing with sections ≥ 120 px and plenty of dark around the product. |
| Motion | Fast and crisp: 100–150 ms ease-out in UI; a glow that follows the cursor; text that reveals in a scene of up to 1.2 s on the landing. Nothing blinks. Respect the project's motion ceiling (default: touch ≤ 160 ms, reveal ≤ 700 ms, scene ≤ 1.2 s). |

## By surface

- **Web app / dashboard:** sidebar with shortcuts (`G` + letter), `⌘K` for everything, dense list with status as icon + text, detail panel on the right, optimistic updates.
- **Mobile app:** dark with stepped surfaces, dense lists but 44 pt touch targets, swipe actions with an equivalent button.
- **Landing page:** hero with a gradient-text headline, a radial accent glow behind it, a floating real screenshot, client logos in gray, sections with 1 px borders and a dot grid.
- **Company website / docs:** documentation with an optional light theme, mono code with discreet highlighting, a dated changelog.

## Starter tokens

```css
:root {
  --font-sans: "Geist", "Inter", system-ui, sans-serif;
  --font-mono: "Geist Mono", "JetBrains Mono", ui-monospace, monospace;
  --c-bg: #08090A; --c-1: #111113; --c-2: #18181B; --c-3: #1F1F23;
  --c-line: rgba(255,255,255,.08); --c-ink: #F7F8F8; --c-mute: #8A8F98;
  --c-accent: #5E6AD2; --glow: radial-gradient(600px 300px at 50% 0%, rgba(94,106,210,.15), transparent 70%);
  --radius-control: 6px; --radius-card: 12px;
  --dur: 120ms; --ease: cubic-bezier(.2,0,0,1);
}
.headline { background: linear-gradient(180deg,#FFF 30%,#9CA3AF); -webkit-background-clip: text; color: transparent; }
```

## References to study

- linear.app (and the essay "The Linear Method"), vercel.com, raycast.com, supabase.com, resend.com, cursor.com.
- Rauno Freiberg (rauno.me) and his interaction essays.
- Paco Coursey, Emil Kowalski (sonner, vaul).

## What makes it look generic

- Pure black #000 with pure white text: tiring, and it reads as a "dark template".
- A giant purple-blue gradient on everything: the glow has to be subtle.
- A glow on every card. One glow per fold.

## Pairs with / clashes with

- **Pairs with:** `school-utilitarian`, `school-bento`, `school-spatial-glass`, `school-swiss`, `school-refined-minimalism`, `school-sport`, `school-y2k-retrofuture`.
- **Clashes with:** `school-scandinavian`, `school-handcrafted`, `school-organic`, `school-clay-3d`, `school-editorial`.

## Checklist

1. Near-black background (not #000) with 3–4 surface steps?
2. 1 px border instead of shadow?
3. Secondary text ≥ 4.5:1 and a single accent?
4. Frequent actions with shortcuts and `⌘K`?
5. UI transitions ≤ 150 ms, nothing blinking?
6. A real product screenshot in the showcase?
