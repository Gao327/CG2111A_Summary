# GEA1000 LaTeX notes

This folder contains a clean, independently re-typeset and corrected study guide for GEA1000.

## Files

- `GEA1000_Quantitative_Reasoning_Notes.tex`: editable LaTeX source.
- `GEA1000_Quantitative_Reasoning_Notes.pdf`: compiled study guide.
- `SOURCES.md`: source and correction notes.
- `build.sh`: deterministic local build and PDF QA commands.
- `tmp/`: generated logs and rendered pages; not a final deliverable.

## Build

Requirements: Tectonic and Poppler (`pdftoppm`, `pdftotext`, `pdffonts`).

```sh
./build.sh
```

The final PDF is refreshed in this folder. The document uses the Fandol CJK font set distributed through TeX, so it does not depend on a specific local Chinese font. The first Tectonic build may download missing TeX packages.

## Scope

This is an unofficial study aid, not an NUS publication. It does not reproduce the source PDF's download watermark, handwritten annotations, or personal information. Always check the current semester's official materials for assessed scope and notation.
