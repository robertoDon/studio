---
name: surface-landing-page
description: Landing pages that convert: the hero → proof → how it works → pricing → FAQ → CTA structure, above the fold, one action, speed (LCP, CLS) and what each block must hold. Works with any visual school. Use when creating, redesigning or reviewing a landing page, product page, lead-capture page or launch page, or when someone asks for "a landing page", "a sales page", "a hero section", "convert more".
---

# Landing page · One page, one action

Sources: Nielsen Norman Group ("Scrolling and Attention", "The Fold Manifesto"); Google web.dev (Core Web Vitals); Joanna Wiebe / Copyhackers (conversion copy); Baymard Institute (trust and pricing); Apple HIG and *Refactoring UI* for hierarchy. The school gives the look. The structure below gives the result.

## One action

- Define **the** page action (start a free trial, book a demo, buy, join the waitlist). Every block pushes toward it.
- The same button, with the same label, appears in the hero, the middle and the end. Secondary actions (watch the demo, talk to sales) get text or outline buttons only.
- Minimal navigation: logo, 3–5 anchor links, sign in and the CTA. On a paid-campaign page, drop the navigation.

## Structure

| # | Block | What it must have | Common mistake |
|---|---|---|---|
| 1 | **Hero** | Headline with the outcome (≤ 8 words), subhead that says what it is and who it's for (1–2 lines), CTA, short proof below ("Used by 2,300 clinics"), the real product in the image | Abstract headline ("The future of work"), generic illustration |
| 2 | **Proof** | Customer logos, a proof number, app-store rating or review score | 20 unreadable logos |
| 3 | **Problem → solution** | The pain in the customer's words, and the turn | Feature list |
| 4 | **How it works** | 3 steps with a real screen or a short video (≤ 30 s, muted, captioned) | 9 steps |
| 5 | **Benefits** | 3–6 blocks: benefit as the title, feature as the proof | Vague benefit ("more productivity") |
| 6 | **Testimonial** | Name, photo, role, company and one concrete result | Anonymous testimonial |
| 7 | **Pricing** | Price in plain sight, 1–3 plans, the recommended one highlighted, what each includes, risk removed (trial, cancel anytime) | "Talk to sales" as the only price on a low-ticket product |
| 8 | **FAQ** | 5–8 real objections (price, security, contract, migration, support), in an accordion | Questions nobody asks |
| 9 | **Final CTA** | Short headline + the same button | Page that ends on the FAQ |
| 10 | **Footer** | Contact, terms, privacy, social, company registration number | |

Order can shift by audience: for expensive B2B products, proof and testimonials move up; for cheap consumer products, pricing moves up.

## Above the fold

The fold is not a wall (NN/g: people scroll), but what sits above it decides whether they do. At 375 × 667 and 1440 × 900, the first glance shows: **what it is, who it's for, the action and a hint of the product**. No full-screen hero with one poetic line and an arrow.

## Hero by the numbers

- Headline: 40–56 px on mobile, 56–96 px on desktop. 2–3 lines max.
- Subhead: 18–22 px, secondary text color at 4.5:1, 2 lines max.
- CTA: 48–56 px tall, label with a verb ("Start free").
- Space between sections: ≥ 96 px on desktop, ≥ 64 px on mobile.
- Text width: up to 640–720 px.

## Speed

A slow page loses people before they read. Core Web Vitals targets (web.dev, 75th percentile):

| Metric | Target |
|---|---|
| LCP (largest visible element) | ≤ 2.5 s |
| INP (response to interaction) | ≤ 200 ms |
| CLS (layout shift) | ≤ 0.1 |

- Hero image in AVIF/WebP, with `width`/`height`, `fetchpriority="high"` and no lazy-load. Everything else gets `loading="lazy"`.
- Hero text in real HTML, not in an image or rendered only by JavaScript (SEO and LCP).
- Fonts with `font-display: swap` and a tuned fallback. Video with a `poster` and no autoplay with sound.
- Entrance animation never delays the headline (see `base-motion`).

## Trust

- Price with tax and currency made clear. No hidden fine print.
- Security badge only where there is payment or sensitive data.
- Real contact (email, WhatsApp) visible.
- Privacy policy and data-protection notice (LGPD in Brazil) in the footer and on the form.

## Capture form

- The fewest fields: email (and name, if needed). Every extra field costs conversion.
- The button says what the person gets ("Get the guide"), not "Submit".
- After submitting: a success page or state with the next step.

## Checklist

1. Does the page have one action, repeated in the hero, the middle and the end?
2. Does the hero say what it is and who it's for, show the real product and keep the CTA above the fold at 375 px?
3. Proof with a name, a number and a concrete result?
4. Price in plain sight (when the model allows)?
5. Does the FAQ answer the real objections?
6. LCP ≤ 2.5 s, CLS ≤ 0.1, hero text in HTML?
7. Works at 375 px with no horizontal scroll?
