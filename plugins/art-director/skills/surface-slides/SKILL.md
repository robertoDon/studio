---
name: surface-slides
description: Rules for slide presentations (sales deck, investor pitch, results review, class, talk, launch keynote, deck sent by email). One idea per slide, a title that is the conclusion, a headline number, a chart with one message, section rhythm and a 16:9 grid. Use when someone asks for a deck, presentation, slides, pitch, keynote, PowerPoint, Google Slides, Keynote or "turn this into a presentation", together with the school chosen in DESIGN.md.
---

# Surface · Slides

A slide is not a document projected on a wall. The audience reads it in 3 seconds and goes back to listening. So: **one idea per slide, and the title states the idea.** The school comes in strong (it's a showcase, weight of 80–100% in the matrix), but reading comes first.

## First: which deck is it?

| Type | Who reads it | Density | Core rule |
|---|---|---|---|
| **Spoken** (talk, keynote, live pitch) | An audience, with someone speaking | Low: up to 15 words per slide | The slide supports the talk; it doesn't repeat it. |
| **Read** (deck by email, proposal, report) | One person alone, no narrator | Medium: up to 60 words | Each slide explains itself; the title is the full sentence. |
| **Class / training** | Students, for later reference | Medium, step by step | One concept per slide + an example. |

If the same deck does both jobs, build the spoken one and put the read text in the speaker notes.

## The rule in numbers

| Area | Rule |
|---|---|
| Format | 16:9 (1920 × 1080). Safe margin of 80 px on the sides and 64 top and bottom. 12-column grid, 24 gutter. |
| Type | Title 48–64 px (up to 2 lines, up to 10 words). Body 28–32 px; never below 24 px (the back row reads 24). Headline number 120–200 px. Up to 3 sizes per slide. Brand font in the title, a body face that stays legible on a projector. |
| Text | Spoken: up to 15 words. Read: up to 60. 3 bullets max, never a bullet inside a bullet. |
| Color | Background, text, one accent. The accent marks **the** thing on the slide (the bar that matters, the number that changed). Contrast ≥ 4.5:1; projectors wash out color, so aim for 7:1 in a bright room. |
| Image | Photos full-bleed or cropped to the grid, never "pasted on" with a border. Real, legible product screenshots (zoom into the part that matters). No clip art, no stock handshake photos. |
| Chart | One chart, one message, written in the title ("Revenue doubled after the annual plan"). Highlight the series that matters with the accent, the rest in gray. No separate legend: label directly on the line or bar. No 3D, no pie with more than 3 slices. |
| Rhythm | Opening → problem → turn → proof → ask. A section slide every 4–6 slides. Spoken deck: ~1 slide per minute. |
| Motion | Slide transitions: cut or fade ≤ 300 ms. Item reveal: ≤ 700 ms. A whole sequence (e.g., a chart build): ≤ 1.2 s. No cube, spin or "fly in from the left". |

## The templates that cover 90% of slides

1. **Cover:** deck title + subtitle + who/when. Small logo.
2. **Headline:** one big sentence, nothing else. For the turn.
3. **Number:** headline number + one line of context + data source.
4. **Chart:** conclusion title + chart with a highlight + source.
5. **Comparison:** two columns (before vs after, us vs them), the same structure on both sides.
6. **Product:** a large real screenshot + up to 3 callouts pointing at it.
7. **Short list:** up to 3 items, each with a bold title + one line.
8. **Ask / next step:** what you want from the audience, with a date or a number.

Build the deck from these templates only (as components) and vary the content, not the layout. A deck with 20 different layouts looks like a patchwork quilt.

## By deck type

- **Investor pitch:** problem, solution, market, traction (headline number), model, team, ask. Traction before market if it's strong.
- **B2B sales:** open on the customer's pain with their own data, show the product running, proof (case + number), a clear price, next step with a date.
- **Results / board:** the first slide already holds the 3 conclusions. Then the proof for each. Detail goes to the appendix.
- **Launch keynote:** lots of headline and product slides, little text; this is where the school and the trend (`trend-*`) can go all the way.
- **Class:** the objective at the start, one concept per slide, an exercise, a summary at the end.

## How the school comes in

- The DESIGN.md school rules the title font, color and shape. The cover and headline slides can go up to 100% school; data slides stay more neutral.
- The Swiss and Editorial schools are the safest for a read deck. Sport, Maximalist and Pop work for keynotes and talks.
- Always run it through `anti-generic`: a small-caps label above every title, a purple gradient background and an icon on every bullet are a template look.

## Tooling

- If a slides artifact type or skill is available (Slides, `pptx`, Google Slides), use it and apply the DESIGN.md tokens as the master theme: fonts, colors and the 8 templates as layouts.
- HTML deck: one `section` per slide, 1920×1080 scaled, keyboard navigation (←/→), and export to PDF.
- Fonts: embed them in the file or use fonts the presenter's machine has. A missing font on the projector wrecks the deck.

## What makes it look generic

- A title that is a label ("Results") instead of a conclusion ("We sold 40% more in Q2").
- The whole script on the slide.
- The program's default chart, with a separate legend and every series in color.
- An icon on every bullet. Generic stock photos.
- A different layout on every slide.

## Checklist

1. Does each slide have one idea, and is the title the conclusion?
2. Body ≥ 24 px, up to 3 sizes per slide, text within the deck type's limit?
3. Does every chart have one message written in the title and only the important series highlighted?
4. Does every number have a source and a date?
5. Does the deck use only the templates, with section rhythm?
6. Contrast ≥ 4.5:1 (7:1 for a projector in a bright room)?
7. Transitions ≤ 300 ms, reveals ≤ 700 ms, nothing spinning?
8. Does the last slide say what you want from the audience?
