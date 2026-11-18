---
name: base-ux
description: The UX base under every school. Laws of UX (Fitts, Hick, Jakob, Miller, Tesler, Doherty, Peak-end, Von Restorff, Postel) and Gestalt turned into screen rules, plus Nielsen's 10 heuristics with an audit format and 0–4 severity. Use when designing or reviewing a screen, flow, form, navigation or layout, or when the user asks for a "heuristic evaluation", "UX audit", "why is this screen confusing", "how do I make this easier", "laws of UX", "Gestalt".
---

# UX base · Psychology becomes measures, heuristics become fixes

Sources:
- *Laws of UX*, by Jon Yablonski (lawsofux.com, O'Reilly 2020).
- "10 Usability Heuristics for User Interface Design", by Jakob Nielsen (Nielsen Norman Group, 1994, revised 2020), and "Severity Ratings for Usability Problems".

The school changes how the product looks; the laws and heuristics don't change. Use the laws to design and the heuristics to audit.

## 1. Laws of UX

| Law | What it says | Screen rule |
|---|---|---|
| **Fitts** | Time to hit a target grows with distance and shrinks with size. | Primary action large (≥ 44 px tall) and close to the hand or cursor. Destructive actions far from confirm. On desktop, corners and edges are "infinite" targets. |
| **Hick** | Decision time grows with the number of options. | Up to 1 primary and 2 secondary actions per screen. A menu with more than 7 items becomes groups or search. Onboarding asks one thing at a time. |
| **Jakob** | People spend most of their time in other products and expect yours to work the same way. | Logo top left goes home. Cart top right. Search with a magnifier. Swipe back on iOS. Innovate on the look, not on the convention. |
| **Miller** | Working memory holds ~7±2 items (in practice 4±1; Cowan, 2001). | Break up long numbers (card number in blocks of 4). Long forms in steps of 3–5 fields. Don't ask people to remember something from another screen: show it again. |
| **Tesler** | Every task has complexity that doesn't go away; it only moves. | The system carries the complexity: a ZIP code fills in the address, the time zone is detected, the default comes suggested. |
| **Doherty** | Productivity soars when the system responds in under 400 ms. | Visual response in ≤ 100 ms. Past 400 ms, show a skeleton or progress. Optimistic updates for actions that almost never fail. |
| **Peak-end** | People remember an experience by its peak and its end. | Polish the moment of value (the first result) and the finish. An error at the end of a checkout spoils everything before it. |
| **Von Restorff** | The item that differs is the one remembered. | One highlight per screen, and not by color alone (`base-accessibility`). |
| **Postel** | Be liberal in what you accept and conservative in what you send. | Accept phone numbers with or without formatting, dates with slashes or dashes, emails with a trailing space. Normalize behind the scenes. |
| **Serial position** | We remember the first and last items best. | Put the most important items at the start and end of navigation. |
| **Zeigarnik / goal-gradient** | Unfinished tasks stay on our mind, and effort rises near the end. | Show real progress ("2 steps left"), starting with step 1 already done. Never fake progress. |

## 2. Gestalt: how the eye groups

| Principle | Screen rule |
|---|---|
| **Proximity** | Space between groups is ≥ 2× the space within a group. Label 4–8 px from its field; fields 16–24 px apart. |
| **Similarity** | Things that do the same job look the same. Looks the same but acts differently is a bug. |
| **Common region** | A card, background or border groups more strongly than proximity. Use it per section, not per item (a card inside a card is noise). |
| **Continuity** | The eye follows alignments. Align to few verticals; every new alignment is one more question. |
| **Figure-ground** | Modals, sheets and menus lift off the background with a 40–60% scrim or an elevation shadow. |
| **Closure** | A card cut off at the edge signals horizontal scroll. |
| **Common fate** | Things that move together belong together. Animate the group, not each item out of sync. |

## 3. Nielsen's 10 heuristics

| # | Heuristic | What to look for |
|---|---|---|
| 1 | **Visibility of system status** | Every click responds in ≤ 100 ms. Loading over 1 s shows progress. Active tab, title and "Saved" visible. |
| 2 | **Match between system and the real world** | The user's words ("Customers", not "Entities"). Local formats (e.g. dd/mm/yyyy, R$ 1.234,56 in Brazil). |
| 3 | **User control and freedom** | Undo instead of "Are you sure?". Back always works. Modals close with Esc and a click outside. |
| 4 | **Consistency and standards** | Same word and same position for the same thing. Follow the platform (HIG, Material). |
| 5 | **Error prevention** | Hide or disable the impossible. Confirm only the irreversible, naming what disappears. Validate in the field. |
| 6 | **Recognition rather than recall** | Options, recents and suggestions visible. A placeholder doesn't replace a label. |
| 7 | **Flexibility and efficiency of use** | Shortcuts, ⌘K, bulk actions. Beginners don't see them; experts speed up. |
| 8 | **Aesthetic and minimalist design** | Every element competes with the others. One subject per screen. |
| 9 | **Help users recognize, diagnose and recover from errors** | The error says what happened and how to fix it, next to the field. Never "Error 500" alone. |
| 10 | **Help and documentation** | Help at the point of doubt (tooltip, helper text). Ideally, none is needed. |

## 4. Audit

**Severity (Nielsen):**

| Score | Meaning | Action |
|---|---|---|
| 0 | Not a problem | Ignore |
| 1 | Cosmetic | If time allows |
| 2 | Minor: gets in the way, but there is a workaround | Low priority |
| 3 | Major: frequent, or many people stumble | Fix before launch |
| 4 | Catastrophe: blocks the task or loses data or money | Fix now |

The score combines frequency, impact and persistence.

**Script:**
1. Define 3–5 real tasks ("create a customer"). Audit the task, not a screen in isolation.
2. Do the task once as a user. The second time, go heuristic by heuristic and law by law.
3. Measure:
   - actions per screen (Hick): more than 3 with the same weight, pick one primary;
   - size and distance of the primary action (Fitts);
   - response time (Doherty);
   - groups (Gestalt): if the spacing doesn't match the grouping, fix the spacing before adding a border.
4. One problem per row, sorted by severity, grouping those with the same cause.
5. If you can, use 3–5 evaluators: one alone finds ~35% of the problems (Nielsen and Molich, 1990).

```markdown
| # | Where (screen · element) | Problem | Heuristic/law | Sev. | Fix |
|---|---|---|---|---|---|
| 1 | Checkout · "Continue" | Does nothing, with no warning, on an invalid ZIP code | H1, H9 | 3 | Inline error: "ZIP code not found. Check the 5 digits." |
```

Close with the total per severity (e.g. 2 × 4, 5 × 3) and the 3 fixes that change the experience most. Also say what still needs testing with real users.

## Common mistakes

- Citing a law to justify what you were going to do anyway. The law is for deciding.
- Reading Hick as "fewer options, always". Cutting what people need hides the problem; group and prioritize.
- Using Miller as a menu item limit. Menus are recognition, not memory; there the limit is Hick.
- Cards on everything to group things. Space solves it before borders do.

## Checklist

1. One primary action, large and close to the hand?
2. Up to 7 visible options per decision; conventions respected?
3. Does the system guess what it can and accept flexible formats?
4. Feedback in ≤ 100 ms and progress past 400 ms?
5. Space between groups ≥ 2× the space within; one highlight per screen?
6. Can people undo, go back and get out from anywhere?
7. Is every error prevented up front and, when it happens, does it say how to fix it?
8. Are the peak and the end of the experience polished?
