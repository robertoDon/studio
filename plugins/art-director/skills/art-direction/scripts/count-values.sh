#!/usr/bin/env bash
# count-values.sh: counts the design values a project really uses.
# Same project, same numbers: a fixed file list, fixed patterns and a fixed sort.
#
#   bash count-values.sh [project-dir]        (default: the current directory)
#
# Files: git ls-files (tracked + untracked, not ignored) when inside a git repo,
# else find. Both are filtered by the same extension and folder rules below.
# Counted: raw numbers only. var(--x) is a token use, not a stray value.
# Skipped: comment lines, CSS custom-property definitions (those are the tokens)
# and lines over 4000 characters (generated code).
# Tailwind classes count by step name (tw 4, tw lg): the scale can be customized.
# Prints a Markdown report on stdout. Needs only bash, git (optional), awk, sort.
set -eu

VERSION=1.0
dir=${1:-.}
[ -d "$dir" ] || { echo "count-values: not a directory: $dir" >&2; exit 2; }
cd "$dir"
export LC_ALL=C

tmp=$(mktemp -d "${TMPDIR:-/tmp}/count-values.XXXXXX")
trap 'rm -rf "$tmp"' EXIT

exts='\.(css|scss|sass|less|styl|pcss|js|jsx|mjs|cjs|ts|tsx|mts|cts|vue|svelte|astro|html|htm|mdx)$'
skip='(^|/)(node_modules|dist|build|out|coverage|vendor|\.git|\.next|\.nuxt|\.svelte-kit|\.output|\.turbo|\.vercel)/|\.min\.|\.d\.ts$'

if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  git -c core.quotePath=false ls-files -co --exclude-standard
else
  find . \( -name node_modules -o -name .git \) -prune -o -type f -print | sed 's|^\./||'
fi | { grep -E "$exts" || true; } | { grep -Ev "$skip" || true; } | sort -u > "$tmp/files"

