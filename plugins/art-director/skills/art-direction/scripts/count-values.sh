#!/usr/bin/env bash
# count-values.sh: counts the design values a project really uses.
# Same project, same numbers: a fixed file list, fixed patterns and a fixed sort.
#
#   bash count-values.sh [--all] [project-dir]   (default: the current directory)
#   --all: every value per kind (not just the top 5) and every row of every table
#
# Files: git ls-files (tracked + untracked, not ignored) when inside a git repo,
# else find. Both are filtered by the same extension and folder rules below.
# Nested repos and submodules (a folder with its own .git) are left out and named.
# Subprojects (a folder with its own package.json) are named in the header.
# Counted: raw numbers only. var(--x) is a token use, not a stray value.
# Skipped: test files, comment lines, CSS custom-property definitions (those are
# the tokens) and lines over 4000 characters (generated code).
# Durations: var(--x) is read from its definition; a delay is added to the duration
# it delays (same transition item, or the same line in JS and Tailwind).
# Tailwind classes count by step name (tw 4, tw lg): the scale can be customized.
# Prints a Markdown report on stdout. Needs only bash, git (optional), awk, sort.
set -eu

# the plugin's own version, so the report always names the release that made it
VERSION=$(sed -n 's/.*"version": *"\([^"]*\)".*/\1/p' "$(dirname "$0")/../../../.claude-plugin/plugin.json" 2>/dev/null || true)
VERSION=${VERSION:-dev}
all=0; dir=.
for a in "$@"; do case $a in --all) all=1 ;; *) dir=$a ;; esac; done
[ -d "$dir" ] || { echo "count-values: not a directory: $dir" >&2; exit 2; }
cd "$dir"
export LC_ALL=C

tmp=$(mktemp -d "${TMPDIR:-/tmp}/count-values.XXXXXX")
trap 'rm -rf "$tmp"' EXIT

exts='\.(css|scss|sass|less|styl|pcss|js|jsx|mjs|cjs|ts|tsx|mts|cts|vue|svelte|astro|html|htm|mdx)$'
skip='(^|/)(node_modules|dist|build|out|coverage|vendor|\.git|\.next|\.nuxt|\.svelte-kit|\.output|\.turbo|\.vercel)/|\.min\.|\.d\.ts$|\.(test|spec)\.[a-z]+$|(^|/)(__tests__|__mocks__)/'

# drop paths inside a nested repo (the list in $tmp/nested)
outside() { awk -v nf="$tmp/nested" 'BEGIN { while ((getline d < nf) > 0) n[++k] = d "/" } { for (i = 1; i <= k; i++) if (index($0 "/", n[i]) == 1) next; print }'; }

find . \( -path ./.git -o -name node_modules \) -prune -o -name .git -print | sed 's|^\./||; s|/\.git$||' | sort -u > "$tmp/nested"

if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  git -c core.quotePath=false ls-files -co --exclude-standard
else
  find . \( -name node_modules -o -name .git \) -prune -o -type f -print | sed 's|^\./||'
fi | { grep -E "$exts" || true; } | { grep -Ev "$skip" || true; } | outside | sort -u > "$tmp/files"

find . \( -name node_modules -o -name .git \) -prune -o -name package.json -print | sed 's|^\./||' | { grep / || true; } \
  | sed 's|/package\.json$||' | { grep -Ev "$skip" || true; } | outside | sort -u > "$tmp/subs"
if [ -s "$tmp/subs" ]; then
  # per subproject: its file count; files outside every subproject go by folder (2 levels)
  awk 'NR == FNR { d[++n] = $0; next }
       { for (i = 1; i <= n; i++) if (index($0, d[i] "/") == 1) { c[i]++; next }
         k = $0; sub(/\/[^\/]*$/, "", k); if (k == $0) k = "(root)"; else if (split(k, a, "/") > 2) k = a[1] "/" a[2]
         if (!(k in x)) o[++m] = k; x[k]++ }
       END { for (i = 1; i <= n; i++) printf "P\t%s\t%d\n", d[i], c[i] + 0
             for (i = 1; i <= m; i++) printf "X\t%s\t%d\n", o[i], x[o[i]] }' "$tmp/subs" "$tmp/files" > "$tmp/meta"
