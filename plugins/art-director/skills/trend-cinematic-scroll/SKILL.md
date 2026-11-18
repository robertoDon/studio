---
name: trend-cinematic-scroll
description: The cinematic scroll trend: the page has the rhythm of a film and the scroll is the timeline (a pinned stage with numbered beats, large photos or CGI, restrained type on top). Use for brand stories, annual reports, premium consumer products or studios when someone asks for "storytelling", "scrollytelling", "parallax", "an Apple-style page", "a narrative". Never on a utility page or in documentation.
---

# Cinematic scroll · The scroll is the script

## What it is

The page treated as a film: a pinned stage that numbered beats pass through (01, 02, 03, 04), large photos or CGI, strong transitions and restrained typography on top.

## Visual signals

- 3 to 5 beats per story, numbered. More than that gets tiring.
- Each beat: one image, a headline of up to 6 words, one supporting line.
- Restrained type: 2 sizes, aligned, with contrast ≥ 4.5:1 over the image (use a 30–50% scrim if needed).
- A visible progress indicator (the beat number or a bar).
- The page works without the animation: under `prefers-reduced-motion`, the beats become normal stacked sections.

## When to use / When not to

- **Use:** brand stories, reports, launches, premium consumer, studios.
- **Don't use:** utility pages, docs, pricing, anywhere people want to scan. Never lock the scroll of someone who only wants the button: the CTA is visible at the top too.

## How to apply by surface

- **Landing page:** one cinematic section ("how it works" in 4 beats), the rest normal.
- **Company website:** the "about" page or a case page.
- **App:** no. The app equivalent is a 3-screen onboarding.

## Within the motion ceiling

Touch ≤ 160 ms, reveal ≤ 700 ms, scene ≤ 1.2 s including delays, loops excluded.
- The scroll drives time, but each **beat change** is a reveal of ≤ 700 ms, triggered by a threshold, not a 3 s tween tied to the scroll.
- A long sequence becomes several short reveals, each complete in itself.
- A looping background video is a **loop**: allowed, and it stops under `prefers-reduced-motion`.
- No "scroll-jacking" that changes the speed of the person's scroll.

## Examples (Muzli)

- Inertia Studios (weareinertia.com), Secret Level (secretlevel.co), Aupale Vodka, Trevor Noah's site (Offbrand). Sources: https://muz.li/blog/the-best-creative-websites-of-the-month-march-2026/ and https://muz.li/blog/weekly-designers-update-568/
- Pip: a pinned stage with four numbered beats. Source: https://muz.li/blog/muzli-mcp-design-with-ai/

## Pitfall

"Fade-up on every paragraph" isn't cinema; it's the AI default that Muzli calls slop (`anti-generic`). Cinema is a few strong beats.

## Checklist

1. 3 to 5 beats, numbered?
2. Does each change fit in 700 ms, with no part of the story depending on a long tween?
3. Does it work stacked under `prefers-reduced-motion`?
4. Is the person's scroll left alone?
5. Does the CTA exist outside the sequence?
