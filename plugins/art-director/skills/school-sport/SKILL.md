---
name: school-sport
description: Sport School / Kinetic. Energy and motion: heavy condensed italic type, high contrast, diagonals, huge numbers, cut-out action photos, team colors. Use when the product is about sport, fitness, running, gyms, teams and clubs, competitions, sports nutrition, outdoor and adventure, or when someone asks for something "energetic", "aggressive", "intense", "sporty", "Nike style", "Strava", "ESPN", "athlete", "performance". Do not use for gambling.
---

# Sport · Everything seems to be moving

It comes from sports posters and jerseys, Nike's campaigns (Wieden+Kennedy), ESPN and Formula 1 broadcasts, and training apps (Strava, Nike Run Club, Whoop). Core idea: the screen has speed. The type leans forward, the number is the hero and the contrast is at maximum.

## When to use

- **Sectors:** fitness and gyms, running and cycling, training apps, teams and clubs, amateur leagues, tournaments, sports nutrition, sporting goods, outdoor and adventure, esports.
- **Audience:** amateur and pro athletes, fans, people who measure progress in numbers.
- **Image it projects:** energy, strength, pushing past limits, speed, "let's go".

## When not to use

- Calm wellness (restorative yoga, meditation, therapy): too aggressive.
- Sports betting: this school must not be used to encourage gambling; the urgency-and-win aesthetic makes the harm worse.
- The club's admin tools (finance, registration): put the energy in the showcase and the results, and keep the work screens clean.

## The rules in numbers

| Area | Rule |
|---|---|
| Grid | 12 columns with diagonals: elements tilted between −8° and −12° (always in the same direction, forward). Bands that cross the screen. Photos bleeding off the edge. |
| Type | Condensed and heavy for display: Druk Condensed, Tungsten, Nike Futura Condensed Extra Bold, Barlow Condensed, Anton, Bebas Neue, Oswald (free: Anton, Bebas Neue, Barlow Condensed 800, Big Shoulders Display). All caps; italic or oblique allowed. Display at 72–160 px on desktop, tracking −1% to 0. Body in a neutral sans (Inter, Barlow). Tabular numbers, always. |
| Color | High contrast: black #0B0B0B and white. One energy accent (volt #D7FF1E, Strava orange #FC4C02, red #FF2D2D) or the team color. At most 2 colors besides black and white. Gradients only for speed (color → transparent, on the diagonal). |
| Shape | Radius 0–8 px; angled cuts (clip-path at 8–12°) on buttons and bands. No soft shadow; depth comes from overlap and contrast. |
| Imagery | Real action photography: frozen motion, sweat, hard light, the athlete cut out over a color background. Motion blur allowed. Route maps and pace charts as imagery. |
| Spacing | Dense and punchy: blocks butted together, the headline cutting into the photo. Sections of 64–96 px. The big number needs air around it (≥ 24 px). |
| Motion | Fast and directional: side entry with a 24–40 px offset in 200–300 ms, strong ease-out; number counters climbing in ≤ 700 ms. Touch ≤ 120 ms. Respect the project's motion ceiling (touch ≤ 160 ms, reveal ≤ 700 ms, scene ≤ 1.2 s) and `prefers-reduced-motion`. |

## By surface

- **Web app / dashboard:** the workout's headline number (distance, pace, goals) giant and condensed, with a small unit. Pace chart as a line in the accent. Leaderboard as a dense table with a large rank.
- **Mobile app:** live workout screen with 1–3 huge numbers readable on the run (≥ 48 px), a huge pause button (≥ 64 px). Post-workout summary as a shareable poster.
- **Landing page:** full-screen action photo, a condensed all-caps headline of 2–3 words, a diagonal band carrying the CTA. Social proof with numbers ("2.4 million km run").
- **Website (club):** crest and team colors, fixtures table, live score, news with match photos. Calendar in cards with a huge date.

## Starter tokens

```css
:root {
  --font-display: "Anton", "Bebas Neue", "Barlow Condensed", Impact, sans-serif;
  --font-sans: "Barlow", "Inter", system-ui, sans-serif;
  --fs-1: 0.875rem; --fs-2: 1rem; --fs-3: 1.5rem; --fs-4: 2.25rem; --fs-5: 4rem; --fs-6: 7.5rem;
  --c-black: #0B0B0B; --c-white: #FFFFFF; --c-mute: #9A9A9A;
  --c-energy: #D7FF1E;
  --skew: -10deg;
  --cut: polygon(8% 0, 100% 0, 92% 100%, 0 100%);
  --radius: 4px;
  --ease-fast: cubic-bezier(.2, .9, .1, 1);
}
.number { font-family: var(--font-display); font-variant-numeric: tabular-nums; }
```

## References to study

- Nike "Just Do It" campaigns (Wieden+Kennedy) and the Nike Run Club app.
- Strava (activity summaries, Year in Sport), Whoop (strain data), Formula 1 and ESPN broadcast graphics.
- Club and league identities: Premier League (DesignStudio, 2016), Juventus (Interbrand, 2017).

## What makes it look generic

- Condensed all caps in a paragraph: illegible. Display is for 1–5 words.
- Diagonals in different directions on the same screen: it looks like a mess, not speed.
- Stock gym photos of people posing. Use real athletes or the user's own photo.
- Volt on white for text: fails contrast. Volt goes on black.

## Pairs with / clashes with

- **Pairs with:** `school-neobrutalism` (contrast and cuts), `school-dark-tech` (dark data base), `school-utilitarian` (dense stats), `school-bento` (metric cards).
- **Clashes with:** `school-organic`, `school-quiet-luxury`, `school-scandinavian`, `school-clay-3d`.

## Checklist

1. Condensed display only on 1–5 words and numbers?
2. All diagonals in the same direction and at the same angle?
3. At most 2 colors besides black and white, accent at 4.5:1?
4. Headline number readable in motion (≥ 48 px on mobile), tabular?
5. Fast animations, within the ceiling, with `prefers-reduced-motion`?
6. No betting mechanics or urgency that encourage harm?
