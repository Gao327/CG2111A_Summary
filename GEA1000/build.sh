#!/bin/sh
set -eu

ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
SRC="$ROOT/GEA1000/GEA1000_Quantitative_Reasoning_Notes.tex"
OUT="$ROOT/GEA1000"
TMP="$ROOT/GEA1000/tmp"
PDF="$OUT/GEA1000_Quantitative_Reasoning_Notes.pdf"
BUILD="$TMP/build"

mkdir -p "$TMP/render" "$BUILD"
rm -f "$TMP/render"/page-*.png

tectonic --keep-logs --keep-intermediates --reruns 2 --outdir "$BUILD" "$SRC" >"$TMP/tectonic.stdout.log" 2>"$TMP/tectonic.stderr.log"
cp "$BUILD/GEA1000_Quantitative_Reasoning_Notes.pdf" "$PDF"
pdftotext "$PDF" "$TMP/GEA1000_Quantitative_Reasoning_Notes.txt"
pdffonts "$PDF" >"$TMP/fonts.txt"
pdfinfo "$PDF" >"$TMP/pdfinfo.txt"
pdftoppm -png -r 150 "$PDF" "$TMP/render/page" >/dev/null 2>&1

printf '%s\n' "Built: $PDF"
grep '^Pages:' "$TMP/pdfinfo.txt"
printf '%s\n' "Rendered pages: $(find "$TMP/render" -name 'page-*.png' | wc -l | tr -d ' ')"
