---
name: base-microcopy
description: Interface microcopy: a verb on every button, errors that say how to fix them, empty states with voice and an action, confirmations, tone by brand. Use when writing or reviewing button text, labels, error messages, toasts, onboarding, empty states or notifications, or when the user asks to "improve this copy", "UX writing", "error message", "tone of voice".
---

# Microcopy · The interface talks

Sources: Kinneret Yifrah, *Microcopy: The Complete Guide*; Torrey Podmajersky, *Strategic Writing for UX*; Nielsen Norman Group ("Error-Message Guidelines", "Tone of Voice"); Material Design 3 and Apple HIG (Writing); Mailchimp Content Style Guide. The school changes how it talks. Clarity does not change.

## General rules

- **Short and in the right order:** what matters comes first. "Payment declined. Try another card."
- **The user's words,** not the system's: "Customers", not "Records"; "Couldn't save", not "Persistence failure".
- **Active voice and second person** when talking to the person ("You received"), first person when it's their choice ("My orders").
- **Sentence case** (only the first letter capitalized) on buttons, titles and menus. All caps only for short small-caps labels.
- **No exclamation marks, no jargon, no "please" everywhere.** Say "sorry" only when the product is at fault.
- **Numbers as digits** ("3 tasks"), relative dates when recent ("2 days ago"), absolute when older ("12 Mar").

## Buttons

| Bad | Good | Why |
|---|---|---|
| OK / Confirm / Submit | Send message / Pay $49 | Verb + object: says what happens |
| Yes / No | Delete proposal / Keep | Options that make sense without reading the question |
| Click here | See plans | A link says where it goes |
| Cancel (in a cancel-subscription flow) | Keep subscription / Cancel subscription | Removes ambiguity |

Primary button: 1–3 words. Same verb as the dialog title ("Delete proposal?" → "Delete").

## Errors

Format: **what happened + how to fix it**, right where it happened, without blaming the person.

| Bad | Good |
|---|---|
| Invalid data. | Phone number needs 10 digits. You entered 9. |
| Error 500. | Couldn't save right now. Your changes are kept; try again in 1 minute. |
| Incorrect password! | That password doesn't match. Forgot it? We'll send you a link. |
| Required field. | Enter your email to get the receipt. |

Show the error only after the person leaves the field or submits, not while they type. State the format up front (helper text), not only afterward.

## Empty states

Format: **what will show up here + why it's worth it + the action that makes it appear**.

- Bad: "No data found."
- Good: "Your proposals show up here. Create your first one in 2 minutes." [Create proposal]
- No search results: say what was searched and offer a way out: "Nothing for 'acme ltd'. Try just 'acme' or create the customer."
- Empty because everything is done is a win, not an absence: "All caught up."

## Confirmation and feedback

- Action done: confirm it in place, in the past tense, with the object: "Reminder sent", "Message copied".
- Irreversible action: confirm first, naming what disappears and the consequence: "Delete 'Acme proposal'? It disappears for the whole team."
- Better than confirming: **undo**. "Proposal archived. [Undo]"

## Loading and waiting

- Up to 1 s: no text. 1–10 s: a skeleton or "Loading proposals…". > 10 s: say what is happening and how long is left.
- Use the ellipsis (…) and the -ing form only while it is happening.

## Tone by brand

Tone shifts with context: lighter on success, more serious on errors and money. Define 3 adjectives for the voice and what it is **not**.

| Brand | Is | Is not | Success example |
|---|---|---|---|
| Trustworthy (bank, health) | Clear, calm, precise | Cute, jokey | "Transfer sent. Arrives within 30 min." |
| Modern (SaaS, tech) | Direct, lean, confident | Robotic | "Done. 3 contacts imported." |
| Playful (consumer, Gen Z) | Light, witty | Forced, slang-heavy | "Done. You're on a roll." |
| Chic (luxury) | Restrained, elegant, few words | Overfamiliar, exclamatory | "Your order has been confirmed." |
| Welcoming (wellness, cooking) | Warm, human | Syrupy | "Recipe saved. Enjoy your meal." |

Never joke in errors, data loss, money or health.

## Checklist

1. Does every button have a verb + object and make sense on its own?
2. Does every error say what happened and how to fix it, next to the field?
3. Does every empty state have a voice and an action?
4. Confirmations in place, with undo when possible?
5. The user's words, no jargon, no exclamation marks?
6. Tone defined in 3 adjectives and consistent across the product?
7. No jokes in errors, money or health?
