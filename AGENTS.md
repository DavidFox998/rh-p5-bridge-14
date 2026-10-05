# AGENTS.md — rh-p5-bridge-14

## Role: RH-CLUSTER / P5-BRIDGE

**Cluster:** Riemann Hypothesis

**Core claim:** Bridge between P5 prime gaps and RH — 14-step chain connecting zeta zeros to gap bounds

## Relationship to the MACHINE / ANSWER pair

All Millennium Problem repos in this chain share the same
underlying geometric obstruction witnessed by T=1419:

```
MACHINE  → p-vs-np             (the framework)
ANSWER   → eutheos-property    (T=1419 witness, H4 Fibonacci tower)
THIS     → rh-p5-bridge-14
```

The H4 Coxeter 600-cell throat that explains why
T=1419 is hard for circuits is the same non-algebrizing,
non-crystallographic barrier that appears in this cluster,
expressed in the language of Riemann Hypothesis.

## Entry point for AI agents

Look for `Bridge` or `P5` Lean files.

## Local modules (condensed)

The four RH routes, the core, and this bridge are one referee checkout. Private remotes are not fetched. There is no Lean module `RH.Bridge.P5`; `Towers` is the ensemble (`lakefile.lean`).

| Former remote | Local path |
|---------------|------------|
| DavidFox998/riemann-arakelov-positivity (private) | [Towers/RH/Arakelov/](Towers/RH/Arakelov/) |
| DavidFox998/rh-growth-contradiction (private) | [Towers/RH/GrowthContradiction.lean](Towers/RH/GrowthContradiction.lean) |
| DavidFox998/arakelov-rh-descent (private) | [Towers/RH/KimSarnak/](Towers/RH/KimSarnak/) |
| DavidFox998/brothers-desert-proof (private) | [Towers/RH/Formalized/Exceptional_Prime_Desert_Map.lean](Towers/RH/Formalized/Exceptional_Prime_Desert_Map.lean) |
| DavidFox998/arakelov-positivity-rh-core | [Towers/RH/Arakelov/AbbesUllmo.lean](Towers/RH/Arakelov/AbbesUllmo.lean) — live `da3b943c662f` vs lock `6ec00281c55d` |
| this repo | [Towers/RH/Chain/C09_P5Bridge.lean](Towers/RH/Chain/C09_P5Bridge.lean), [Towers/RH/Chain/P5_BSD_RH_Link.lean](Towers/RH/Chain/P5_BSD_RH_Link.lean) |

## Full chain

```
Historical digest recorded in this file (2026-08-15):
f39ed9a9bd7cc02c6cf415f40b3faaa3c627a5a0d53621766466f31a2211e7ce
CHAIN.md historical 19-repo digest (P26-08-23):
702d12e6ebf9b203d73bc8a57617ea960e3cc2a31901fc482888fec28ff08825
Daily check: scripts/verify-ensemble.sh — local Towers/, private names skipped.
```

## Key numbers shared across all repos

```
T            = 1419 = 0x58B    (the circuit witness)
α₀           = 299 + π/10     (the generating irrational)
φ            = (1+√5)/2        (golden ratio, H4 throat slope)
chain SHA256 = f39ed9a9bd7cc02c6cf415f40b3faaa3c627a5a0d53621766466f31a2211e7ce
```
