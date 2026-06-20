# P5-Bridge-14 — Morning Star Project (Theorema Aureum 143)

**Classical trio only. No sorry. Mathlib v4.12.0.**

Axiom footprint: `{propext, Classical.choice, Quot.sound}`.

## What is here

A self-contained 10-step conditional chain from the Arakelov geometry of
the modular curve X₀(143) to `_root_.RiemannHypothesis` (the genuine
Mathlib v4.12.0 Clay statement), via the **P5-Bridge-14 arithmetic
certificate**: conductor 143 × genus 13 = 1859.

`_root_.RiemannHypothesis` in Mathlib v4.12.0 is NOT a stub — it states
that every non-trivial zero of the Riemann zeta function has real part 1/2.

**RH status: OPEN.** This is a conditional reduction, not a proof of RH.

## The 4-step bridge

| Step | Files | Result | Status |
|------|-------|--------|--------|
| 1 | C01–C07 | ω²(X₀(143)) = 48/13 · Arakelov setup | BRICKS |
| 2 | C08 | `ArakelovPositivity (X₀ 143)` (slope > 0) | BRICK |
| 3 | C09 | `P5_conductor_times_genus`: 143 × 13 = 1859 (norm_num); `P5_HeckeTransfer_14_OPEN` named | BRICK + OPEN surface |
| 4 | C10 | `M_zeros_of_zeta_controlled_by_X0_143` conditional combinator | OPEN (one gap) |

**Single remaining gap:** `P5_HeckeTransfer_14_OPEN` — the
Bost–Connes / Langlands Hecke transfer from Arakelov positivity to
L-function zero control in the 1859-dimensional space.

## Key proved bricks (0 sorry, classical trio)

| Theorem | File | Meaning |
|---------|------|---------|
| `arakelovSelfIntersection_X0_143_pos` | C01 | ω²(X₀(143)) = 48/13 > 0 |
| `bost_connes_threshold` | C06 | 2√13 < 320 (Bost–Connes threshold) |
| `arakelov_positivity_X0_143` | C08 | ArakelovPositivity (X₀ 143) proved |
| `P5_conductor_times_genus` | C09 | 143 × 13 = 1859 (norm_num) |

## Open surface (named `def Prop` — not sorry, not an axiom)

| Name | Gap |
|------|-----|
| `P5_HeckeTransfer_14_OPEN` | Bost–Connes / Langlands Hecke transfer |

## Structure

```
Towers/RH/Chain/C01_Arakelov.lean      Arakelov slope 48/13 (BRICK)
Towers/RH/Chain/C02_Modularity.lean    X₀(143) modular (BRICK)
Towers/RH/Chain/C03_Positivity.lean    Slope inequality (BRICK)
Towers/RH/Chain/C04_HeightBound.lean   Faltings height (BRICK)
Towers/RH/Chain/C05_Discriminant.lean  Discriminant arithmetic (BRICK)
Towers/RH/Chain/C06_ZetaControl.lean   Bost–Connes threshold (BRICK)
Towers/RH/Chain/C07_RH.lean            Chain scaffold (BRICK)
Towers/RH/Chain/C08_M4WeilBridge.lean  ArakelovPositivity (BRICK)
Towers/RH/Chain/C09_P5Bridge.lean      143×13=1859 + OPEN surface
Towers/RH/Chain/C10_MainTheorem.lean   Conditional combinator (OPEN)
lakefile.lean                          Mathlib v4.12.0, roots:=[Towers]
lean-toolchain                         leanprover/lean4:v4.12.0
FOR_BRIDGE.txt                         SHA-256 manifest
```

## Reproduce

```bash
lake update
lake exe cache get
lake build
# Verify zero sorry:
grep -rn sorry Towers/RH/Chain/
# Axiom audit:
echo 'import Towers.RH.Chain.C10_MainTheorem
#print axioms TheoremaAureum.M_zeros_of_zeta_controlled_by_X0_143' | lake env lean /dev/stdin
```

## Honesty statement

This repository does **not** claim to prove RH.
`_root_.RiemannHypothesis` is OPEN. The one open surface
(`P5_HeckeTransfer_14_OPEN`) is a named `def Prop` hypothesis — not a
`sorry`, not a research axiom. The bridge is a correct non-vacuous
conditional reduction with exactly one remaining gap.

See also: [rh-core-c01-c07](https://github.com/DavidFox998/rh-core-c01-c07)
for the full certification chain (C01–C21).
