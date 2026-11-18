---
name: trend-3d-webgl
description: 2026 3D and WebGL trends (Muzli curation). Immersive WebGL turns the site into a 3D place to explore, including real UI inside the 3D (Three.js). Shaders are liquid distortion, particles, a magnetic cursor, glass refracting a real h1 and holographic foil (Unicorn Studio, Spline, React Three Fiber). Hyper-real 3D uses realistic material and light, with the product as the hero. Use for studio, launch, event, game, portfolio, hardware or consumer-goods sites when someone asks for "an experience", "3D", "Three.js", "immersive", "Awwwards", "a liquid effect", "a shader", "a wow effect in the hero", "a 3D render", "a realistic product", "a keynote look". Never in an everyday tool.
---

# 3D and WebGL · One GPU hook, one place

Three ways to use the GPU as a hook. Pick **one** per site and put it in **one** section (usually the hero). Below it, a normal, fast page.

## 1. Immersive WebGL: the site is a place

- **What it is:** a real-time 3D world with metallic or abstract shapes, wireframe landscapes, data turned into terrain, a cinematic camera and game-like interaction.
- **The 2026 variation (Three.js Conf Paris):** real UI inside the 3D. Live, accessible HTML on 3D surfaces, a phone whose screen runs the actual app, a checkout that folds into a receipt. In Antoine Ménard's words: "real-time 3D doesn't have to look 3D".
- Dark background (lightness ≤ 12%), one or two strong lights, hard shadows. One main object or scene per screen.
- Short text on top, in up to 2 sizes, with contrast ≥ 4.5:1 over the **lightest** part of the scene.
- Buttons and forms stay real HTML, focusable by keyboard. The scene is decoration; the action is DOM.
- HTML in Canvas is still a Chrome origin trial: nothing in production that needs Safari or Firefox.
- **Examples:**
  - Looper (looper.basement.studio), Hubtown (hubtown.co.in), KVS Studio (kvs.services), Ivress (brand.ivress.co.jp), Joseph Santamaria (joseph-san.com). Sources: [April 2026](https://muz.li/blog/the-best-creative-websites-of-the-month-april-2026/), [March 2026](https://muz.li/blog/the-best-creative-websites-of-the-month-march-2026/).
  - Vittorio Retrivi's demos for Codrops, Ponpon Mania (Patrick Heng), Messenger (Abeto), Bruno Simon's portfolio. Source: [Three.js Conf Paris 2026](https://muz.li/blog/threejs-conf-paris-2026/).

## 2. Shaders: one effect, one element

- **What it is:** GPU effects that now come out of tools (Unicorn Studio, Spline, React Three Fiber, TSL).
  - Liquid distortion on images and type.
  - Glowing particles and a magnetic cursor.
  - Glass refraction over a live `<h1>`.
  - A card with holographic foil.
- **One** shader element per page: the hero, the main image or the product card.
- The distortion **settles back to rest**. Text is sharp when still, and the effect only shows on hover or scroll. On text, the displacement is 8 to 12 px at most.
- No shaders on body text, tables, forms or numbers.
- An effect of 200 KB at most, and the GPU stops off-screen (`IntersectionObserver`).
- In e-commerce, holographic foil on a card or packaging, on hover.
- **Examples:** Gentle Rain, fromanother.love and Edan Kwan's "cheap tricks" (Lusion). Sources: [web-design-trends-2026](https://muz.li/blog/web-design-trends-2026/) (#4) and Three.js Conf.

## 3. Hyper-real 3D: the product is the hero

- **What it is:** a render with real material and light, in a close-up that makes you want to touch it.
- One object per scene, taking 50 to 80% of the width, on a clean background (neutral or the brand color).
- Studio lighting: one key light, one rim light and a soft contact shadow. A close-up of the material detail (texture, stitching, metal) as the second image.
- Restrained type around it: 2 sizes and plenty of space.
- Images in AVIF/WebP at 2× for retina. Only the hero loads with priority.
- In e-commerce, 360° as an option, not the default. In an app, the card or device appears static on the home screen.
- **Examples:** Cash App's Evergreen design system, Leica M9 (Jeremy Shin), Nexx Helmets (André Pires). Source: [10 graphic design trends 2025](https://muz.li/blog/10-graphic-design-trends-2025/) (#3).

## When to use / When not to

- **Use:** creative studios, launches, events, games, premium tech, portfolios and configurators. Hyper-real fits hardware, electronics, cameras, helmets, consumer goods, fintech cards and brand systems.
- **Don't use in:**
  - Content-heavy products, pages that depend on SEO, or where accessibility is critical.
  - Audiences with weak devices.
  - Everyday B2B tools, articles, dashboards or checkout.
  - Serious health and finance.
  - Hyper-real without a budget for good 3D: a cheap render looks worse than an honest photo. It also doesn't fit a product with no object, like pure SaaS.
- **Web and mobile apps:** no. At most a rotatable 3D model on the product page, or a shader on the welcome or achievement screen.

## Within the motion ceiling

Ceiling: touch ≤ 160 ms, reveal ≤ 700 ms, scene ≤ 1.2 s including delays, loops excluded.

- A 3D scene, a background ripple or a product spinning on its own are a **loop**. Allowed, as long as they stop under `prefers-reduced-motion`.
- A camera transition between sections is a **scene**, up to 1.2 s. A long camera journey becomes short cuts: 2 or 3 reveals of up to 700 ms.
- A reaction to the cursor is a **touch**: it starts within 160 ms and settles within 700 ms.
- The hero entrance, a change of product angle and an entry distortion are a **reveal** (≤ 700 ms), and the text ends sharp.
- Loading: the HTML shows first and the scene comes in on top. Never hold the text back waiting for WebGL. A long render video is a video piece, not interface.
- There is always a static fallback (image or video) for weak devices and for `prefers-reduced-motion`.

## Pitfalls

- A pretty scene with no reason, behind a 5 s loading screen. If the 3D doesn't show the product or tell the story, it's just weight.
- A different shader in every section turns into a tool demo, not a brand.
- A phone floating in 2016-style perspective is a "Dribbble shot" (`anti-generic`). Hyper-real is material and light, not a dramatic angle.

## Checklist

1. One 3D hook, in one section only?
2. Do the text and the action appear before the scene loads? Are buttons focusable HTML?
3. Is there a static fallback, `prefers-reduced-motion` and the GPU stopped off-screen?
4. Text sharp at rest, with contrast ≥ 4.5:1 over the lightest part of the scene?
5. Camera transitions within 1.2 s, entrances within 700 ms?
6. Does the effect relate to the brand or the product? Does the render hold up in close-up without looking like plastic?
