# DESIGN.md format

`DESIGN.md` lives at the project root. It is the visual contract: anyone about to touch a screen reads it first. Short (1–3 pages), decisive, with numbers. If a rule does not fit on one line, it is probably not a rule.

If the project already has a house yardstick or design document (e.g. `design/README.md`, a `*-acabamento` skill), the DESIGN.md **points to it** and records only what the direction adds. Don't duplicate values: one place rules.

## Template

```markdown
# DESIGN · <Product>

> <The look in one sentence. E.g. "Swiss with Scandinavian warmth: clear information, no chill.">

Updated <date> · by <who decided> · Art Director plugin <version>

## 1. Diagnosis

- **The product shows:** <main subject of the screen>
- **Audience:** <age · context of use · technical level · B2B/B2C>
- **Desired image:** <up to 2 adjectives>
- **Surfaces:** <web app · mobile app · landing · website · e-commerce · slides>
- **Competitors and how they look:** <2–3, one line each>
- **Route:** safe | bold, because <reason>

## 2. Direction

| Role | School | Why | Where it shows |
|---|---|---|---|
| Main | school-<x> | <because audience/sector/image> | grid, type, form |
| Accent | school-<y> or trend-<z> | <because> | <hero, empty states, accent...> |
| Base | base-*, surface-<...>, anti-generic | always | everything |
| House | <the project's finish skill, if any> | rules over the schools | everything |

**References and what we take from each:**
- <reference 1>: <what we take>
- <reference 2>: <what we take>

## 3. Tokens

Where they live in the code: <file, e.g. src/styles/tokens.css>.

| Group | Values |
|---|---|
| Type | Display: <font weight>. Text: <font>. Mono: <font or —>. Steps: <e.g. 12/16, 16/22, 24/28, 32/36>. Up to <n> per screen. |
| Color | <name = hex = meaning>, one per line. E.g. green #3FD07F = action and progress. |
| Spacing | <4, 8, 12, 16, 24...> |
| Radius | <e.g. 8 control, 16 card, pill button> |
| Shadow | <e.g. 0 1px 2px rgba(0,0,0,.06) + 1px border> |
| Icons | <set, size, stroke> |
| Motion | touch ≤ <n> ms · reveal ≤ <n> ms · scene ≤ <n> s · curve <ease-out> |

## 4. Rules per surface

- **Web app:** <3–5 rules>
- **Mobile app:** <3–5 rules>
- **Landing:** <3–5 rules; can push the school further>
- **Website:** <...>
- **Slides:** <layouts used, title font, how the accent marks the data>

## 5. Forbidden

- <what must not happen, from the briefing: "no mascot", "no blue", "no purple gradient"...>

## 6. Open decisions

- <what is left for the owner to decide, with the options>

## 7. History

- <date> · <what changed and why>
```

## Writing rules

- Each color has **one** meaning written next to it.
- Every choice in section 2 has a "why".
- Use a number whenever you can: "radius 16", not "medium radius".
- Forbidden matters as much as allowed.
- Changed something? Add a line to the history, with the date.
