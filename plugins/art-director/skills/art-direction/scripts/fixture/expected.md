# Value count

art-director count-values 1.0 · 2 files scanned

| Kind | Uses | Unique | Top 5 (value ×uses) |
|---|---|---|---|
| Text size | 6 | 4 | 14px ×2, tw sm ×2, 1.5rem ×1, 15px ×1 |
| Font family | 2 | 2 | georgia ×1, inter ×1 |
| Spacing | 7 | 5 | 16px ×2, tw 4 ×2, 13px ×1, 24px ×1, 8px ×1 |
| Radius | 3 | 3 | 12px ×1, tw default ×1, tw lg ×1 |
| Color | 5 | 4 | #333333 ×2, #ff0000 ×1, rgba(0,0,0,.06) ×1, rgba(0,0,0,0.5) ×1 |
| Shadow | 2 | 2 | 0 1px 2px rgba(0, 0, 0, .06) ×1, tw md ×1 |
| Duration | 5 | 4 | 300ms ×2, 2000ms ×1, 200ms ×1, 800ms ×1 |
| z-index | 2 | 2 | 10 ×1, tw 50 ×1 |
| Tailwind arbitrary value | 3 | 3 | bg-[#ff0000] ×1, gap-[13px] ×1, text-[15px] ×1 |
| CSS variable defined | 3 | 3 | --brand ×1, --font-sans ×1, --space-2 ×1 |
| CSS variable used | 1 | 1 | --space-2 ×1 |

Durations over 160 ms (loops left out). Check each against the ceiling: touch 160, reveal 700, scene 1200, delays included.

| ms | Where |
|---|---|
| 800 | src/Card.tsx:4 |
| 300 | src/Card.tsx:3 |
| 300 | src/styles.css:16 |
| 200 | src/styles.css:16 |

Counted: raw numbers only; var() is a token use. Skipped: comment lines and CSS custom-property definitions (the tokens). Tailwind steps count by name (tw 4, tw lg).
