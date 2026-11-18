#!/usr/bin/env bash
# Checks count-values.sh against the fixture, with git and without it (find path).
# The copy gains a nested repo (other/, own .git) that the count must leave out.
set -eu
here=$(cd "$(dirname "$0")" && pwd)
tmp=$(mktemp -d "${TMPDIR:-/tmp}/cv-test.XXXXXX"); trap 'rm -rf "$tmp"' EXIT
cp -R "$here/fixture" "$tmp/p"; rm "$tmp/p/expected.md"
mkdir -p "$tmp/p/other/.git"; echo '.x { font-size: 99px; }' > "$tmp/p/other/x.css"
bash "$here/count-values.sh" "$tmp/p" | sed 's/count-values [^ ]* ·/count-values X ·/' | diff -u "$here/fixture/expected.md" - && echo "ok: find file list"
git -C "$tmp/p" init -q
bash "$here/count-values.sh" "$tmp/p" | sed 's/count-values [^ ]* ·/count-values X ·/' | diff -u "$here/fixture/expected.md" - && echo "ok: git file list"

# one check per bug the fixture covers (src/cases/)
out=$(bash "$here/count-values.sh" "$tmp/p")
want() { printf '%s\n' "$out" | grep -qF -- "$2" || { echo "FAIL: $1 (missing: $2)"; exit 1; }; }
nope() { ! printf '%s\n' "$out" | grep -qF -- "$2" || { echo "FAIL: $1 (found: $2)"; exit 1; }; }
want ":root line defines tokens"      "--a ×1"
nope ":root token is not a stray color" "#123456"
nope "one name per font"              "inter variable"
want "touch below 700 is listed"      "| 180 | src/cases/rules.css:3 |"
want "timers in one block = sequence" "| 1850 | 3 | src/cases/Steps.tsx:2 |"
want "onClick reads as touch"         "| 400 | touch | src/cases/Steps.tsx:7 |"
want "delay in its own property adds" "| 1300 | ? | 700 | src/cases/rules.css:4 |"
want "animation-delay on its own line" "| 1300 | reveal | 700 | src/cases/rules.css:5 |"
want "JSX style transition"           "| 900 | ? | 700 | src/cases/Steps.tsx:8 |"
want "JSX transitionDuration"         "| 800 | ? | 700 | src/cases/Steps.tsx:9 |"
want "rounded-[13px] is a radius"     "13px ×1"
want "stagger shows its total"        "| 80 | 300 + N×80 | src/cases/rules.css:7 |"
want "each raw value shows its places" "| Color | #333333 | 2 | src/styles.css:13, src/styles.css:21 |"
want "arbitrary radius has its place"   "| Radius | 13px | 1 | src/cases/Steps.tsx:9 |"
want "places cut at 3 by default"       "| Color | #abcdef | 4 | src/cases/places.css:1, src/cases/places.css:2, src/cases/places.css:3 +1 more |"
nope "Tailwind steps are not raw"       "| Radius | tw "
echo "ok: bug cases"
