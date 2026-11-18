# art-director

Art direction as a consultancy, inside Claude Code. It reads your product, picks the one design school that fits your audience, and writes the rules into a `DESIGN.md` that every later screen has to follow.

Full guide, images and the skill catalog: [the repo README](../../README.md).

## Install

```bash
/plugin marketplace add robertoDon/studio
/plugin install art-director@studio
```

## Commands

| Command | What it does |
|---|---|
| `/art-director:direction [the image you want]` | X-ray, up to 3 questions, then the direction (main school, accent, base). Writes `DESIGN.md` after your ok. |
| `/art-director:apply [screen]` | Applies `DESIGN.md` to the code in slices, tokens first. |
| `/art-director:audit [screen]` | Review with severity 0–4 against `DESIGN.md`, the school, WCAG 2.2 and the anti-generic list. |
| `/art-director:schools [context]` | The catalog, or the 3 candidate schools for a context. |

## Agents

`director`, `project-reader`, `visual-implementer`, `design-critic`. They reply in your language.

## Skills

47 in total: `art-direction`, `anti-generic`, `logo-design`, 22 `school-*`, 8 `base-*`, 6 `surface-*`, `trends` and 7 `trend-*`.
