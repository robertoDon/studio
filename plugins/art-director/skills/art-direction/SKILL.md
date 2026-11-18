---
name: art-direction
description: The Art Director's art-direction method, run like a consultancy. Reads the project, works out what the product shows, who the audience is, which sector it sits in and the image it wants to project (cool, modern, chic, trustworthy, fun, handcrafted...), picks a main design school, an accent school and the UX base, and records it all in a DESIGN.md. Use whenever someone asks to "give it a look", "make it look good", "redesign", "pick a style", "create a visual identity", "which design fits my app", or starts a new project or overhauls an existing one (web app, mobile app, landing page, website, slides).
---

# Art direction · Diagnosis before brush

Good design does not start with color or type. It starts with understanding what the product is, who it serves, and what it must make people feel. The design school follows from the diagnosis. It is never the starting point.

Act like a consultant: read before you propose, name the reason behind every choice, and deliver something the team can apply on Monday morning.

## The 5-step flow

### 1. X-ray (read before you ask)

Before asking anything, read what already exists. What the code and copy say outweighs what the person remembers to tell you.

- README, CLAUDE.md, DESIGN.md (if one exists, start from it), landing page, interface copy, `package.json`.
- Stack: framework, CSS (Tailwind, CSS Modules, vars), component library, loaded fonts.
- Current tokens: run the counting script (below). It counts text sizes, fonts, spacing, radius, color, shadow, durations and z-index the same way every time. Lots of stray values = a "generated" look.

  **The counting script.** `bash <dir>/count-values.sh <app-dir>`, where `<dir>` is the first of these that exists:
  1. `$CLAUDE_PLUGIN_ROOT/skills/art-direction/scripts`
  2. `scripts/` next to this SKILL.md: the skill's base directory, or the folder of the path you read it from (this also covers a plugin run from its source folder)
  3. the newest install: `ls -d ~/.claude/plugins/cache/*/art-director/*/skills/art-direction/scripts | sort -V | tail -1`

  Run it in the folder of the app in scope, not at a monorepo root: the header lists the subprojects it found. Paste its tables as they are. It also lists where each raw value is (file:line, fewest uses first): that is the list to collapse into tokens. The default already lists every duration over its ceiling, every timer sequence and the lines of unknown kind to confirm (up to 50). Add `--all` when a house rule bans a value (say, text under 11 px): the default shows only the top 5 values per kind, and `--all` lists every value and every row.
- House rules: the project's own design-system, brand or finish skill (in `.claude/skills/`), a style guide, a DESIGN.md, and product docs that set design or tone rules (a principles or product file, a `docs/` folder). They **rule**. A rule that points to an outside standard ("follow our brand book") without its text in the repo: ask for it, or note it as "referenced, not read". Never fill it in from memory. The school works underneath them, never against them. Note where each one lives and what it fixes (fonts, colors, banned items, a motion ceiling).
- Main screens: which screen do people open most? That is where the direction has to shine.

On a large project, use the `project-reader` agent for this.

### 2. Briefing (only what is missing)

Fill in the 7 questions from [references/briefing.md](references/briefing.md). Answer yourself whatever the X-ray already answered. Ask only what changes the choice: at most 3 questions at a time, with options.

The 4 that change the answer most:

1. **What does the product show?** (data, content, physical product, people, service)
2. **Who is the audience?** (age, context of use, technical level, B2B or B2C)
3. **What image does it want to project?** Pick up to 2 adjectives from the matrix vocabulary.
4. **Where does it live?** Web app, mobile app, landing page, corporate website, e-commerce, slides.

### 3. Choice (matrix → schools)

First, the starting point:

- **The product already has an identity** (a DESIGN.md, a style guide, a house skill, or a look the X-ray can name) and nobody asked for a redesign → **name and tighten**.
- **From scratch, or a redesign was asked for** → **full choice**.

**Name and tighten.** Same look, stricter standard. Not a new look.

1. **Name it.** Which school is the current look closest to? Measure it with that school's checklist. Say which parts match and which don't.
2. **Keep the identity.** Logo, brand color, type and every recorded decision stay. That is what people recognize.
3. **Tighten.** Collapse stray values into tokens (from the count), fix accessibility, bring motion under the ceiling, remove the `anti-generic` patterns the house did not choose.
4. **Fill gaps only.** Where the house has no rule (empty states, charts, motion), borrow that part from the named school. An accent is **optional** here: add one only for a gap the named school doesn't cover, and only from its "pairs with" list. No gap, no accent. An accent in the matrix's worked examples is a full-choice answer: here it counts only if it fills such a gap.
5. **No safe × bold routes.** If the X-ray shows the identity fails the audience, record a redesign as an open decision for the owner. Don't start it.

**Full choice.** Use [references/matrix.md](references/matrix.md):

1. Cross **sector** with **desired image** to find 3 candidate schools.
2. Filter by **audience** (age, density it can handle, context) and by **surface**.
3. Pick the **1 + 1 + base** formula:
   - **Main school** (70%): sets the grid, type and form.
   - **Accent** (20–30%): a school that shows up in one or two places (the hero, the illustration, the accent color, the motion). It must be listed under "pairs with" in the main school.
   - **Base** (always): `anti-generic`, `base-ux`, `base-accessibility`, `base-typography`, `base-color`, `base-motion`, `base-layout-grid`, `base-microcopy`, plus the surface skill (`surface-*`).
