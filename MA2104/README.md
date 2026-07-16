# MA2104 LaTeX formula guide

This folder contains a re-typeset and corrected MA2104 multivariable calculus study guide.

## Files

- `MA2104_Formula_Guide.tex`: editable LaTeX source, including all TikZ diagrams.
- `MA2104_Formula_Guide.pdf`: final compiled study guide.

## Build

From the workspace root:

```sh
mkdir -p MA2104/tmp/build
tectonic --outdir MA2104/tmp/build MA2104/MA2104_Formula_Guide.tex
cp MA2104/tmp/build/MA2104_Formula_Guide.pdf MA2104/MA2104_Formula_Guide.pdf
```

The source uses `ctexart` for Chinese typesetting and draws all diagrams with TikZ. Tectonic downloads missing TeX packages into its local cache on first build.

## Source and editorial scope

The topic coverage follows `MA2104 Cheatsheet.pdf` from the user-provided [Gao327/NUS-Computer-Engineering](https://github.com/Gao327/NUS-Computer-Engineering) repository. The text, structure, formulas, and diagrams in this edition were reworked for readability and mathematical precision. No raster image from the source PDF is embedded.

Important corrections include:

- continuous partial derivatives near a point are a sufficient, not necessary, condition for differentiability;
- the full general quadratic equation includes cross and linear terms;
- `D = 0` in the second derivative test is inconclusive;
- a missing variable produces a cylinder only with nondegenerate/domain caveats;
- `atan2(y,x)` is used for quadrant-correct angles;
- Green, Gauss, and Stokes theorems include regularity, region, and orientation conditions;
- outward normals are tied specifically to closed boundary surfaces.
