---
name: anti-generic
description: The list of what gives a screen an AI-made or template look (purple gradient on white, three identical cards, cream + serif + terracotta button, black + acid green, default Inter + raw shadcn, fade-up on everything) and the method to escape it. Use in every interface creation or review, alongside the chosen school, and whenever someone asks for something that "doesn't look generated", "doesn't look like a template", to "deslop" it, or says it "looks AI-made".
---

# Anti-generic · What gives away a generated screen

Source: Muzli's series on "AI slop" (2026): [muzli-mcp-design-with-ai](https://muz.li/blog/muzli-mcp-design-with-ai/), [are-we-out-of-new-things](https://muz.li/blog/are-we-out-of-new-things/), [vibe-design-in-2026](https://muz.li/blog/vibe-design-in-2026-what-ai-generated-ui-means-for-your-work/). Plus the Don yardstick: stray values are the other half of the generated look.

Every school ranks below this list. A perfect Swiss screen with three identical cards and an indigo gradient still looks like a template.

## Forbidden patterns (unless the direction asks for them on purpose)

| Pattern | Why it gives it away |
|---|---|
| Purple/indigo gradient on white, three cards in a row | It is Tailwind's `bg-indigo-500`. The first thing any generator does. |
| Cream background, large serif, one terracotta button (~#D97757) | The AI "sophisticated default" of 2025–26. |
| Near-black with a single acid-green or lime glow | The AI "tech default". |
| Newspaper layout with hairline rules everywhere | Editorial by reflex, with no editorial content. |
| A kit of identical cards: same radius, same soft gray shadow | No hierarchy, everything weighs the same. |
| SMALL-CAPS label above every heading, a dot between words, an arrow on every button | "Template chrome". |
| Fade-up on every block on scroll | Motion with no reason. |
| Inter at default weight + blue + sidebar + card grid + table (raw shadcn) | The product everyone has already seen. |
| The literal image the name suggests (an app called "Overdue" with a library stamp) | The first idea, not an idea. |
| A phone floating in 2016-style perspective, a screenshot over a blurred photo | A "Dribbble shot", not an interface. |
| Emoji as icons, icons from mixed sets | No system. |
| 11 text sizes, 14 spacings, 10 radii | Stray values (Don yardstick). |

## The method to escape it

1. **References before generating.** Gather 5–10 real references (Muzli Picks, Awwwards, SiteInspire, Land-book, the school's skill). Pick 2–3 and **write down what you take from each**, starting with its signature (often the motion).
2. **Three directions, one chosen.** Sketch three different paths (not three color variations). Pick one, with a reason. Then build section by section.
3. **Start from the brand color**, not the library's default color. Swap the kit's default accent in the first commit.
4. **Write down the constraints:** density, base grid, radius, font, number style (tabular, small unit), how many text sizes.
5. **One hook only.** The formula Muzli sees most in the best sites: one bold hook (3D, color or illustration) + clean type + structured layout. Two hooks fight.
6. **Design the edges:** empty, error, loading, disabled, long text, a 40-letter name, a 7-digit number. A template only designs the happy path.
7. **Real content.** The product's real text, numbers and photos. Lorem ipsum hides hierarchy problems.
8. **A font that isn't the default.** Roboto, Open Sans, Montserrat and Poppins barely appear on gallery sites; Inter on its own has become a default signal. If you use Inter, give it a dramatic scale and a pairing (mono or display) with a reason.

## Quick test (30 seconds)

Cover the logo. Could the screen belong to any other product in the sector? If yes, it is missing:

- a **hook** only this product would have (its data, its photo, its words);
- a visible **typographic decision** (scale, weight, pairing);
- a **color with meaning** (not the kit's).

## Checklist

1. Does no pattern from the table appear without the direction asking for it?
2. Are the references written down with what was taken from each?
3. Is the accent the brand's, not the kit's?
4. Is there a hook, and only one?
5. Are the edge states designed?
6. Is every value (type, space, radius, color) on the project's yardstick?
7. With the logo covered, can you still tell whose it is?