4. Never mix two schools that clash (each school lists them).
5. Present 2 routes when the choice is not obvious: the **safe** one (what the sector expects) and the **bold** one (what sets it apart). Say which you recommend and why.

**Adopting part of a school.** A school does not have to come whole. Its parts are the sections of every `school-*` skill: grid, type, color, shape, imagery, spacing, motion.

- Write the parts taken and the parts left out. E.g. "Swiss: grid and type scale taken; color and imagery stay with the house."
- A part left out follows the house (or the main school, when the partial one is the accent).
- The school's checklist applies only to the parts taken. Never flag a screen for breaking a rule of a part left out.

### 4. Record (DESIGN.md)

Write `DESIGN.md` at the project root in the format from [references/design-md.md](references/design-md.md): diagnosis, choices with reasons, tokens, rules per surface and what is forbidden. It is the contract. Any agent that touches a screen reads this file first.

If the project already has a DESIGN.md or a house yardstick, **update** it instead of rewriting it, and list what changed.

### 5. Application and review

- Apply in slices: tokens first, then the most-opened screen, then the rest. Use the `visual-implementer` agent.
- Show before and after with numbers (text sizes, spacing, radii, colors, contrast).
- Review with the `design-critic` agent against the DESIGN.md, the chosen school and the bases.

## Director's rules

- **Diagnosis in writing.** Every choice comes with "because [audience/sector/image]". No reason, no entry.
- **The sector suggests, the audience decides.** A cooking app for professional chefs is not a recipe app for families.
- **Desired image ≠ fashionable aesthetic.** "Modern" does not mean glassmorphism. It means "not looking like 2015", and each sector has its own modern (see the matrix).
- **One main school per product.** The landing page can be bolder than the app (it is the shop window), but it speaks the same language: same display font, same brand color.
- **Real content.** Design with the project's real copy and data, never lorem ipsum.
- **Accessibility is not a style.** No school justifies contrast below 4.5:1 on text, or state shown by color alone.
- **Motion ceiling.** Default: touch ≤ 160 ms, reveal ≤ 700 ms, scene ≤ 1.2 s including delays; loops excluded. If the project has its own rule, the project's rule wins.
- **Respect house decisions.** What has already been decided and recorded (DESIGN.md, yardstick, CLAUDE.md) changes only when the owner asks. Propose, don't impose.
- **Ask when it is a brand decision.** Name, brand color, price and audience belong to the owner. Don't guess.

## Direction deliverable (response format)

```
1. X-ray: what the product is today, in 4–6 lines, plus the counting script's table
2. Briefing: each question asked and its answer; what nobody answered is marked "(assumed)"
3. House rules found: where each lives and what it fixes (fonts, colors, banned items, motion ceiling)
4. Diagnosis: sector · audience · desired image · surfaces · route (name and tighten | full choice)
5. Direction: main school + accent + base, each with its reason and the parts taken
   (name and tighten with no gap to fill: "Accent: none")
   (if there are two routes: safe × bold, and which one I recommend)
6. Conflicts with the house: school rule × house rule → the house wins → what changes
7. Motion over the ceiling: where (file:line) · value · kind (touch, reveal, scene; the script guesses it, you confirm it; timers, timer sequences and stagger steps come in their own tables: keep the timers that drive motion, judge a sequence by its end, check each stagger's last item, and confirm each line of unknown kind) · ceiling · fix
8. The look in one sentence ("Swiss with Scandinavian warmth: clear information, no chill")
9. Starting tokens and the 3 rules that change the screen most
10. Application plan: what changes, in what order, in which files
```

An item with nothing in it says "none found". Never drop it: an empty item is a finding too.

After that, the DESIGN.md is written, and application starts only with the owner's ok.

## Plugin map

| Type | Skills |
|---|---|
| Method | `art-direction` (this one), `anti-generic` (what gives away a generated screen; always applies), `logo-design` (brand: logo variants with specs) |
| Schools | `school-swiss`, `school-bauhaus`, `school-refined-minimalism`, `school-material`, `school-neobrutalism`, `school-editorial`, `school-quiet-luxury`, `school-scandinavian`, `school-japanese`, `school-spatial-glass`, `school-dark-tech`, `school-bento`, `school-pop-memphis`, `school-y2k-retrofuture`, `school-organic`, `school-clay-3d`, `school-sport`, `school-utilitarian`, `school-tactile`, `school-maximalist`, `school-handcrafted`, `school-trusted-corporate` |
| UX/UI base | `base-ux` (UX laws, Gestalt and Nielsen's heuristics), `base-accessibility`, `base-typography`, `base-color`, `base-motion` (includes microinteractions, sound and haptics), `base-layout-grid`, `base-tokens`, `base-microcopy` |
| Surfaces | `surface-landing-page`, `surface-web-app`, `surface-mobile-app`, `surface-website`, `surface-ecommerce`, `surface-slides` |
| Trends (Muzli 2026 curation) | `trends` (catalog and evidence level for each), `trend-typography`, `trend-vivid-color`, `trend-3d-webgl`, `trend-cinematic-scroll`, `trend-dashboards`, `trend-playful-illustration`, `trend-collage` |

A trend comes in as an **accent**, almost never as the main school: trends age, schools don't. Before using one, read its evidence level in `trends` and run it through `anti-generic`.