cat > "$tmp/scan.awk" <<'AWK'
function add(k, v) {
  if (v == "") return
  uses[k]++
  if (!((k SUBSEP v) in cnt)) uniq[k]++
  cnt[k SUBSEP v]++
}
function dbl(c) { return c c }
function isnum(v) { return v ~ /^-?[0-9]*\.?[0-9]+[a-z%]*$/ }
function iszero(v) { return v ~ /^-?[0.]+[a-z%]*$/ }
function norm(v) {
  if (v ~ /^-?\./) sub(/\./, "0.", v)
  if (v ~ /^-?[0-9]*\.?[0-9]+$/) v = v "px"    # unitless = px (React, React Native)
  return v
}
function addnums(k, s,    n, i, a) {
  gsub(/!important/, "", s)
  n = split(s, a, /[ \t\/]+/)
  for (i = 1; i <= n; i++) if (isnum(a[i]) && !iszero(a[i])) add(k, norm(a[i]))
}
# the value after "prop:" with an optional opening quote removed
function after(m) { sub(/^[^:]*:[ \t]*["'`]?/, "", m); return m }
function family(s,    a) {
  split(s, a, ",")
  s = a[1]; gsub(/["'`;]/, "", s); gsub(/^[ \t]+|[ \t]+$/, "", s); gsub(/[ \t]+/, " ", s)
  if (s !~ /^[a-z]/ || s ~ /[.(){}]/ || s ~ /^(inherit|initial|unset|revert)$/ || isnum(s)) return ""
  return s
}
# A bare Tailwind word (rounded, shadow) only counts when it looks like a class:
# after a quote, space or colon, and before a quote, another class or the line end.
function bare(b, a) { return b ~ /^["'`: ]?$/ && a ~ /^(["'`]|[ \t]+[a-z0-9:!-]|[ \t]*$)/ }
function ms(v, bare_is_seconds,    x) {
  gsub(/["'`]/, "", v)
  if (v ~ /ms$/) return int(substr(v, 1, length(v) - 2) + 0.5)
  if (v ~ /s$/) return int(substr(v, 1, length(v) - 1) * 1000 + 0.5)
  x = v + 0
  # shortcut: a bare number under 10 is read as seconds (Framer Motion), else ms
  return (bare_is_seconds && x < 10) ? int(x * 1000 + 0.5) : int(x + 0.5)
}
function dur(f, ln, v, loop) {
  if (v <= 0) return
  add("duration", v "ms")
  if (!loop && v > 160) over[++nover] = sprintf("%07d\t%s:%d", v, f, ln)
}
# Every match of re whose char before is not in pre and char after is not in post.
# Fills M (the match), B (the char before) and A (12 chars after). Returns the count.
function grab(s, re, pre, post,    n, last, b, c, m) {
  n = 0; last = ""
  while (match(s, re)) {
    m = substr(s, RSTART, RLENGTH)
    b = (RSTART > 1) ? substr(s, RSTART - 1, 1) : last
    c = substr(s, RSTART + RLENGTH, 1)
    if (!(pre != "" && b ~ pre) && !(post != "" && c ~ post)) {
      M[++n] = m; B[n] = b; A[n] = substr(s, RSTART + RLENGTH, 12)
    }
    last = substr(m, RLENGTH, 1)
    s = substr(s, RSTART + RLENGTH)
  }
  return n
}
function doline(f, ln, line,    l, t, n, i, j, k, v, rest, loop, P, np) {
  if (length(line) > 4000) return
  l = tolower(line)
  t = l; sub(/^[ \t]+/, "", t)
  if (t ~ /^(\/\/|\/\*|\*|<!--)/) return

  n = grab(l, "var\\(--[a-z0-9_-]+", "", "")
  for (i = 1; i <= n; i++) add("css var used", substr(M[i], 5))
  if (t ~ /^--[a-z0-9_-]+[ \t]*:/) {
    v = t; sub(/[ \t]*:.*/, "", v); add("css var defined", v)
    if (v ~ /^--font/ && v !~ /size|weight|feature|variation|style|stretch|optical|kerning|synthesis|smoothing|leading|tracking|line/) {
      rest = t; sub(/^[^:]*:/, "", rest); add("font family", family(rest))
    }
    return
  }

  # color
  n = grab(l, "#[0-9a-f]+", "[&a-z0-9_]", "[a-z0-9_-]")
  for (i = 1; i <= n; i++) {
    v = M[i]; k = length(v) - 1
    if (k == 3 || k == 4) v = "#" dbl(substr(v, 2, 1)) dbl(substr(v, 3, 1)) dbl(substr(v, 4, 1)) (k == 4 ? dbl(substr(v, 5, 1)) : "")
    if (k == 3 || k == 4 || k == 6 || k == 8) add("color", v)
  }
  n = grab(l, "(rgba?|hsla?|hwb|lab|lch|oklab|oklch|color)\\([^)]*\\)", "[a-z0-9_$.-]", "")
  for (i = 1; i <= n; i++) {
    v = M[i]; gsub(/[ \t]+/, " ", v); gsub(/ ?, ?/, ",", v); gsub(/\( /, "(", v); gsub(/ \)/, ")", v)
    add("color", v)
  }

  # text size
  n = grab(l, "font-?size[ \t]*:[ \t]*[\"'`]?[^;}\"'`,]+", "[a-z0-9_]", "")
  for (i = 1; i <= n; i++) addnums("font size", after(M[i]))
  n = grab(l, "text-(xs|sm|base|lg|xl|[2-9]xl)", "[a-z0-9_-]", "[a-z0-9_-]")
  for (i = 1; i <= n; i++) add("font size", "tw " substr(M[i], 6))
  n = grab(l, "text-\\[[0-9.]+(px|rem|em)\\]", "[a-z0-9_-]", "")
  for (i = 1; i <= n; i++) { v = M[i]; gsub(/^text-\[|\]$/, "", v); add("font size", norm(v)) }

  # font family
  n = grab(l, "font-?family[ \t]*:[^;}]+", "[a-z0-9_]", "")
  for (i = 1; i <= n; i++) add("font family", family(after(M[i])))
  if (l ~ /from[ \t]*["']next\/font\/google["']/ && l ~ /\{/) {
    v = l; sub(/^[^{]*\{/, "", v); sub(/\}.*$/, "", v)
    np = split(v, P, ",")
    for (i = 1; i <= np; i++) {
      v = P[i]; gsub(/^[ \t]+|[ \t]+$/, "", v); sub(/[ \t]+as[ \t].*$/, "", v); gsub(/_/, " ", v)
      if (v ~ /^[a-z]/) add("font family", v)
    }
  }
  if (l ~ /fonts\.googleapis\.com/) {
    n = grab(l, "family=[a-z0-9+]+", "", "")
    for (i = 1; i <= n; i++) { v = substr(M[i], 8); gsub(/\+/, " ", v); add("font family", v) }
  }
  n = grab(l, "@fontsource(-variable)?/[a-z0-9-]+", "", "")
  for (i = 1; i <= n; i++) { v = M[i]; sub(/^[^\/]*\//, "", v); gsub(/-/, " ", v); add("font family", v) }

  # spacing
  n = grab(l, "(padding|margin)(-?(top|right|bottom|left|inline|block|horizontal|vertical|start|end)(-?(start|end))?)?[ \t]*:[ \t]*[\"'`]?[^;}\"'`,]+", "[a-z0-9_]", "")
  for (i = 1; i <= n; i++) addnums("spacing", after(M[i]))
  n = grab(l, "((row|column)-?)?gap[ \t]*:[ \t]*[\"'`]?[^;}\"'`,]+", "[a-z0-9_]", "")
  for (i = 1; i <= n; i++) addnums("spacing", after(M[i]))
  n = grab(l, "(p|px|py|pt|pr|pb|pl|ps|pe|m|mx|my|mt|mr|mb|ml|ms|me|gap|gap-x|gap-y|space-x|space-y)-([0-9]+(\\.5)?|px)", "[a-z0-9_]", "[a-z0-9_.]")
  for (i = 1; i <= n; i++) { v = M[i]; sub(/^.*-/, "", v); if (v != "0") add("spacing", "tw " v) }
  n = grab(l, "(p|px|py|pt|pr|pb|pl|ps|pe|m|mx|my|mt|mr|mb|ml|ms|me|gap|gap-x|gap-y|space-x|space-y)-\\[[^]]+\\]", "[a-z0-9_]", ":")
  for (i = 1; i <= n; i++) { v = M[i]; sub(/^[^[]*\[/, "", v); sub(/\]$/, "", v); if (isnum(v) && !iszero(v)) add("spacing", norm(v)) }

  # radius
  n = grab(l, "border(-?(top|bottom|start|end)-?(left|right|start|end))?-?radius[ \t]*:[ \t]*[\"'`]?[^;}\"'`,]+", "[a-z0-9_]", "")
  for (i = 1; i <= n; i++) addnums("radius", after(M[i]))
  n = grab(l, "rounded(-(t|r|b|l|s|e|tl|tr|bl|br|ss|se|es|ee))?(-(none|xs|sm|md|lg|xl|2xl|3xl|4xl|full))?", "[a-z0-9_-]", "[a-z0-9_-]")
  for (i = 1; i <= n; i++) {
    if (M[i] == "rounded" && !bare(B[i], A[i])) continue
    rest = substr(M[i], 8)
    if (rest !~ /^-(none|xs|sm|md|lg|xl|2xl|3xl|4xl|full)$/) sub(/^-[a-z]+/, "", rest)
    v = (rest == "") ? "default" : substr(rest, 2)
    if (v != "none") add("radius", "tw " v)
  }

  # shadow
  n = grab(l, "box-?shadow[ \t]*:[ \t]*[\"'`]?[^;}\"'`]+", "[a-z0-9_]", "")
  for (i = 1; i <= n; i++) {
    v = after(M[i]); gsub(/!important/, "", v); gsub(/[ \t]+/, " ", v); gsub(/ ?, ?/, ", ", v); gsub(/^ | $/, "", v)
    if (v != "none" && v !~ /^var\(/) add("shadow", v)
  }
  n = grab(l, "shadow(-(2xs|xs|sm|md|lg|xl|2xl|inner|none))?", "[a-z0-9_-]", "[a-z0-9_-]")
  for (i = 1; i <= n; i++) {
    if (M[i] == "shadow" && !bare(B[i], A[i])) continue
    v = (M[i] == "shadow") ? "default" : substr(M[i], 8)
    if (v != "none") add("shadow", "tw " v)
  }

  # duration (loops are counted but never listed as over the ceiling)
  loop = (l ~ /infinite|repeat[ \t]*:[ \t]*infinity|animate-(spin|ping|pulse|bounce)/)
  n = grab(l, "(transition|animation)(-duration|-delay)?[ \t]*:[^;}]+", "[a-z0-9_-]", "")
  for (i = 1; i <= n; i++) P[i] = after(M[i])
  np = n
  for (j = 1; j <= np; j++) {
    n = grab(P[j], "[0-9]*\\.?[0-9]+m?s", "[a-z0-9_.]", "[a-z0-9_]")
    for (i = 1; i <= n; i++) dur(f, ln, ms(M[i], 0), loop)
  }
  n = grab(l, "(duration|delay)[ \t]*:[ \t]*[\"'`]?[0-9]*\\.?[0-9]+(m?s)?", "[a-z0-9_-]", "[0-9a-z]")
  for (i = 1; i <= n; i++) { v = M[i]; sub(/^[^:]*:[ \t]*/, "", v); dur(f, ln, ms(v, 1), loop) }
  n = grab(l, "(duration|delay)-[0-9]+", "[a-z0-9_-]", "[a-z0-9_-]")
  for (i = 1; i <= n; i++) { v = M[i]; sub(/^[a-z]+-/, "", v); dur(f, ln, v + 0, loop) }

  # z-index
  n = grab(l, "z-?index[ \t]*:[ \t]*[\"'`]?-?[0-9]+", "[a-z0-9_]", "[0-9]")
  for (i = 1; i <= n; i++) { v = M[i]; sub(/^[^:]*:[ \t]*["'`]?/, "", v); add("z-index", v + 0) }
  n = grab(l, "z-[0-9]+", "[a-z0-9_]", "[a-z0-9_-]")
  for (i = 1; i <= n; i++) add("z-index", "tw " substr(M[i], 3))

  # Tailwind arbitrary values (variants such as data-[state=open]: are left out)
  n = grab(l, "[a-z][a-z0-9-]*-\\[[^] \t\"'`]+\\]", "[a-z0-9_]", ":")
  for (i = 1; i <= n; i++) add("arbitrary", M[i])
}
BEGIN {
  while ((getline f < list) > 0) {
    ln = 0
    r = (getline line < f)
    if (r < 0) continue
    files++
    while (r > 0) { doline(f, ++ln, line); r = (getline line < f) }
    close(f)
  }
  for (key in cnt) { split(key, kv, SUBSEP); printf "C\t%s\t%d\t%s\n", kv[1], cnt[key], kv[2] }
  for (k in uses) printf "S\t%s\t%d\t%d\n", k, uses[k], uniq[k]
  for (i = 1; i <= nover; i++) printf "O\t%s\n", over[i]
  printf "F\t%d\n", files + 0
}
AWK

cat > "$tmp/report.awk" <<'AWK'
BEGIN {
  FS = "\t"
  nk = split("font size|font family|spacing|radius|color|shadow|duration|z-index|arbitrary|css var defined|css var used", K, "|")
  split("Text size|Font family|Spacing|Radius|Color|Shadow|Duration|z-index|Tailwind arbitrary value|CSS variable defined|CSS variable used", L, "|")
}
$1 == "C" { if (++seen[$2] <= 5) { v = $4; gsub(/\|/, "\\|", v); top[$2] = top[$2] (seen[$2] > 1 ? ", " : "") v " ×" $3 } }
$1 == "S" { u[$2] = $3; q[$2] = $4 }
$1 == "O" { if (++no <= 50) row[no] = sprintf("| %d | %s |", $2 + 0, $3) }
$1 == "F" { files = $2 }
END {
  print "# Value count"
  print ""
  printf "art-director count-values %s · %d files scanned\n\n", version, files
  print "| Kind | Uses | Unique | Top 5 (value ×uses) |"
  print "|---|---|---|---|"
  for (i = 1; i <= nk; i++) printf "| %s | %d | %d | %s |\n", L[i], u[K[i]], q[K[i]], (K[i] in top) ? top[K[i]] : "—"
  print ""
  if (no == 0) print "Durations over 160 ms: none (loops left out)."
  else {
    print "Durations over 160 ms (loops left out). Check each against the ceiling: touch 160, reveal 700, scene 1200, delays included."
    print ""
    print "| ms | Where |"
    print "|---|---|"
    for (i = 1; i <= no && i <= 50; i++) print row[i]
    if (no > 50) printf "\n…and %d more not shown.\n", no - 50
  }
  print ""
  print "Counted: raw numbers only; var() is a token use. Skipped: comment lines and CSS custom-property definitions (the tokens). Tailwind steps count by name (tw 4, tw lg)."
}
AWK

awk -v list="$tmp/files" -f "$tmp/scan.awk" > "$tmp/raw"
tab=$(printf '\t')
{
  grep '^C' "$tmp/raw" | sort -t "$tab" -k2,2 -k3,3nr -k4,4 || true
  grep '^S' "$tmp/raw" || true
  grep '^O' "$tmp/raw" | sort -t "$tab" -k2,2r -k3,3 || true
  grep '^F' "$tmp/raw"
} | awk -v version="$VERSION" -f "$tmp/report.awk"
