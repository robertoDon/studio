---
name: surface-ecommerce
description: E-commerce: storefront and product listings, product page, cart and checkout, grounded in Baymard Institute research. Works with any visual school. Use when designing, coding or reviewing an online store, catalog, product page, cart, checkout or Shopify store, or when someone asks for "a store", "e-commerce", "checkout", "cart abandonment", "a product page".
---

# E-commerce · See it, want it, pay without friction

Sources: Baymard Institute (e-commerce usability research: checkout, product page, listings, search); Nielsen Norman Group (e-commerce UX); Google web.dev (Core Web Vitals); WCAG 2.2. Baymard puts the average cart abandonment rate at ~70%, and much of it comes from design problems you can fix.

## Storefront and listings

- Product card: large photo with the same framing and aspect ratio (1:1 or 4:5), name, price, rating, and variants (colors) visible.
- A second photo on hover (desktop) shows the product in use.
- A discounted price shows the old one struck through and the new one; installments ("or 6× R$ 33.17 interest-free") drive the decision in Brazil.
- Filters relevant to the category (size, color, price, brand), with counts, applied as removable chips. On mobile, in a sheet with "Show 48 products".
- Sort by: relevance, best sellers, lowest price, highest price, newest.
- "Load more" instead of numbered pagination or endless infinite scroll (Baymard: the best balance).
- Search that tolerates typos, synonyms and plurals; autocomplete with products and categories.

## Product page

Above the fold (on mobile, down to the buy button):

1. Gallery: 5–8 photos, zoom, in-use photo, scale (a person or a hand), optional video. Neutral, consistent background.
2. Name, price, installments, rating with the number of reviews.
3. Variants as visible buttons (not a dropdown), with unavailable ones marked, not hidden. Colors with a swatch and a name.
4. A large **Buy** button in the thumb zone; sticky at the bottom on scroll on mobile.
5. Shipping cost and delivery time calculated by postal code on the page itself, before the cart.

Below: a scannable description (benefits as a list), specs in a table, a size guide, reviews with photos and filters, returns and exchanges in plain language, related products.

## Cart

- On add: a clear confirmation (sheet or mini-cart) with "View cart" and "Keep shopping". Don't take the person off the page without asking.
- Show: photo, name, variant, editable quantity, remove (with undo), subtotal, estimated shipping, total.
- Coupon as a discreet link ("Have a coupon?"), not an open field that sends people off to hunt for one.
- No surprises in the total: unexpected extra costs are the #1 reason for abandonment (Baymard).

## Checkout

Baymard: the average checkout has far too many fields; you can cut close to half.

- **Guest checkout** front and center. Account creation is optional, offered after payment.
- One column, clear steps (Shipping → Payment → Review) with progress, or one well-grouped page.
- The postal code fills in the address. "Full name" in one field. Phone with a forgiving mask. `autocomplete` on every field.
- Billing address "same as shipping" checked by default.
- Brazilian payments: **Pix** (with a QR code and a copy-paste code, deadline visible), card with installments, boleto, wallets (Apple Pay, Google Pay). Icon and name for each.
- Card: detect the brand from the number, a single expiry field (MM/YY), CVV with help.
- Order summary always visible (sidebar on desktop, collapsible on mobile).
- Security badges near payment; show "Secure payment" with the processor.
- Errors: on the field, in text, without wiping what was typed.
- Final button with the amount: "Pay $199.00".

## After purchase

- Confirmation with the order number, summary, delivery time and what happens next. The same in the email.
- Delivery tracking on its own page, no login needed.
- Pix: a waiting screen with a countdown to the deadline and automatic confirmation.

## Trust and performance

- Return policy, shipping, contact and company registration number reachable from any page.
- Real reviews, including the negative ones.
- Optimized photos (AVIF/WebP), LCP ≤ 2.5 s on the product page; lazy-load on listings.
- True stock and delivery times. Fake scarcity ("only 2 left!" forever) breaks trust and can violate consumer law (in Brazil, the Código de Defesa do Consumidor).

## Checklist

1. Cards with consistent photos, price, installments and variants?
2. Category filters with counts and removable chips?
3. Product page with a full gallery, variants as buttons and shipping by postal code?
4. Buy button always reachable on mobile?
5. Cart with no surprises in the total?
6. Guest checkout, a postal code that fills the address, Pix and installments?
7. Errors on the field without wiping data, final button with the amount?
8. After purchase: delivery time and tracking without login?
