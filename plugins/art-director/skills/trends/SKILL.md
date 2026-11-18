---
name: trends
description: Catalog of current UI and web trends (2025–2026), curated by Muzli (muz.li). Lists each trend, its evidence level, what it is good for and what to avoid, and points to the skill that applies it (trend-*, school-*, base-* or surface-*). Use when someone asks for "something current", "a trend", "what's hot right now", "Muzli references", "a 2026 look", or when the art direction needs a contemporary accent on top of the main school.
---

# Trends · What's hot, and what has already become a cliché

Muzli (muz.li) is a design inspiration publication: a browser extension, the "Weekly Designers Update" newsletter, the monthly "Best Creative Websites" lists and trend articles. Its X account (@usemuzli) spreads the same content. This catalog comes from the blog, read on 18 Nov 2026. The sources, and what was read or not, are in [references/muzli-2026.md](references/muzli-2026.md).

## The master rule

Muzli's April 2026 list sums up the month's best sites like this: **one bold hook (3D, color or illustration) + clean type + structured layout.**

- One hook per page, not three. Everything else stays calm.
- A trend is an **accent**, never the product's main school. Pick the school first (`art-direction`), then the trend.
- Before using any trend, run it through `anti-generic`. Many have already become the default AI-made look.

## Evidence level

- **measured:** Muzli counted it (e.g., 2,190 sites in the font analysis).
- **repeated:** it shows up across several lists and articles.
- **prediction:** Muzli bets on it but admits it isn't common yet.

## Catalog

The trends live in 7 trend skills (`trend-typography`, `trend-3d-webgl`, `trend-vivid-color`, `trend-collage`, `trend-dashboards`, `trend-playful-illustration`, `trend-cinematic-scroll`). The ones that are rules, not styles, live in the base and surface skills: microinteractions and sound in `base-motion`, foldable layout in `surface-mobile-app`, machine-readable in `surface-website`.

| Trend | Skill | Evidence | Good for | Avoid in |
|---|---|---|---|---|
| Immersive 3D/WebGL world + real UI inside the 3D | `trend-3d-webgl` | repeated | studio, launch, event, game, portfolio | everyday tools, SEO, weak devices |
| Shaders (liquid, particle, magnetic) | `trend-3d-webgl` | repeated | one hero moment, brand site | reading text, data |
| Cinematic scroll | `trend-cinematic-scroll` | repeated | brand story, report, premium | utility pages, docs |
| Restrained editorial minimalism | `school-editorial`, `school-japanese` | repeated | architecture, fashion, craft, luxury | a product that needs energy |
| One grotesque at scale | `trend-typography` | measured | almost everything, SaaS, studio | a brand that needs warmth or tradition |
| Serif headline, sans body | `trend-typography` | measured | wellness, health, editorial, premium service | anyone who wants to look original (it's becoming a cliché) |
| Mono as a third voice | `trend-typography` | measured | dev tools, AI, fintech, studio | consumer warmth, long text |
| Kinetic and variable type | `trend-typography` | repeated | brand, event, campaign, portfolio | dense UI, long reading |
| Retro / brutalism ("the human digital") | `school-neobrutalism` | repeated | culture, music, fashion, indie, agency | trust flows (checkout, health) |
| Primary modernist geometry | `school-bauhaus` | repeated | event, festival, culture | soft, caring brands |
| Saturated color ("goodbye, beige") | `trend-vivid-color` | prediction | consumer, food and drink, event | corporate dashboards |
| Playful illustration and 3D characters | `trend-playful-illustration` | repeated | consumer app, B2C, kids, report | luxury, serious finance, legal |
| Collage and mixed media | `trend-collage` | repeated | portfolio, culture, fashion | product UI, forms |
| Microinteractions | `base-motion` | repeated | all product UI | overuse, decorative loops |
| Vivid gradient | `trend-vivid-color` | repeated | AI, music, wellness, launch | if it slides into "purple on white" |
| Blur and surreal layers | `trend-collage` | repeated | fashion, art, music, portfolio | information |
| Liquid Glass / 2026 glass | `school-spatial-glass` | repeated | Apple apps, overlays on images | dense tables, low contrast |
| Dark dashboard with a neon accent | `trend-dashboards` | repeated | finance, crypto, security, fitness, ops | wellness, affordable consumer |
| Pastel / warm-neutral dashboard | `trend-dashboards` | repeated | health, wellness, travel, consumer SaaS | trading, dense ops |
| Data in physical space | `trend-dashboards` | repeated | health, real estate, sport, home, logistics | abstract metrics |
| Hyper-real 3D product | `trend-3d-webgl` | prediction | hardware, consumer goods, fintech | a team with no 3D budget |
| Minimalism with one shout | `trend-vivid-color` | prediction | packaging, D2C, landing | when the shouts multiply |
| Mismatched and vibrant | `school-maximalist` | prediction | young brand, entertainment, campaign | product UI |
| Adaptive and foldable layout | `surface-mobile-app` | repeated | iOS/Android app, tablet, foldable | — (a rule, not a style) |
| Sound as a design layer | `base-motion` | prediction | brand, notification, hardware | quiet settings, no way to turn it off |
| Machine-readable (MX) | `surface-website` | prediction | every site and landing page | — (structure, not style) |

## Note: Liquid Glass in 2026 (applies to `school-spatial-glass`)

From Muzli's article on Apple's 2026 event:

- Users can adjust the transparency, from clear to fully tinted. Contrast has to pass across that whole range, not just at the default.
- A darker outline on the glass and a stronger background blur, instead of tint alone.
- A consistent corner radius; app icons in layers of glass.
- In dashboards: frosted widgets over a blurred photo or map.
- Muzli points out that this is the same 25-year nostalgia cycle (Aqua → Frutiger Aero → Liquid Glass), not a new idea.

## How to pick a trend

1. Is the main school already chosen? If not, go back to `art-direction`.
2. Is the product's sector in the trend's "good for" column?
3. Does it fit the project's motion ceiling (touch ≤ 160 ms, reveal ≤ 700 ms, scene ≤ 1.2 s including delays, loops excluded)? If not, the trend's skill says how to adapt it.
4. Does it pass `anti-generic`?
5. Use it in **one** place (hero, empty state, headline number, illustration), not across the whole product.
