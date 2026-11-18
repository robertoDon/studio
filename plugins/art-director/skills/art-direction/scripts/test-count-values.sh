#!/usr/bin/env bash
# Checks count-values.sh against the fixture, inside git and outside it (find path).
set -eu
here=$(cd "$(dirname "$0")" && pwd)
bash "$here/count-values.sh" "$here/fixture/src/.." | diff -u "$here/fixture/expected.md" - && echo "ok: git file list"
tmp=$(mktemp -d "${TMPDIR:-/tmp}/cv-test.XXXXXX"); trap 'rm -rf "$tmp"' EXIT
cp -R "$here/fixture/src" "$tmp/src"
bash "$here/count-values.sh" "$tmp" | diff -u "$here/fixture/expected.md" - && echo "ok: find file list"
