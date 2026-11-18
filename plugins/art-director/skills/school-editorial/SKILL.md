---
name: school-editorial
description: Editorial school (magazine and newspaper). Display serifs, text columns, drop caps, captions, headline hierarchy, author photos, page rhythm. Use when the product lives on content and reading, or wants to feel cultured, authored and with a voice (media, newsletters, blogs, publishers, brand publications, chef-driven food, culture, annual reports, product landings with storytelling), or when the user asks for something "editorial", "magazine-style", "with serifs", "NYT style", "Kinfolk", "magazine", "storytelling".
---

# Editorial · The page has rhythm

From the tradition of magazines and newspapers: Alexey Brodovitch at *Harper's Bazaar* (1930s–50s), *The New York Times*, *Kinfolk*, *Monocle*. On the web, Stripe Press, The Verge and Medium brought it to the screen. Core idea: reading is the experience. Headline, standfirst, body, caption and white space create rhythm, as on paper.

## When to use

- **Sectors:** media and journalism, newsletters, publishers, brand blogs, chef-driven food, fashion with content, culture, nonprofits with stories, reports and studies.
- **Audience:** adult readers, 25–65, who value depth.
- **Image it projects:** cultured, authored, trustworthy, sophisticated without being cold, "has something to say".

## When not to use

- Transactional tools with little reading (checkout, operational dashboard).
- Audiences that want speed and scanning (delivery apps, utilities).
- Without good writing and good photos: editorial without content is an empty shell.

## The rules in numbers

| Area | Rule |
|---|---|
| Grid | 12 columns with a text column of 60–75 characters (≈ 640–720 px). Asymmetric margins for captions and side notes. Photos can bleed across the full page. |
| Type | Display serif + text serif: Playfair Display, Fraunces, Newsreader, Source Serif 4, Instrument Serif, EB Garamond (free); paid: GT Sectra, Tiempos, Canela. Pair with a sans for captions and UI (Inter, Söhne, Libre Franklin). Body 18–21 px, line height 1.55–1.7. Display 48–120 px, line height 1.05, tracking −1%. Scale 1.414. |
| Color | Paper #FAF8F3 or white, ink #1A1A1A, caption gray #6B6B6B. One editorial accent (red #C8102E, bottle green #1F4D3A or a section color). Color comes mainly from photography. |
| Shape | Radius 0–2 px. 1 px hairlines (editorial rules) between sections. No shadows. Drop caps 3–4 lines deep. Large opening quote marks on quotes. |
| Imagery | Large authored photography, with caption and credit. Editorial ratios (4:5, 3:2, panoramic). Commissioned authored illustration, never generic stock. |
| Spacing | Strong vertical white space between sections (≥ 96 px). Paragraphs separated by one blank line or an indent, never both. |
| Motion | Minimal. Image fade on entry, 300–500 ms; a reading progress bar. Nothing that gets in the way of reading. Respect the project's motion ceiling (default: touch ≤ 160 ms, reveal ≤ 700 ms, scene ≤ 1.2 s). |

## By surface

- **Web app / dashboard:** use only the editorial touch: page title in serif, body in sans, reports with a headline and a "standfirst" (a 1-sentence summary) before the number.
- **Mobile app:** a reader with an 18 px body, optional sepia theme, adjustable size, save for later, reading time at the top.
- **Landing page:** storytelling in chapters (01, 02, 03), a large serif headline, customer quotes as pull quotes, a full-bleed photo.
- **Company website / blog:** a front page with a lead headline + 3 secondary ones, sections with their own section color, an article page with author, date and caption.

## Starter tokens

```css
:root {
  --font-display: "Fraunces", "Playfair Display", Georgia, serif;
  --font-text: "Source Serif 4", "Newsreader", Georgia, serif;
  --font-ui: "Inter", "Libre Franklin", system-ui, sans-serif;
  --fs-caption: 0.8125rem; --fs-body: 1.1875rem; --fs-h3: 1.5rem; --fs-h2: 2.25rem; --fs-h1: 3.5rem; --fs-display: 6rem;
  --lh-body: 1.6; --lh-display: 1.05; --measure: 68ch;
  --c-paper: #FAF8F3; --c-ink: #1A1A1A; --c-mute: #6B6B6B; --c-rule: #1A1A1A; --c-accent: #C8102E;
  --rule: 1px solid var(--c-rule); --radius: 0;
}
```

## References to study

- press.stripe.com, nytimes.com (interactive features), theverge.com, kinfolk.com, monocle.com.
- Alexey Brodovitch, *Harper's Bazaar*; Jan Tschichold, *The Form of the Book*.
- Robert Bringhurst, *The Elements of Typographic Style*.

## What makes it look generic

- Serif only in the title and the rest like any SaaS: no editorial rhythm (standfirst, caption, drop cap, rule).
- Text lines of 120 characters: nobody reads them.
- Stock photos of people smiling at the camera.

## Pairs with / clashes with

- **Pairs with:** `school-quiet-luxury`, `school-swiss`, `school-handcrafted`, `school-japanese`, `school-maximalist`, `school-organic`.
- **Clashes with:** `school-clay-3d`, `school-material`, `school-dark-tech`, `school-bento`, `school-spatial-glass`, `school-tactile`.

## Checklist

1. Text column between 60 and 75 characters, body ≥ 18 px?
2. A clear type pairing: display serif, readable text face, UI sans?
3. Does every photo have a caption or credit and an editorial ratio?
4. Is there rhythm: headline, standfirst, body, quote, rule?
5. Does the accent appear rarely and with meaning (section, link)?
6. Does the page read from start to finish, without distraction?
