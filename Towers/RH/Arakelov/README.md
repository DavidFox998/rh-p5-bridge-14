# Towers/RH/Arakelov — Route A

Arakelov geometry input for RH Route A positivity.

[`AbbesUllmo.lean`](AbbesUllmo.lean) — Abbes-Ullmo slope inequality, `ArakelovPositivity (X₀ 143)` and `ω²=48/13>0`. This directory is the local core and Route A. Public core live `da3b943c662f` is recorded against the CHAIN.md lock `6ec00281c55d`. Former remotes `arakelov-positivity-rh-core` and `riemann-arakelov-positivity` are not fetched (`riemann-arakelov-positivity` is private).

If a Siegel zero existed, Arakelov height would be negative — contradiction. Distinct approach from descent ([`../KimSarnak/`](../KimSarnak/)), growth ([`../GrowthContradiction.lean`](../GrowthContradiction.lean)), and the desert map ([`../Formalized/Exceptional_Prime_Desert_Map.lean`](../Formalized/Exceptional_Prime_Desert_Map.lean)).
