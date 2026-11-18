# Value count

art-director count-values X · 5 files scanned

Subprojects (own package.json): apps/web (1 file). Monorepo: run once per app, in the app folder.
Outside them: notes (1 file), src (3 files).

Left out, nested repos (own .git): other.

| Kind | Uses | Unique | Top 5 (value ×uses) |
|---|---|---|---|
| Text size | 9 | 6 | 14px ×2, 15px ×2, tw sm ×2, 1.5rem ×1, 20px ×1 |
| Font family | 5 | 5 | fraunces ×1, georgia ×1, inter ×1, inter tight ×1, ui-monospace ×1 |
| Spacing | 7 | 5 | 16px ×2, tw 4 ×2, 13px ×1, 24px ×1, 8px ×1 |
| Radius | 3 | 3 | 12px ×1, tw default ×1, tw lg ×1 |
| Color | 5 | 4 | #333333 ×2, #ff0000 ×1, rgba(0,0,0,.06) ×1, rgba(0,0,0,0.5) ×1 |
| Shadow | 2 | 2 | 0 1px 2px rgba(0, 0, 0, .06) ×1, tw md ×1 |
| Duration | 17 | 9 | 300ms ×4, 900ms ×3, 1000ms ×2, 1850ms ×2, 2000ms ×2 |
| z-index | 2 | 2 | 10 ×1, tw 50 ×1 |
| Tailwind arbitrary value | 3 | 3 | bg-[#ff0000] ×1, gap-[13px] ×1, text-[15px] ×1 |
| CSS variable defined | 5 | 5 | --brand ×1, --display ×1, --font-sans ×1, --mono ×1, --space-2 ×1 |
| CSS variable used | 2 | 2 | --rapido ×1, --space-2 ×1 |

Durations over the ceiling (loops left out; delays added, var() read from its definition). Ceiling by kind: touch 160, reveal 700, scene 1200; ? uses 160.
The kind is a guess from nearby words: confirm it.

| ms | Kind (guess) | Ceiling | Where |
|---|---|---|---|
| 900 | reveal | 700 | src/extra.css:2 |
| 900 | reveal | 700 | src/styles.css:32 |
| 800 | ? | 160 | src/Card.tsx:4 |
| 800 | ? | 160 | src/extra.css:4 |
| 300 | ? | 160 | src/Card.tsx:3 |
| 300 | ? | 160 | src/styles.css:16 |
| 300 | touch | 160 | src/styles.css:30 |
| 200 | ? | 160 | src/styles.css:16 |

Timers over 160 ms (setTimeout). Motion only when one starts or ends an animation (a typing cursor, a staged intro); a toast or a debounce is not.

In file order. Nearby words is the same guess as above: a word there hints at motion.

| ms | Nearby words | Where |
|---|---|---|
| 1850 | — | src/Card.tsx:20 |
| 400 | — | src/Card.tsx:21 |

Counted: raw numbers only; var() is a token use. Skipped: test files, comment lines and CSS custom-property definitions (the tokens). Tailwind steps count by name (tw 4, tw lg).
