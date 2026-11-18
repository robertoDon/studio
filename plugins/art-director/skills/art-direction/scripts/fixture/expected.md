# Value count

art-director count-values X · 10 files scanned

Subprojects (own package.json): apps/web (1 file). Monorepo: run once per app, in the app folder.
Outside them: notes (1 file), src (4 files), src/cases (4 files).

Left out, nested repos (own .git): other.

| Kind | Uses | Unique | Top 5 (value ×uses) |
|---|---|---|---|
| Text size | 9 | 6 | 14px ×2, 15px ×2, tw sm ×2, 1.5rem ×1, 20px ×1 |
| Font family | 7 | 5 | inter ×3, fraunces ×1, georgia ×1, inter tight ×1, ui-monospace ×1 |
| Spacing | 7 | 5 | 16px ×2, tw 4 ×2, 13px ×1, 24px ×1, 8px ×1 |
| Radius | 4 | 4 | 12px ×1, 13px ×1, tw default ×1, tw lg ×1 |
| Color | 9 | 5 | #abcdef ×4, #333333 ×2, #ff0000 ×1, rgba(0,0,0,.06) ×1, rgba(0,0,0,0.5) ×1 |
| Shadow | 2 | 2 | 0 1px 2px rgba(0, 0, 0, .06) ×1, tw md ×1 |
| Duration | 36 | 15 | 300ms ×6, 900ms ×5, 400ms ×4, 1850ms ×3, 200ms ×3 |
| z-index | 2 | 2 | 10 ×1, tw 50 ×1 |
| Tailwind arbitrary value | 4 | 4 | bg-[#ff0000] ×1, gap-[13px] ×1, rounded-[13px] ×1, text-[15px] ×1 |
| CSS variable defined | 9 | 9 | --a ×1, --brand ×1, --corpo ×1, --display ×1, --font-sans ×1 |
| CSS variable used | 4 | 3 | --i ×2, --rapido ×1, --space-2 ×1 |

Durations over the ceiling (loops left out; delays added, var() read from its definition). Ceiling by kind: touch 160, reveal 700, scene 1200; ? uses 700.
One row per line (its longest). The kind is a guess from nearby words: confirm it.

| ms | Kind (guess) | Ceiling | Where |
|---|---|---|---|
| 1300 | ? | 700 | src/cases/rules.css:4 |
| 1300 | reveal | 700 | src/cases/rules.css:5 |
| 900 | ? | 700 | src/cases/Steps.tsx:8 |
| 900 | reveal | 700 | src/extra.css:2 |
| 900 | reveal | 700 | src/styles.css:32 |
| 800 | ? | 700 | src/Card.tsx:4 |
| 800 | ? | 700 | src/cases/Steps.tsx:9 |
| 800 | ? | 700 | src/extra.css:4 |
| 780 | reveal | 700 | src/extra.css:5 |
| 300 | touch | 160 | src/styles.css:30 |
| 250 | touch | 160 | src/extra.css:8 |
| 200 | touch | 160 | src/extra.css:7 |

Confirm the kind: 5 lines of unknown kind at 161 to 700 ms. A touch (hover, press, click) is over its 160 ceiling; a reveal is fine.

| ms | Where |
|---|---|
| 400 | src/Sala.tsx:3 |
| 300 | src/Card.tsx:3 |
| 300 | src/cases/rules.css:7 |
| 300 | src/styles.css:16 |
| 180 | src/cases/rules.css:3 |

Stagger steps (calc(var(--i) * step)), left out of the durations. The last item ends at duration + N×step, N = items − 1: count the items and check it against the ceiling.

| Step ms | Last item ends at (ms) | Where |
|---|---|---|
| 80 | 300 + N×80 | src/cases/rules.css:7 |
| 80 | — (in its rule) + N×80 | src/extra.css:6 |

Timers over 160 ms (setTimeout). Motion only when one starts or ends an animation (a typing cursor, a staged intro); a toast or a debounce is not.

In file order. Nearby words is the same guess as above: a word there hints at motion.

| ms | Nearby words | Where |
|---|---|---|
| 1850 | — | src/Card.tsx:20 |
| 400 | — | src/Card.tsx:21 |
| 300 | — | src/Sala.tsx:2 |
| 500 | — | src/cases/Steps.tsx:3 |
| 1650 | — | src/cases/Steps.tsx:4 |
| 1850 | — | src/cases/Steps.tsx:5 |
| 400 | touch | src/cases/Steps.tsx:7 |

Timer sequences (2+ timers in one block): the longest is when the sequence ends. If it drives motion, it is a scene: over 1200 is over the ceiling.

| Ends at ms | Timers | Block starts at |
|---|---|---|
| 1850 | 2 | src/Card.tsx:17 |
| 1850 | 3 | src/cases/Steps.tsx:2 |

Where each raw value is (Tailwind steps and var() left out; durations are above). Fewest uses first: a value used once or twice is the likeliest stray.

| Kind | Value | Uses | Where |
|---|---|---|---|
| Text size | 1.5rem | 1 | src/styles.css:21 |
| Text size | 20px | 1 | notes/ref.css:1 |
| Text size | 32px | 1 | apps/web/app.css:1 |
| Text size | 14px | 2 | src/Card.tsx:4, src/styles.css:8 |
| Text size | 15px | 2 | src/Card.tsx:3, src/extra.css:3 |
| Font family | fraunces | 1 | src/styles.css:23 |
| Font family | georgia | 1 | src/styles.css:18 |
| Font family | inter tight | 1 | src/extra.css:3 |
| Font family | ui-monospace | 1 | src/styles.css:24 |
| Font family | inter | 3 | src/cases/fonts.ts:1, src/cases/rules.css:2, src/styles.css:2 |
| Spacing | 13px | 1 | src/Card.tsx:3 |
| Spacing | 24px | 1 | src/styles.css:9 |
| Spacing | 8px | 1 | src/styles.css:11 |
| Spacing | 16px | 2 | src/Card.tsx:4, src/styles.css:9 |
| Radius | 12px | 1 | src/styles.css:12 |
| Radius | 13px | 1 | src/cases/Steps.tsx:9 |
| Color | #ff0000 | 1 | src/Card.tsx:5 |
| Color | rgba(0,0,0,.06) | 1 | src/styles.css:15 |
| Color | rgba(0,0,0,0.5) | 1 | src/styles.css:14 |
| Color | #333333 | 2 | src/styles.css:13, src/styles.css:21 |
| Color | #abcdef | 4 | src/cases/places.css:1, src/cases/places.css:2, src/cases/places.css:3 +1 more |
| Shadow | 0 1px 2px rgba(0, 0, 0, .06) | 1 | src/styles.css:15 |
| z-index | 10 | 1 | src/styles.css:17 |

Up to 3 places per value; --all lists every place.

Counted: raw numbers only; var() is a token use. Skipped: test files, comment lines and CSS custom-property definitions (the tokens). Tailwind steps count by name (tw 4, tw lg).
