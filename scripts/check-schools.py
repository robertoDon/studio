#!/usr/bin/env python3
"""Checks that the schools agree with each other and with the matrix examples.

Fails when: a "pairs with" link goes one way only, a pair is also a clash,
or a worked example in matrix.md uses an accent outside the main school's list.
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

def school(display):
    slug = {"y2k": "y2k-retrofuture"}.get(display.lower(), re.sub(r"[ /]+", "-", display.strip().lower()))
    return "school-" + slug

matrix = (root / "art-direction/references/matrix.md").read_text()
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
