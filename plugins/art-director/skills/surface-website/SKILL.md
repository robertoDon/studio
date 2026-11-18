---
name: surface-website
description: Company, content, blog or portfolio websites: information architecture, navigation, comfortable reading and basic structural SEO. Works with any visual school. Use when creating, redesigning or reviewing a site for a company, firm, restaurant, portfolio, blog or documentation, or when someone asks for "a company website", "a portfolio", "a blog", "the site menu", "information architecture".
---

# Website · Find, read, trust

Sources: Louis Rosenfeld, Peter Morville and Jorge Arango, *Information Architecture for the Web and Beyond*; Steve Krug, *Don't Make Me Think*; Nielsen Norman Group (navigation, F-pattern reading, "How Users Read on the Web"); Google Search Central (SEO Starter Guide); WCAG 2.2. The school gives the personality. This skill makes the site findable and understood.

## Information architecture

1. List **the 3–5 questions** visitors bring ("What do you do?", "How much does it cost?", "Where are you?", "How do I reach someone?", "Are you any good?"). Each one becomes a page or section.
2. Group by the visitor's mental model, not the org chart. Test with card sorting (5–15 people) when there are more than 15 pages.
3. A maximum depth of 3 clicks for any important content.
4. Menu labels in the visitor's words: "Services", "Pricing", "Contact" beat "Solutions", "Our journey".

Base structure for a company site: **Home · Services/Products · About · Case studies/Portfolio · Blog (if any) · Contact**.

## Navigation

- 4–7 items in the main menu. Logo on the left links home. Contact or CTA on the right.
- Current item marked. A sticky top menu is optional; if sticky, ≤ 64 px and it shrinks on scroll.
- On mobile: a full-screen or sheet menu, with 48 px items and the CTA at the end.
- Footer as a map: every important link, address, phone, social, privacy.
- Search once there are more than ~50 content pages.
- Breadcrumbs in deep content (blog, docs, catalog).

## Home page

- In 5 seconds: what it is, who it's for, why trust it, what to do now (the five-second test).
- Hero with a clear proposition + action + real image (team, place, work done). Generic stock photos kill trust.
- Then: services in 3–6 blocks, proof (clients, numbers, testimonials), one featured project, a final CTA.
- Auto-rotating hero carousel: avoid it. Almost nobody sees slide 2.

## Reading

People scan (NN/g: they read ~20–28% of the words).

- Headings that state the conclusion. A subheading every 3–5 paragraphs.
- Paragraphs of 2–4 lines. The first sentence of each paragraph carries the idea.
- Body 17–20 px in articles, line height 1.5–1.7, measure of 60–75 characters (`max-width: 65ch`).
- Lists for steps and items; tables for comparison.
- Link text that names the destination, underlined in body copy.
- Publish date and author on content; an updated date on content that ages.

## Portfolio

- The work is the hero: big image, little text around it.
- Each case: the problem, what was done, the result (a number when there is one), credits.
- 6–12 best pieces beat 40 average ones. Filter by type only if there are many.
- Contact one click away from any case.

## Structural SEO

- One `<h1>` per page, with the subject. `h2`/`h3` subheadings in order.
- A unique `<title>` per page (~50–60 characters, subject first, brand last) and a `meta description` (~150–160 characters) that invites the click.
- Short, readable URLs: `/services/tax-consulting`, not `/page?id=37`.
- Text in real HTML (not only in images or rendered only on the client).
- Descriptive `alt` on content images. Light images (AVIF/WebP) with dimensions.
- Internal links between related pages. `sitemap.xml`, `robots.txt`, canonical.
- Structured data (JSON-LD) where it fits: Organization, LocalBusiness (address, hours), Article, Product, FAQ.
- Open Graph (1200 × 630 image, title, description) for link previews in WhatsApp and on social.
- Core Web Vitals: LCP ≤ 2.5 s, INP ≤ 200 ms, CLS ≤ 0.1.

## Machine-readable (MX)

AI agents and search engines read the site too. Muzli calls this MX, the machine experience, and treats it as a **prediction** for 2026. Source: https://muz.li/blog/web-design-trends-2026/ (#10). The structural SEO rules above still apply; add these:

- Use correctly named elements: `<nav>`, `<main>`, `<article>`, `<button>` (no clickable `div`) and `<a>` with a real destination.
- The text exists in the server-delivered HTML before any animation. A canvas or WebGL hero whose title is only drawn in the scene is an empty page to a machine (`trend-3d-webgl`, `trend-cinematic-scroll`).
- Video comes with a transcript or a text summary.
- Price, hours, address and FAQ also go in JSON-LD. In e-commerce, every product page has Product and Offer.
- Logged-in areas aren't indexed, but semantics still matter for screen readers.

## Local business (restaurant, clinic, shop)

- Address, hours, phone/WhatsApp and map on the home page and in the footer, as text (not an image).
- Menu, price list or services in HTML, not in a PDF.
- Call (`tel:`) and directions buttons on mobile.

## Checklist

1. Are the visitor's 3–5 questions answered within ≤ 3 clicks?
2. Menu with 4–7 items in the visitor's words?
3. Does the home page pass the five-second test?
4. Scannable text, a 60–75 character measure, body ≥ 17 px in articles?
5. One `h1`, unique title and description, readable URLs?
6. Real, light images with `alt`?
7. Contact visible and tappable on mobile?
