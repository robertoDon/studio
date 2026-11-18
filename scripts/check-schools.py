#!/usr/bin/env python3
"""Checks that the schools agree with each other and with the matrix examples.

Fails when: a "pairs with" or "clashes with" link goes one way only, a pair is
also a clash, a matrix table names a school that does not exist, a sector row
puts clashing schools in one route or gives an accent that clashes with a main,
or a worked example uses an accent outside the main school's list.
Run from anywhere: python3 scripts/check-schools.py
"""
import pathlib, re, sys

root = pathlib.Path(__file__).resolve().parent.parent / "plugins/art-director/skills"
pairs, clashes = {}, {}
for f in sorted(root.glob("school-*/SKILL.md")):
    s, name = f.read_text(), f.parent.name
    p = re.search(r"\*\*Pairs with:\*\*(.*)", s)
    c = re.search(r"\*\*Clashes with:\*\*(.*)", s)
    pairs[name] = set(re.findall(r"school-[a-z0-9-]+", p.group(1))) if p else set()
    clashes[name] = set(re.findall(r"school-[a-z0-9-]+", c.group(1))) if c else set()

errors = []
for a in sorted(pairs):
    for b in sorted(pairs[a]):
        if b not in pairs:
            errors.append(f"{a} pairs with unknown {b}")
        elif a not in pairs[b]:
            errors.append(f"one-way pair: {a} lists {b}, {b} does not list {a}")
        if b in clashes.get(a, set()) or a in clashes.get(b, set()):
            errors.append(f"pair and clash at once: {a} / {b}")
    for b in sorted(clashes[a]):
        if b in clashes and a not in clashes[b]:
            errors.append(f"one-way clash: {a} lists {b}, {b} does not list {a}")

def school(display):
    slug = {"y2k": "y2k-retrofuture"}.get(display.lower(), re.sub(r"[ /]+", "-", display.strip().lower()))
    return "school-" + slug

matrix = (root / "art-direction/references/matrix.md").read_text()
def clash(a, b):
    return b in clashes.get(a, set()) or a in clashes.get(b, set())

def marked(cell):
    """(school, 'M' or 'a') for each marked name in a table cell."""
    return [(school(n), "M" if m else "a")
            for n, m, _ in re.findall(r"([A-Z][A-Za-z0-9 /]+?) (?:\*\*(M)\*\*|\*(a)\*)", cell)]

sectors = matrix.split("## 1.", 1)[1].split("## 2.", 1)[0]
for line in sectors.splitlines():
    cells = [c.strip() for c in line.split("|")[1:-1]]
    if len(cells) < 3 or "**M**" not in cells[1]:
        continue
    row, routes = cells[0].split(" (")[0], [marked(cells[1]), marked(cells[2])]
    every = [x for r in routes for x in r]
    for n, _ in every:
        if n not in pairs:
            errors.append(f"sector '{row}': unknown school {n}")
    for r in routes:
        for i, (x, _) in enumerate(r):
            for y, _ in r[i + 1:]:
                if clash(x, y):
                    errors.append(f"sector '{row}': {x} and {y} clash in one route")
    # bold accents ride on the bold main when there is one, else on the safe mains
    bold_mains = [n for n, k in routes[1] if k == "M"]
    if not bold_mains:
        for x in sorted({n for n, _ in routes[1]}):
            for m in [n for n, k in routes[0] if k == "M"]:
                if clash(x, m):
                    errors.append(f"sector '{row}': bold accent {x} clashes with safe main {m}")

images = matrix.split("## 2.", 1)[1].split("## 3.", 1)[0]
for line in images.splitlines():
    cells = [c.strip() for c in line.split("|")[1:-1]]
    if len(cells) < 3 or not cells[0].startswith("**"):
        continue
    for n in cells[1].split(","):
        if school(re.sub(r"\(.*?\)", "", n).strip()) not in pairs:
            errors.append(f"image {cells[0]}: unknown school {n.strip()}")

examples = matrix.split("## 5. Worked examples", 1)[1]
for line in examples.splitlines():
    if not line.startswith("- **"):
        continue
    body = line.split(":**", 1)[1]
    main = re.search(r"([A-Z][A-Za-z0-9 /]+?) \*\*M\*\*", body)
    if not main:
        continue
    m = school(main.group(1))
    for acc in re.findall(r"([A-Z][A-Za-z0-9 /]+?) \*a\*", body):
        a = school(acc.split(" or ")[-1].split("+ ")[-1])
        if m not in pairs or a not in pairs:
            errors.append(f"example uses an unknown school: {m} / {a}")
        elif a not in pairs[m]:
            errors.append(f"example: {a} is not in {m}'s pairs-with list")

print("\n".join(errors) or f"ok: {len(pairs)} schools, examples agree")
sys.exit(1 if errors else 0)
