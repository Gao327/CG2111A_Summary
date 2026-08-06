# CS3244 Machine Learning notes

This folder contains a restructured and corrected English study guide based on the user-provided `CS3244笔记.pdf`.

## Files

- `CS3244_Machine_Learning_Notes.tex`: editable LaTeX entry point.
- `sections/`: chapter source files.
- `figures*.tex`: editable TikZ sources for all 17 instructional figures.
- `CS3244_Machine_Learning_Notes.pdf`: compiled A4 study guide.
- `SOURCE_AUDIT.md`: source coverage and substantive correction record.
- `build.sh`: deterministic Tectonic build and PDF quality checks.

## Build

From the repository root:

```sh
sh CS3244/build.sh
```

The document uses the standard LaTeX `article` class with vector TikZ/PGFPlots diagrams. The build requires Tectonic and Poppler.

## Scope

The guide preserves the mathematical content of the source while correcting formulas, assumptions, and notation. It does not reproduce the source screenshots or handwritten layout. This is an unofficial study aid; current course materials remain authoritative for assessed scope.
