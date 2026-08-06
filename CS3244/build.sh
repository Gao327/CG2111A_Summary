#!/bin/sh
set -eu

ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
SRC="$ROOT/CS3244/CS3244_Machine_Learning_Notes.tex"
OUT="$ROOT/CS3244"
TMP="$ROOT/CS3244/tmp"
BUILD="$TMP/build"
PDF="$OUT/CS3244_Machine_Learning_Notes.pdf"

mkdir -p "$TMP/render" "$BUILD" "$ROOT/output/pdf"
rm -f "$TMP/render"/page-*.jpg

/opt/homebrew/bin/tectonic --keep-logs --keep-intermediates --reruns 2 --outdir "$BUILD" "$SRC" >"$TMP/tectonic.stdout.log" 2>"$TMP/tectonic.stderr.log"
cp "$BUILD/CS3244_Machine_Learning_Notes.pdf" "$PDF"
cp "$PDF" "$ROOT/output/pdf/CS3244_Machine_Learning_Notes.pdf"

pdftotext "$PDF" "$TMP/CS3244_Machine_Learning_Notes.txt"
pdffonts "$PDF" >"$TMP/fonts.txt"
pdfinfo "$PDF" >"$TMP/pdfinfo.txt"
pdftoppm -jpeg -r 120 "$PDF" "$TMP/render/page" >/dev/null 2>&1

printf '%s\n' "Built: $PDF"
grep '^Pages:' "$TMP/pdfinfo.txt"
printf '%s\n' "Rendered pages: $(find "$TMP/render" -name 'page-*.jpg' | wc -l | tr -d ' ')"
