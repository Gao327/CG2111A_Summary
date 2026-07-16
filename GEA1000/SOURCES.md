# Source and verification notes

## Content provenance

The structure and topic coverage were reconstructed from the user-provided `gea1000-cheatsheet.pdf`, which the user identified as open-source content. The text has been independently rewritten and reorganized. The source PDF's distribution watermark, downloader email address, and handwritten annotations were deliberately excluded.

This repository snapshot did not include an upstream source URL or an explicit license file for that PDF. Therefore, this document does not assert a specific license on behalf of the original author.

## Verification references

- NUS Registrar, Data Literacy Pillar and GEA1000 course description: <https://nus.edu.sg/registrar/academic-information-policies/undergraduate-students/general-education/data-literacy-pillar>
- OpenIntro Statistics, 4th edition: <https://www.openintro.org/book/os/>

Links were checked on 2026-07-15.

## Substantive corrections made

- Replaced `sampling frame >= population` with coverage, undercoverage, overcoverage, duplication, and currency checks.
- Defined SRS as equal probability for every size-n subset, not merely equal marginal probability for every unit.
- Added the random start and periodicity caveat to systematic sampling.
- Replaced the incorrect majority-based definition of Simpson's paradox with aggregate-versus-stratified reversal or disappearance, without treating it as automatic proof of causal confounding.
- Distinguished the zero condition for standard deviation from the weaker zero condition for IQR.
- Clarified that random assignment balances groups in expectation and does not guarantee exactly equal group composition.
- Marked mean-median-mode order under skew as a contextual heuristic rather than a theorem.
- Corrected correlation scaling: positive scaling preserves r, negative scaling flips its sign, and zero scaling makes r undefined.
- Made correlation-strength labels contextual and based on absolute magnitude.
- Reframed H0 and HA as parameter claims, and used reject/fail-to-reject language rather than confirm/accept.
- Used the repeated-sampling interpretation of frequentist confidence intervals.
- Moved the residual sum of squares out of the probability rules and into regression.
- Added applicability conditions for proportion, t, chi-square, and linear methods.
