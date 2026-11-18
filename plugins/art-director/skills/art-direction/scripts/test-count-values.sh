#!/usr/bin/env bash
# Checks count-values.sh against the fixture, with git and without it (find path).
# The copy gains a nested repo (other/, own .git) that the count must leave out.
set -eu
here=$(cd "$(dirname "$0")" && pwd)
tmp=$(mktemp -d "${TMPDIR:-/tmp}/cv-test.XXXXXX"); trap 'rm -rf "$tmp"' EXIT
cp -R "$here/fixture" "$tmp/p"; rm "$tmp/p/expected.md"
mkdir -p "$tmp/p/other/.git"; echo '.x { font-size: 99px; }' > "$tmp/p/other/x.css"
bash "$here/count-values.sh" "$tmp/p" | diff -u "$here/fixture/expected.md" - && echo "ok: find file list"
git -C "$tmp/p" init -q
bash "$here/count-values.sh" "$tmp/p" | diff -u "$here/fixture/expected.md" - && echo "ok: git file list"
