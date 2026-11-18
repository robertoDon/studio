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
- Current tokens: count the distinct values of `font-size`, spacing, radius and color. Lots of stray values = a "generated" look.
- House skills: if the project has its own finish skill (e.g. `don-acabamento`, `*-acabamento`, a yardstick), it **rules**. The school works underneath it, never against it.
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

Use [references/matrix.md](references/matrix.md):

1. Cross **sector** with **desired image** to find 3 candidate schools.
2. Filter by **audience** (age, density it can handle, context) and by **surface**.
3. Pick the **1 + 1 + base** formula:
   - **Main school** (70%): sets the grid, type and form.
   - **Accent** (20–30%): a school that shows up in one or two places (the hero, the illustration, the accent color, the motion). It must be listed under "pairs with" in the main school.
   - **Base** (always): `anti-generic`, `base-ux`, `base-accessibility`, `base-typography`, `base-color`, `base-motion`, `base-layout-grid`, `base-microcopy`, plus the surface skill (`surface-*`).
4. Never mix two schools that clash (each school lists them).
5. Present 2 routes when the choice is not obvious: the **safe** one (what the sector expects) and the **bold** one (what sets it apart). Say which you recommend and why.

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
1. X-ray: what the product is today, in 4–6 lines (with current token counts)
2. Diagnosis: sector · audience · desired image · surfaces
3. Direction: main school + accent + base, each with its reason
   (if there are two routes: safe × bold, and which one I recommend)
4. The look in one sentence ("Swiss with Scandinavian warmth: clear information, no chill")
5. Starting tokens and the 3 rules that change the screen most
6. Application plan: what changes, in what order, in which files
```

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
