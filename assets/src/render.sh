#!/bin/sh
# Renders the README images from the HTML sources at 2x. Usage: sh assets/src/render.sh [name ...]
# Needs Google Chrome and network (fonts come from Google Fonts).
set -e
cd "$(dirname "$0")"
CHROME="${CHROME:-/Applications/Google Chrome.app/Contents/MacOS/Google Chrome}"

size() {
  case "$1" in
    hero) echo 1280,640 ;;
    schools) echo 1280,1556 ;;
    how-it-works) echo 1280,640 ;;
    *) echo "unknown image: $1" >&2; exit 1 ;;
  esac
}

for name in "${@:-hero schools how-it-works}"; do
  for n in $name; do
    "$CHROME" --headless=new --hide-scrollbars --force-device-scale-factor=2 \
      --window-size="$(size "$n")" --virtual-time-budget=8000 \
      --screenshot="$PWD/../$n.png" "file://$PWD/$n.html" 2>/dev/null
    echo "assets/$n.png"
  done
done
