---
name: school-spatial-glass
description: Spatial Glass (glassmorphism, Apple Liquid Glass, visionOS). Translucent layers with background blur, light edges, depth through layering, controls floating over the content. Use when the product wants to look futuristic, light, immersive and premium (Apple apps, music and media, weather, travel, wallets and consumer fintech, consumer AI, smart home, AR/VR, players, widgets) or when someone asks for "glass", "glassy", "translucent", "Liquid Glass", "visionOS", "frosted", "iOS 26", "floating".
---

# Spatial Glass · Layers over the world

Background blur already existed in Windows Vista (Aero, 2007) and iOS 7 (2013). The term *glassmorphism* arrived in 2020 (Michal Malewicz). In 2023 visionOS made glass the base material of space, and in 2025 Apple launched Liquid Glass across all its platforms (iOS 26). Core idea: the interface is a layer of glass over the content; the content is the hero and the controls float.

## When to use

- **Sectors:** music, video and photos, weather, travel, wallets and payments, smart home, consumer AI, players, Apple-first apps, AR/VR, car dashboards.
- **Audience:** 18–45, tech consumers, iOS users.
- **Image it projects:** futuristic, light, premium, immersive, "Apple-native".

## When not to use

- Backgrounds without rich imagery: glass over flat white has nothing to blur and turns gray.
- Dense tools and long reading: contrast shifts with the background.
- Low-vision audiences or weak devices (blur costs GPU).

## The rules in numbers

| Area | Rule |
|---|---|
| Grid | Full-screen content; controls in floating capsules 12–16 px from the edges. The tab bar floats, it is not docked. Layers: background → content → glass → control. At most 2 stacked glass layers. |
| Type | SF Pro (Apple), Inter, Manrope, Plus Jakarta Sans (free). Weights 500–600 on glass (glass eats weight). Body 15–17 px. Display 600–700 with −2% tracking. |
| Color | Light glass: rgba(255,255,255,.55–.72) + 20–40 px blur + 160–180% saturate. Dark glass: rgba(20,20,24,.45–.6). Light edge: 1 px rgba(255,255,255,.35) on top and .08 at the bottom. Background with an image or a rich gradient (aurora, mesh). Text always at ≥ 4.5:1 contrast, measured on the worst patch of the background. |
| Shape | Large, concentric radii: capsule on controls, 24–32 px on panels, inner radius = outer − padding. Soft, wide shadow (0 8px 32px rgba(0,0,0,.12)). Filled SF Symbols on floating controls. |
| Imagery | Photos, album art, maps, video as a living background. A mesh gradient when there is no content. |
| Spacing | Inner panel padding 16–24. Controls at 44 pt minimum. The content behind must breathe, not be covered. |
| Motion | Glass that adapts: capsule morphing (a tab becomes a search bar), reflections that react to movement, 200–400 ms with a soft spring. Respect the project's motion ceiling (default: touch ≤ 160 ms, reveal ≤ 700 ms, scene ≤ 1.2 s) and `prefers-reduced-transparency` / `prefers-reduced-motion`. |

## By surface

- **Web app / dashboard:** glass only in navigation and overlays (sidebar, command menu, floating toolbar). Data cards on an opaque surface for reading.
- **Mobile app:** tab bar in a floating glass capsule, round glass buttons over media, glass sheets that turn opaque when expanded.
- **Landing page:** aurora gradient or photo background, feature cards in glass with a light edge, the real product in a device mockup.
- **Website:** use sparingly: a sticky glass header, the rest opaque.

## Starter tokens

```css
:root {
  --font-sans: "Inter", -apple-system, "SF Pro Display", system-ui, sans-serif;
  --glass-light: rgba(255,255,255,.62); --glass-dark: rgba(20,20,24,.52);
  --glass-blur: blur(28px) saturate(170%);
  --glass-edge: inset 0 1px 0 rgba(255,255,255,.35), inset 0 -1px 0 rgba(255,255,255,.08);
  --glass-shadow: 0 8px 32px rgba(0,0,0,.12);
  --c-ink: #0B0B0F; --c-ink-on-dark: #FFFFFF;
  --radius-panel: 28px; --radius-pill: 9999px;
  --dur: 280ms; --spring: cubic-bezier(.34,1.2,.64,1);
}
.glass { background: var(--glass-light); backdrop-filter: var(--glass-blur); -webkit-backdrop-filter: var(--glass-blur); box-shadow: var(--glass-edge), var(--glass-shadow); }
@media (prefers-reduced-transparency: reduce) { .glass { background: #F2F2F5; backdrop-filter: none; } }
```

## References to study

- Apple: Liquid Glass (WWDC 2025), visionOS Human Interface Guidelines.
- Apps: Apple Music, Weather, Photos on iOS 26; Arc (glass phase).
- Michal Malewicz, the article "Glassmorphism in user interfaces" (2020).

## What makes it look generic

- Glass on a flat background, or glass on glass on glass.
- Thin white text on light glass: it disappears.
- Generic purple-pink gradient blobs as the only background.

## Pairs with / clashes with

- **Pairs with:** `school-refined-minimalism`, `school-dark-tech`, `school-bento`, `school-y2k-retrofuture` (chrome version).
- **Clashes with:** `school-neobrutalism`, `school-editorial`, `school-handcrafted`, `school-swiss`, `school-bauhaus`.

## Checklist

1. Is there rich content behind the glass?
2. At most 2 stacked glass layers?
3. Contrast ≥ 4.5:1 measured on the worst patch of the background?
4. Concentric radii (inner = outer − padding)?
5. An opaque fallback for `prefers-reduced-transparency`?
6. Do data and long reading sit on an opaque surface?