fi
awk '{ print "N\t" $0 }' "$tmp/nested" >> "$tmp/meta"

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
# Kind from nearby words (the line, its open blocks, the file name). A guess: the agent confirms it.
function guess(s) {
  # English and Portuguese words
  if (s ~ /hover|focus|press|whiletap|:active|active:|button|btn|botao|toque|clique/) return "touch"
  if (s ~ /page|route|intro|hero|scene|pagina|cena|abertura/) return "scene"
  if (s ~ /enter|appear|reveal|scroll|keyframes|animation|fade|inview|revela|surge|abre|aparece|desliza|entrada|mostra/) return "reveal"
  return "?"
}
function gx(    g) { g = guess(cx); return (g == "?") ? guess(base) : g }
function keep(v, kind, w,    c, fl) {
  if (kind ~ /^timer/) {
    if (v > 160) { fl = w; sub(/:[0-9]+$/, "", fl); timers[++ntm] = sprintf("%07d\t%s\t%s\t%d", v, substr(kind, 7), fl, substr(w, length(fl) + 2)) }
    return
  }
  c = (kind == "scene") ? 1200 : (kind == "touch") ? 160 : 700
  if (v > c) { if (!(w in ov) || v > ov[w]) { ov[w] = v; ok[w] = kind; oc[w] = c } }
  else if (kind == "?" && !(w in ov) && (!(w in uq) || v > uq[w])) uq[w] = v
}
# kind: "" = guess it, "timer", or "loop" (counted, never listed)
function dur(f, ln, v, kind) {
  if (v <= 0) return
  add("duration", v "ms")
  chk(f, ln, v, kind)
}
# the ceiling check alone (a delay already counted, added to its duration)
function chk(f, ln, v, kind) {
  if (kind == "loop" || v <= 160) return
  if (kind == "timer") kind = "timer:" gx()
  if (kind == "") kind = gx()
  if (cd > 0) { ++npend; pv[npend] = v; pk[npend] = kind; pd[npend] = cd; pl[npend] = cl; pw[npend] = f ":" ln; return }
  if (!cl) keep(v, kind, f ":" ln)
}
# A block closed: decide its durations. Any loop word in the block makes all of them loops.
function flush(lvl,    i, n) {
  n = 0
  for (i = 1; i <= npend; i++) {
    if (pd[i] > lvl) { if (!pl[i] && !bloop[pd[i]]) keep(pv[i], pk[i], pw[i]) }
    else { ++n; pv[n] = pv[i]; pk[n] = pk[i]; pd[n] = pd[i]; pl[n] = pl[i]; pw[n] = pw[i] }
  }
  npend = n
  for (i = lvl + 1; i <= maxd; i++) { bloop[i] = 0; blk[i] = 0; ctx[i] = "" }
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
# Tracks { } depth. A block is a CSS rule or a JS object literal ("= {", ": {", "({", "{{"),
# not a function body: a loop word in a function must not hide the other durations in it.
function doline(f, ln, line,    l, t, x, o, c, d0, d1, dd, b, i) {
  l = tolower(line)
  t = l; sub(/^[ \t]+/, "", t)
  if (t ~ /^(\/\/|\/\*|\*|<!--)/) return
  x = l; o = gsub(/\{/, "", x); c = gsub(/\}/, "", x)
  d0 = depth; d1 = d0 + o - c; if (d1 < 0) d1 = 0
  if (d1 > d0) {
    b = l; sub(/[ \t]*\{[^{]*$/, "", b)
    b = (css || substr(b, length(b), 1) ~ /[=:({,[]/ || (markup && b ~ /^[ \t]*[.#&@:[]/)) ? 1 : 0
    for (i = d0 + 1; i <= d1; i++) { ctx[i] = l; blk[i] = b; bloop[i] = 0 }
    if (d1 > maxd) maxd = d1
  }
  depth = d1
  dd = (d0 > d1) ? d0 : d1
  cd = blk[dd] ? dd : 0
  cl = (l ~ /infinite|repeat[ \t]*:[ \t]*infinity|animate-(spin|ping|pulse|bounce)/)
  if (cl && cd) bloop[cd] = 1
  cx = l; for (i = 1; i <= dd; i++) if (blk[i]) cx = cx " " ctx[i]
  scan(f, ln, line, l, t)
  if (d1 < d0) flush(d1)
}
# var(--x) in a line, replaced by the time it was defined as (when known)
function tvars(s,    o, nm) {
  o = ""
  while (match(s, /var\(--[a-z0-9_-]+[^)]*\)/)) {
    nm = substr(s, RSTART + 4, RLENGTH - 4); sub(/[ \t]*[,)].*$/, "", nm)
    o = o substr(s, 1, RSTART - 1) ((nm in tvar) ? tvar[nm] : substr(s, RSTART, RLENGTH))
    s = substr(s, RSTART + RLENGTH)
  }
  return o s
}
# durations and delays of one line (DV values, DK 1 = a delay): each delay is
# counted; with a duration on the line, the delays add to it, else they stand alone
function pair(f, ln, n,    i, d, has) {
  d = 0; has = 0
  for (i = 1; i <= n; i++) if (DK[i]) d += DV[i]; else has = 1
  for (i = 1; i <= n; i++) {
    if (DV[i] <= 0) continue
    add("duration", DV[i] "ms")
    if (!has) chk(f, ln, DV[i], "")
    else if (!DK[i]) chk(f, ln, DV[i] + d, "")
  }
}
function scan(f, ln, line, l, t,    n, i, j, k, v, s, x, y, rest, P, np) {
  if (length(line) > 4000) return

  n = grab(l, "var\\(--[a-z0-9_-]+", "", "")
  for (i = 1; i <= n; i++) add("css var used", substr(M[i], 5))
  if (t ~ /^--[a-z0-9_-]+[ \t]*:/) {
    v = t; sub(/[ \t]*:.*/, "", v); add("css var defined", v)
    rest = t; sub(/^[^:]*:/, "", rest)
    # a font by name (--font-*) or by value: a stack that ends in a generic family (--display, --corpo)
    if ((v ~ /^--font/ && v !~ /size|weight|feature|variation|style|stretch|optical|kerning|synthesis|smoothing|leading|tracking|line/) \
        || rest ~ /(^|[ ,])(serif|sans-serif|monospace|cursive|fantasy|system-ui|ui-[a-z]+|emoji|math)[ \t]*(!important)?[ \t;}]*$/)
      add("font family", family(rest))
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

  # font shorthand: font: [style weight] size[/line-height] family
  n = grab(l, "font[ \t]*:[^;}]+", "[a-z0-9_.-]", "")
  for (i = 1; i <= n; i++) {
    v = after(M[i]); np = split(v, P, /[ \t]+/)
    for (j = 1; j <= np; j++) {
      x = P[j]; sub(/\/.*/, "", x)
      if (isnum(x) && x ~ /[a-z%]$/) {
        add("font size", norm(x))
        rest = ""; for (k = j + 1; k <= np; k++) rest = rest " " P[k]
        sub(/^[ \t]*\/[ \t]*[^ \t]+/, "", rest)
        if (P[j] ~ /\/$/) sub(/^[ \t]*[^ \t]+/, "", rest)
        add("font family", family(rest))
        break
      }
    }
  }

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
  n = grab(l, "(p|px|py|pt|pr|pb|pl|ps|pe|m|mx|my|mt|mr|mb|ml|ms|me|gap|gap-x|gap-y|space-x|space-y)-([0-9]+([.]5)?|px)", "[a-z0-9_]", "[a-z0-9_.]")
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
  ld = tvars(l)
  while (match(ld, /calc\([ \t]*(var\(--[a-z0-9_-]+\)[ \t]*\*[ \t]*[0-9.]+m?s|[0-9.]+m?s[ \t]*\*[ \t]*var\(--[a-z0-9_-]+\))[ \t]*\)/)) {
    v = substr(ld, RSTART, RLENGTH); ld = substr(ld, 1, RSTART - 1) " " substr(ld, RSTART + RLENGTH)
    gsub(/var\([^)]*\)/, "", v); match(v, /[0-9.]+m?s/)
    stag[++nst] = sprintf("%07d\t%s\t%d", ms(substr(v, RSTART, RLENGTH), 0), f, ln)
  }
  n = grab(ld, "(transition|animation)(-duration|-delay)?[ \t]*:[^;}]+", "[a-z0-9_-]", "")
  for (i = 1; i <= n; i++) { P[i] = after(M[i]); y = M[i]; sub(/[ \t]*:.*/, "", y); Q[i] = (y !~ /-/) }
  np = n
  for (j = 1; j <= np; j++) {
    # one shorthand item: its first time is the duration, the second its delay
    ni = Q[j] ? split(P[j], I, ",") : split(P[j], I, "\n")
    for (k = 1; k <= ni; k++) {
      # whole tokens, anchored: an unanchored match lost ".08s" in mawk
      nt = split(I[k], T, /[ \t()]+/); n = 0
      for (i = 1; i <= nt; i++) if (T[i] ~ /^[0-9]*[.]?[0-9]+m?s$/) M[++n] = T[i]
      if (Q[j] && n >= 2) { v = ms(M[1], 0); x = ms(M[2], 0); add("duration", v "ms"); if (x > 0) add("duration", x "ms"); chk(f, ln, v + x, ""); continue }
      for (i = 1; i <= n; i++) dur(f, ln, ms(M[i], 0), "")
    }
  }
  n = grab(ld, "(duration|delay)[ \t]*:[ \t]*[\"'`]?[0-9]*[.]?[0-9]+(m?s)?", "[a-z0-9_-]", "[0-9a-z]")
  for (i = 1; i <= n; i++) { v = M[i]; sub(/^[^:]*:[ \t]*/, "", v); DV[i] = ms(v, 1); DK[i] = (M[i] ~ /^delay/) }
  pair(f, ln, n)
  n = grab(l, "(duration|delay)-[0-9]+", "[a-z0-9_-]", "[a-z0-9_-]")
  for (i = 1; i <= n; i++) { v = M[i]; DK[i] = (v ~ /^delay/); sub(/^[a-z]+-/, "", v); DV[i] = v + 0 }
  pair(f, ln, n)

  # timers: setTimeout(fn, N) is a "timer", setInterval a loop; also the multi-line "}, N)" close
  if (twait != "" && t ~ /^[)}]+[ \t]*,/) {
    if (match(t, /^[)}]+[ \t]*,[ \t]*[0-9]+[ \t]*\)/)) { v = substr(t, RSTART, RLENGTH); gsub(/[^0-9]/, "", v); dur(f, ln, v + 0, twait) }
    twait = ""
  }
  if (l ~ /set(timeout|interval)[ \t]*\(/) {
    x = l; sub(/^.*settimeout[ \t]*\(/, "", x); y = l; sub(/^.*setinterval[ \t]*\(/, "", y)
    if (l ~ /setinterval[ \t]*\(/ && (l !~ /settimeout[ \t]*\(/ || length(y) < length(x))) { s = y; k = "loop" } else { s = x; k = "timer" }
    n = grab(s, ",[ \t]*[0-9]+[ \t]*\\)", "", "")
    if (n > 0) { v = M[n]; gsub(/[^0-9]/, "", v); dur(f, ln, v + 0, k) }
    else if (s ~ /(\{|=>)[ \t]*$/) twait = k
  }

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
  # first pass: custom properties defined as a time (--rapido: 200ms)
  while ((getline f < list) > 0) {
    while ((getline line < f) > 0) {
      line = tolower(line)
      while (match(line, /--[a-z0-9_-]+[ \t]*:[ \t]*[0-9]*[.]?[0-9]+m?s([ \t;}]|$)/)) {
        v = substr(line, RSTART, RLENGTH); line = substr(line, RSTART + RLENGTH)
        k = v; sub(/[ \t]*:.*/, "", k); sub(/^[^:]*:[ \t]*/, "", v); sub(/[ \t;}]*$/, "", v); tvar[k] = v
      }
    }
    close(f)
  }
  close(list)
  while ((getline f < list) > 0) {
    ln = 0
    r = (getline line < f)
    if (r < 0) continue
    files++
    depth = 0; twait = ""; base = tolower(f); sub(/^.*\//, "", base)
    css = (f ~ /\.(css|scss|sass|less|styl|pcss)$/); markup = (f ~ /\.(vue|svelte|astro|html|htm)$/)
    while (r > 0) { doline(f, ++ln, line); r = (getline line < f) }
    flush(-1)
    close(f)
  }
  for (key in cnt) { split(key, kv, SUBSEP); printf "C\t%s\t%d\t%s\n", kv[1], cnt[key], kv[2] }
  for (k in uses) printf "S\t%s\t%d\t%d\n", k, uses[k], uniq[k]
  for (w in ov) printf "O\t%07d\t%s\t%d\t%s\n", ov[w], ok[w], oc[w], w
  for (w in uq) if (!(w in ov)) printf "U\t%07d\t%s\n", uq[w], w
  for (i = 1; i <= nst; i++) printf "G\t%s\n", stag[i]
  for (i = 1; i <= ntm; i++) printf "T\t%s\n", timers[i]
  printf "F\t%d\n", files + 0
}
AWK

cat > "$tmp/report.awk" <<'AWK'
BEGIN {
  FS = "\t"
  nk = split("font size|font family|spacing|radius|color|shadow|duration|z-index|arbitrary|css var defined|css var used", K, "|")
  split("Text size|Font family|Spacing|Radius|Color|Shadow|Duration|z-index|Tailwind arbitrary value|CSS variable defined|CSS variable used", L, "|")
}
$1 == "C" { if (all || ++seen[$2] <= 5) { seen[$2] += all; v = $4; gsub(/\|/, "\\|", v); top[$2] = top[$2] (seen[$2] > 1 ? ", " : "") v " ×" $3 } }
$1 == "S" { u[$2] = $3; q[$2] = $4 }
$1 == "T" { tr[++nt] = sprintf("| %d | %s | %s:%d |", $2 + 0, ($3 == "?" ? "—" : $3), $4, $5) }
$1 == "O" { row[++no] = sprintf("| %d | %s | %d | %s |", $2 + 0, $3, $4, $5) }
$1 == "U" { ur[++nu] = sprintf("| %d | %s |", $2 + 0, $3) }
$1 == "G" { gr[++ng] = sprintf("| %d | %s:%d |", $2 + 0, $3, $4) }
$1 == "X" { xo = xo (xo == "" ? "" : ", ") $2 " (" $3 " file" ($3 == 1 ? "" : "s") ")" }
$1 == "P" { sp = sp (sp == "" ? "" : ", ") $2 " (" $3 " file" ($3 == 1 ? "" : "s") ")" }
$1 == "N" { nr = nr (nr == "" ? "" : ", ") $2 }
$1 == "F" { files = $2 }
END {
  print "# Value count"
  print ""
  printf "art-director count-values %s · %d files scanned\n\n", version, files
  if (sp != "") printf "Subprojects (own package.json): %s. Monorepo: run once per app, in the app folder.\n", sp
  if (sp != "" && xo != "") printf "Outside them: %s.\n", xo
  if (sp != "") print ""
  if (nr != "") printf "Left out, nested repos (own .git): %s.\n\n", nr
  printf "| Kind | Uses | Unique | %s (value ×uses) |\n", all ? "All values" : "Top 5"
  print "|---|---|---|---|"
  for (i = 1; i <= nk; i++) printf "| %s | %d | %d | %s |\n", L[i], u[K[i]], q[K[i]], (K[i] in top) ? top[K[i]] : "—"
  print ""
  if (no == 0) print "Durations over the ceiling: none (loops left out)."
  else {
    print "Durations over the ceiling (loops left out; delays added, var() read from its definition). Ceiling by kind: touch 160, reveal 700, scene 1200; ? uses 700."
    print "One row per line (its longest). The kind is a guess from nearby words: confirm it."
    print ""
    print "| ms | Kind (guess) | Ceiling | Where |"
    print "|---|---|---|---|"
    for (i = 1; i <= no && (all || i <= 50); i++) print row[i]
    if (!all && no > 50) printf "\n…and %d more not shown (--all lists them).\n", no - 50
  }
  if (nu > 0) {
    printf "\nUnknown kind, 161 to 700 ms: %d line%s. Over the ceiling only if it is a touch: %s\n", nu, (nu == 1 ? "" : "s"), all ? "check each." : "run with --all to list them."
    if (all) { print ""; print "| ms | Where |"; print "|---|---|"; for (i = 1; i <= nu; i++) print ur[i] }
  }
  print ""
  if (ng == 0) print "Stagger steps (calc(var(--i) * step)): none."
  else {
    print "Stagger steps (calc(var(--i) * step)), left out of the durations. The last item waits step × (items − 1) more: check it against the ceiling."
    print ""
    print "| Step ms | Where |"
    print "|---|---|"
    for (i = 1; i <= ng && (all || i <= 50); i++) print gr[i]
    if (!all && ng > 50) printf "\n…and %d more not shown (--all lists them).\n", ng - 50
  }
  print ""
  if (nt == 0) print "Timers over 160 ms (setTimeout): none."
  else {
    print "Timers over 160 ms (setTimeout). Motion only when one starts or ends an animation (a typing cursor, a staged intro); a toast or a debounce is not."
    print ""
    print "In file order. Nearby words is the same guess as above: a word there hints at motion."
    print ""
    print "| ms | Nearby words | Where |"
    print "|---|---|---|"
    for (i = 1; i <= nt && (all || i <= 60); i++) print tr[i]
    if (!all && nt > 60) printf "\n…and %d more not shown (--all lists them).\n", nt - 60
  }
  print ""
  print "Counted: raw numbers only; var() is a token use. Skipped: test files, comment lines and CSS custom-property definitions (the tokens). Tailwind steps count by name (tw 4, tw lg)."
}
AWK

awk -v list="$tmp/files" -f "$tmp/scan.awk" > "$tmp/raw"
tab=$(printf '\t')
{
  grep '^C' "$tmp/raw" | sort -t "$tab" -k2,2 -k3,3nr -k4,4 || true
  grep '^S' "$tmp/raw" || true
  grep '^O' "$tmp/raw" | sort -t "$tab" -k2,2r -k5,5 || true
  grep '^T' "$tmp/raw" | sort -t "$tab" -k4,4 -k5,5n || true
  grep '^U' "$tmp/raw" | sort -t "$tab" -k2,2r -k3,3 || true
  grep '^G' "$tmp/raw" | sort -t "$tab" -k3,3 -k4,4n || true
  cat "$tmp/meta"
  grep '^F' "$tmp/raw"
} | awk -v version="$VERSION" -v all="$all" -f "$tmp/report.awk"
