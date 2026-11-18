---
name: trend-typography
description: 2026 typography trends, measured by Muzli across 2,190 gallery sites. Four moves. (1) One grotesque at scale: one family, a ~64 px headline with 1.0 line height over a 16 px body. (2) Serif over sans: Instrument Serif or PP Editorial New over Inter Tight or Manrope, the closest to becoming a cliché. (3) Mono as a third voice: Geist Mono or Plex Mono in labels and metadata, on 23% of sites. (4) Kinetic and variable type: weight or width that shifts on scroll or hover, huge display faces like Anton and Unbounded. Use when someone asks for "modern typography", "a design-site font", "Neue Montreal", "Geist", "an elegant serif", "a magazine look", "mono", "a technical look", "a variable font", "a headline that moves", "a poster", or to strip the template look out of the type.
---

# Typography trends · Scale, pairing and voice

Basis: [font-pairings-2026](https://muz.li/blog/font-pairings-2026/) (2,190 sites measured) and [web-design-trends-2026](https://muz.li/blog/web-design-trends-2026/) (#6). This is the best-evidenced set in the `trends` catalog. Pick **one** move as the typographic hook; the others come in only as support.

## 1. One grotesque at scale (measured)

The sites designers award use one family and build hierarchy with size, weight and space, not with a font pairing.

- 60% of sites use a single family.
- Median headline of ~64 px over a 16 px body, a 4× jump.
- Headline line height ~1.0. 58% tighten the tracking: use −2% to −4% above 32 px.
- 42% of headlines are set at weight **400**: big and regular, not big and bold.
- Body at 16 px with a line height of 1.4 to 1.5.
- Most seen: Inter (13%), Geist / Geist Mono, PP Neue Montreal (3.9%), Neue Haas Grotesk (3%), Suisse Int'l, ABC Diatype and Aeonik. Free alternatives: Switzer instead of Neue Montreal, Geist instead of Diatype.
- The "not designed" signal: Roboto, Open Sans, Montserrat and Poppins are common on the web but rare in the galleries. Montserrat + Lora showed up zero times.
- Application: on a landing page, a 56 to 96 px headline, weight 400–500, line height 1.0 and −3% tracking. In an app, the same family at a smaller scale (12/16/24/32), with headings at weight 500–600.
- Examples: Richard Mille Art Prize (Neue Haas only), Nudge (Inter only), Sutera (Neue Haas over PP Neue Montreal).

## 2. Serif over sans (careful: close to a cliché)

- Pairings seen: Instrument Serif or PP Editorial New over Inter Tight or Manrope. Also same-foundry pairings, like Martina Plantijn + Founders Grotesk from Klim.
- Serif in display only (≥ 32 px), never below 20 px. Regular or light weight, and italic marks **one** word.
- Headline at least 3× the body size. At most 2 families, plus a mono if needed.
- Good for wellness, health, clinics, editorial and premium services. In an app, only in the screen title or the headline number; in premium e-commerce, in the product name.
- Examples: Aventura Dental Arts, Inna Dove, New Studio.
- Muzli says it is the closest to becoming a cliché. It sits next to the AI default of "cream background + big serif + terracotta button #D97757" (`anti-generic`). Swap the cream for white or the brand color, and the terracotta for the real accent.

## 3. Mono as a third voice (measured: 23%)

- Mono only in section labels, navigation, dates, versions, small prices, code and tags, between 11 and 14 px. In all caps, use +4% to +8% tracking.
- Never in paragraphs or reading headlines.
- Prefer the sans's own family: Geist + Geist Mono, IBM Plex Sans + Plex Mono.
- ASCII graphics as texture in one place only: footer, empty state or hero.
- In a web app, it goes in IDs, hashes, timestamps and numeric columns. On a landing page, in navigation, metric labels and the footer. On mobile, only in metadata.
- Examples: Dylan Brouwer (Die Grotesk + IBM Plex Mono), Aino (aino.agency), Shelby (shelby.ashfall.studio), the last two cited in the [April 2026 roundup](https://muz.li/blog/the-best-creative-websites-of-the-month-april-2026/).
- An all-caps label above every headline is "template chrome". Use mono where there is real data, not as decoration.

## 4. Kinetic and variable type

- Type as interface: variable weight or width (the `wght` and `wdth` axes) that shifts on scroll or hover, a hero word that swaps, a huge display face (Anton, Unbounded) in a poster headline.
- One kinetic word or line per page, and the rest stays still. Display at 72 to 160 px on a landing page, condensed or extra-wide.
- 4.5:1 contrast on every frame of the animation, not just the last one. The final text stays static and selectable: it's HTML, not video.
- In an app, only in brand moments (welcome, achievement).
- Examples:
  - Mat Voyce's Type Scraps and his work for PUMA, Xtian Miller's optical-tension posters, Mojo Studio (Unbounded), HEYEFI and James Clapham.
  - Sources: [muzli-mcp-design-with-ai](https://muz.li/blog/muzli-mcp-design-with-ai/) and the [March 2026 roundup](https://muz.li/blog/the-best-creative-websites-of-the-month-march-2026/).

## When to use / When not to

- **Grotesque:** almost everything, especially SaaS, studios and portfolios. Not for a brand that needs warmth or tradition; see `school-handcrafted` and `school-quiet-luxury`. Inter alone at its default weight is already a default signal; if you use Inter, the scale has to be dramatic.
- **Serif over sans:** wellness, health, editorial and premium. Not when the goal is to look original.
- **Mono:** dev tools, AI, fintech, studios, changelogs. Not for emotional consumer products (wellness, kids, cooking).
- **Kinetic:** brand, event, campaign, portfolio, music and sport. Never in dense UI, long text, forms or a number the person has to read right away.

## Within the motion ceiling

Ceiling: touch ≤ 160 ms, reveal ≤ 700 ms, scene ≤ 1.2 s including delays, loops excluded.

- A headline that enters is a **reveal** (≤ 700 ms). A weight change on hover is a **touch** (≤ 160 ms).
- A staggered letter sequence fits entirely within 1.2 s. For example, 12 letters × 40 ms delay + 600 ms = 1.08 s.
- Mono "typing" reveals the whole line within 700 ms, not letter by letter for seconds. The blinking cursor is a **loop**.
- A word that keeps swapping is a **loop**: allowed, with a pause of at least 2 s to read it, and stopped under `prefers-reduced-motion`.
- Weight tied to scroll follows the finger and doesn't count as a scene, but the text must never become illegible midway.

## Pitfalls

- One family with no scale, everything between 14 and 24 px: it turns into a template. The trend is the 4× **jump**, not just having one font.
- The cream + serif + terracotta combination.
- Mono on every label.
- Animating every line: kinetic type is a single hook.

## Checklist

1. Is one typographic move the hook, with the others only in support?
2. At most 2 families, plus a mono?
3. Headline at least 3.5× the body on a landing page, line height ~1.0 and negative tracking on display?
4. No Roboto, Open Sans, Montserrat or Poppins as the brand choice?
5. Serif only above 32 px, with background and accent from the brand?
6. Mono only in data and metadata, between 11 and 14 px?
7. Kinetic type on one line only, legible on every frame, within 1.2 s and stopped under `prefers-reduced-motion`?
