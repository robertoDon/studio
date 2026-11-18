---
name: surface-web-app
description: Web apps and dashboards: navigation, ⌘K, tables, forms, the four states (empty, loading, error, success) and density. Works with any visual school. Use when designing, coding or reviewing a SaaS product, admin panel, dashboard, internal tool, CRM or back office, or when someone asks for "a dashboard", "a table", "a form", "an admin panel", "a web app".
---

# Web app · A tool that disappears in the hand

Sources: Nielsen Norman Group (navigation, tables, forms, "Response Times: The 3 Important Limits"); *Refactoring UI*; Material Design 3 (navigation rail, data tables); Apple HIG (macOS sidebars); patterns from Linear, Notion, Attio, Stripe Dashboard. The school gives the look. This skill makes the tool work every day.

## Navigation

| Top-level items | Pattern |
|---|---|
| 2–5 | Top bar or tabs |
| 5–10 | Fixed sidebar (240–280 px), collapsible to icons (56–72 px) |
| > 10 | Sidebar with groups + search |

- Active item marked by background + weight + filled icon, not color alone.
- Page title = the navigation item's name. Breadcrumbs from 3 levels deep.
- The URL reflects state (filter, tab, open item): people can share it and come back.
- The create action sits at the top of the page or list, always in the same place.

## ⌘K and shortcuts

- **⌘K / Ctrl+K** opens the command palette: search anything and run any action.
- Single-letter shortcuts for frequent actions (C create, / search, Esc close), and `G` + letter to navigate. Show the shortcut in the tooltip and the menu.
- `?` shows the shortcut list. Never override a browser or system shortcut.

## Tables

- 1 px rules, horizontal only. No heavy zebra striping; hover highlights the row.
- Row height 44–52 px (comfortable); 32–36 px (compact, for experts).
- Text left-aligned, numbers right-aligned with `tabular-nums`, dates in one consistent format.
- Sticky, sortable header with a sort indicator.
- First column (the name) frozen on horizontal scroll. On mobile, the table becomes a list of cards.
- Row actions on hover (desktop) and in a "…" menu (always). Multi-select with a bulk-action bar.
- Inline editing when the field is simple. Modals only for creating something complex.
- Filters visible as removable chips; a result count ("128 customers").

## Forms

- One column. Label above the field, always visible.
- Group into sections of 3–5 fields. A long form becomes steps with progress.
- Field width hints at the answer's length (short postal code, long address).
- Validate on blur. Error in red + icon + text, below the field.
- Mark the optional fields, not the required ones (when most are required).
- Primary button at the end, aligned to the form's leading edge; keep it enabled and explain what's missing on click.
- Autosave in settings; a "Save" button when creating.
- `autocomplete`, `inputmode` and forgiving input masks (see Postel in `base-ux`).

## The four states

Every screen and every component that loads data has all four designed. If one is missing, the screen isn't done.

| State | Rule |
|---|---|
| **Empty** | Says what will appear, why it's worth it, and the button that makes it appear. Shows the shape of what's coming (ghost rows), not a generic illustration. Distinguish "first use", "no search results" and "all done". |
| **Loading** | < 300 ms: nothing. 300 ms–2 s: skeleton in the final shape. > 2 s: progress and text. Never a full-screen spinner. Nothing jumps when the data arrives. |
| **Error** | In place of the content that failed (it doesn't take down the whole screen), with what happened, what to do and a "Try again" button. The rest of the screen stays usable. |
| **Success** | Confirms in place of the action ("Saved", "Sent") within ≤ 100 ms (optimistic update). Toasts only for what happens out of view, with undo. |

Two more to remember: **partial** (some items) and **no permission** (says who can grant access).

## Dashboard

- Each block answers one question. The block title is the question or the conclusion ("Revenue up 12% this month").
- 3–5 KPIs at the top: big number, small unit, comparison with the previous period, and source.
- Every data point with its source and last-updated date.
- The right chart: line for time, bar for comparison, no pie with more than 3 slices, no 3D.
- The next step sits next to the data ("3 overdue invoices → Collect").

## Density

Heavy-use apps can carry more information per screen than consumer apps. Start comfortable (44–52 px) and offer compact to those who ask. Body text 14–16 px on desktop; never below 12 px.

## Checklist

1. Navigation fits the number of items, with a clear active item and state in the URL?
2. ⌘K and shortcuts for frequent actions, shown in the interface?
3. Tables with right-aligned numbers, a sticky header and a list version on mobile?
4. Forms in one column, visible labels, errors that say how to fix them?
5. Empty, loading, error and success designed for each block?
6. Feedback within ≤ 100 ms and no full-screen spinner?
7. Dashboard with source, date and next step?
