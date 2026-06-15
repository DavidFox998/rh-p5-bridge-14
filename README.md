# rh-p5-bridge-14 — Morning Star Project

**Status: OPEN** — Riemann Hypothesis is unproved.

P5 Bridge and 14 exceptional primes — supporting scaffold for the RH tower.

## Contents

- `ZeroDensity.lean` — N(σ,T) strip-counting function + N_monotone_in_sigma (BRICK).
- `ZProtocolBridge.lean` — Z-Protocol honesty bridge (rate_le_one; NOT a brick).
- `GrowthContradiction.lean` — honest conditional reduction skeleton (NOT a brick).

## Honesty

No claim is made that any finite Z-Protocol numerical check closes the RH conjecture.
`rate_le_one` proves only that the ratio passed/total ≤ 1.
The 14 exceptional primes bridge and P5 result are OPEN.

## Toolchain

```
leanprover/lean4:v4.12.0
mathlib: v4.12.0
```
