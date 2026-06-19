# RH P5-Bridge-14 — Morning Star Project (Theorema Aureum 143)

BDP Phase Reversal bridge supporting the RH tower.
Mathlib v4.12.0.

## What is here

`Towers/BDP/BDP_PhaseReversal.lean` — the P5 bridge file.

This proves equidistribution properties of alpha_0 = 299 + pi/10
relative to the S4 prime set {2, 3, 19, 191} via 15-digit and
30-digit Machin-series bounds.

## Proved theorems

| Theorem | Description | Axiom footprint |
|---------|-------------|-----------------|
| `lemma1_two_halves_error_bound` | fracDist for S4 primes vs alpha_0 | classical trio |
| `Cert_lemma2` | 15-digit Machin bound for P5 bridge | classical trio |
| `Cert_llm_trunc` | LLM truncation certificate | classical trio |
| `Cert_phase_reversal` | chi(1/p5)=13 < chi(fracDist p5)=14 | classical trio |
| `Cert_m_boundary` | m boundary = 44 | classical trio |
| `anomaly_291` | |191*kappa^16 - p5 - k*pi| bound | **Lean.reduceTrust** |

## Axiom note

`anomaly_291` uses `native_decide` and therefore depends on
`Lean.reduceTrust` in addition to the classical trio. It is NOT
a classical-trio proof. All other theorems in this file ARE
classical trio: {propext, Classical.choice, Quot.sound}.

## Connection to RH

S4 primes {2,3,19,191} appear in both this file and C14_BC6SpectralGap.lean
(C_S14_143 = 8.62925). BDP equidistribution feeds spectral gap estimates
but does NOT close BC6SelbergTrace_OPEN (which requires the Selberg
trace formula, absent from Mathlib v4.12.0).

## Honesty statement

This repository does **not** claim to prove RH.
The P5 bridge is supporting numerical evidence, not a proof.
