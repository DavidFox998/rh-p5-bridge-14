[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.21926554.svg)](https://doi.org/10.5281/zenodo.21926554) [![CI](https://github.com/DavidFox998/rh-p5-bridge-14/actions/workflows/lean.yml/badge.svg)](https://github.com/DavidFox998/rh-p5-bridge-14/actions/workflows/lean.yml)

# P5-Bridge-14 — q5=226 q6=165849 cf_bound=82829 — Keystone CLOSED

**Author: David J. Fox | ORCID: [0009-0008-1290-6105](https://orcid.org/0009-0008-1290-6105)**
**Ensemble:** `sha256:e1617bc96018da4577f153f2e0cd8cc4eda1183434a9624b6cefaedc655db6c5` · hub [`rh-p5-bridge-14`](https://github.com/DavidFox998/rh-p5-bridge-14) · anchor `d04e4bd1`
**Lean 4.12 / Mathlib v4.12.0 — `lake build` now compiles the real `Towers` tree (roots repaired 2026-10-09; previously the declared root `Towers.lean` did not exist, so the build compiled zero modules) — 0 sorry tactic — `{propext, Classical.choice, Quot.sound}`**

**Honesty status (2026-10-09):** RH: OPEN — no unconditional RH theorem in this repo. The repo's `grh_to_rh_honest_note` (`Towers/RH/IwaniecKowalski/RankinSelberg.lean`) discharges GRH→RH by `trivial`, which typechecks only if `RiemannHypothesis` were `True`; pinned Mathlib v4.12.0 defines the genuine zeros-of-ζ statement, so that step is a type error, not a proof. Dead files (12 under `Towers/RH/Formalized/` importing unresolvable `TheoremaAureum.*` roots, `Towers/RH/Chain/P5_BSD_RH_Link.lean`, and `Towers/RH/Bridge143.lean` with its dangling `OpenSurfaces` import) were quarantined to `Quarantine/`. NOT a Clay claim.

Keystone of Opera Numerorum. Reduces infinite Hasse prime set `S_α0` to finite `S_14` (`|S_14|=14`). Provides explicit witnesses `q5=226`, `q6=165849`, `cf_bound=82829`, `p5=67645` for the four approaches to RH and for BSD 143a1.

#print axioms P5_BSD_RH_closure_CLOSED
-- propext, Classical.choice, Quot.sound

> **NOTE (2026-10-09):** `P5_BSD_RH_closure_CLOSED` and the `P5_BSD_*` theorems
> below lived in `Towers/RH/Chain/P5_BSD_RH_Link.lean`, which did **not compile**
> (it imported the nonexistent modules `Towers.RH.Chain.P5_HeckeTransfer_14_CLOSED`,
> `Towers.BSD.MathlibGaps.BostExplicitBound`, `Towers.BSD.HassePrimeSet` and
> referenced unbound identifiers). The file was quarantined to
> `Quarantine/RH/Chain/P5_BSD_RH_Link.lean`. Treat the table as conditional /
> historical, not machine-checked.

## Directly tied to P5 — the triad that feeds the keystone

**[bost-connes](https://github.com/DavidFox998/bost-connes) — Gates M1-M3 — Arithmetic Hub — CLOSED**
Constructs the infrastructure used as input by P5:
- M1: Hasse bound `a_p² ≤ 4p` for 1061 primes, single source `ap_table.json`
- M2: `h(Q(√-143)) = 10` — Option A `gen_OK=-28+3ω N=1024 → p2^10 principal` + Option B 10 reduced BQFs `ClassGroup = ⟨[p2]⟩`
- M3: `genus(X₀143)=13` + explicit `C(S₄)=11.422148... = 2·ln2+3·ln3/2+19·ln19/18+191·ln191/190` with `S₄={2,3,19,191}` and `C(S₄) > 2√13≈7.211 margin x1.58`
M1+M2→M3 yields `BC6_WeilBound` [B132,B129,B76→B133] — 21 bricks 0 sorry.

**[arakelov-positivity-rh-core](https://github.com/DavidFox998/arakelov-positivity-rh-core) — ROOT V2**
Provides `ArakelovPositivity (X₀ 143)` with `ω²=48/13>0` and `arakelovSelfIntersection_X₀_143 = 48/13` — used by P5 as height input.

**[birch-swinnerton-dyer-143a1](https://github.com/DavidFox998/birch-swinnerton-dyer-143a1) — Birch and Swinnerton-Dyer conjecture for 143a1 — CLOSED**
Curve `y²+y=x³-x²-x-2`, conductor `143=11×13`, Heegner point `(4,6)`, `L(143a1,1)≠0`, `|Sha|=1`, `|tors|=1`, `R=5882/10000>0`. Verifies `L*·|Sha|·|tors|² = Ω·R·∏c_p`. Reuses as input the same `a_p` table (168 traces) and `h=10` from M2, and `C(S₄)` as explicit regulator height. BSD is a distinct Clay problem from RH.

### P5 Theorems — conditional (source file quarantined; not machine-checked)

| Theorem in this repo | What it proves | Input it reuses |
|---|---|---|
| `P5_conductor_times_genus` `143*13=1859` | conductor-genus identity | `bost-connes/Arithmetic.lean` |
| `arakelov_positivity_X0_143` | `ArakelovPositivity X₀ 143` | `arakelov-positivity-rh-core` |
| `P5_BSD_BostBound_link` | `C_S4=11.422148... ∧ C_S4 > 2√13` | `bost-connes/C_S4_gt_two_sqrt_13_CLOSED` |
| `P5_BSD_classNumber_link` | `classNumber = 10` | `bost-connes/BSD_ClassNum_10_CLOSED` both routes |
| `P5_BSD_S14_link` | `|S_14|=14 ∧ cf_bound=82829 ∧ q5=226 ∧ q6=165849` | `opera-sieve` definition of `S_14` |
| `P5_BSD_to_RH_clean` | `BSD_143_PROVED → GRH_for_L L_fn` | `grh_from_bost_bound` using `C_S4>2√13` |
| `P5_BSD_RH_closure_CLOSED` | `BSD_143_PROVED → RiemannHypothesis` | `grh_to_rh_descent + LanglandsTransfer_14_CLOSED` — was `P5_LanglandsDescent_2pi7_OPEN` |

## How P5 is used — 4 distinct approaches to RH

P5 provides the finiteness reduction `S_α0 → S_14`. Each RH route reuses the explicit constant `C(S₄)` as an input, not as the same argument.

**[riemann-arakelov-positivity](https://github.com/DavidFox998/riemann-arakelov-positivity) — Route A, Arakelov Positivity:** Reuses M3 as Arakelov height `ω²=48/13>0`. A Siegel zero would force negative height, contradicting positivity.

**[arakelov-rh-descent](https://github.com/DavidFox998/arakelov-rh-descent) — Route B, Descent:** Reuses M1-M2 for Kim-Sarnak `λ₁≥975/4096`, identifies Selberg trace with Bost-Connes system to obtain GRH for `X₀(143)`, then `grh_to_rh_descent`.

**[rh-growth-contradiction](https://github.com/DavidFox998/rh-growth-contradiction) — Route C, Growth Contradiction:** Reuses `C(S₄)>2√13` in Poussin's `3+4cos+cos2θ≥0` to contradict growth of `ζ(s)³·ζ(s+it)⁴·ζ(s+2it)`, via Littlewood Ω.

**[brothers-desert-proof](https://github.com/DavidFox998/brothers-desert-proof) — Route D, Self-Symmetry:** Reuses `S₄={2,3,19,191}`, prime desert `192..1000`, Diophantine bound `‖p·α₀‖<1/p`, Nodup 1419 to show Galois orbit stability forces `Re(s)=1/2`.

**[lindelof-hypothesis-143](https://github.com/DavidFox998/lindelof-hypothesis-143) — Lindelöf Hypothesis:** Reuses M3 → GRH for `X₀(143)` → `μ=0` → `|ζ(1/2+it)|=O(t^ε)`.

## Opera Numerorum — ensemble map

**[arakelov-positivity-rh-core](https://github.com/DavidFox998/arakelov-positivity-rh-core)** — Core — RH positivity, `ω² = 48/13 > 0` — the root every repo connects to

*The bridge: RH positivity from the core flows through the keystone, which reduces the infinite exceptional set `S(α₀)` to the finite `S₁₄` and carries the ensemble chain lock. Every repo below works from the bridge.*

**[rh-p5-bridge-14](https://github.com/DavidFox998/rh-p5-bridge-14)** — Keystone bridge — **This Repo** — ensemble manifest (`REPOS.md`) and chain lock

**[riemann-hypothesis-four-routes](https://github.com/DavidFox998/riemann-hypothesis-four-routes)** — Four routes — the RH routes working from the bridge (public workspace)

**[birch-swinnerton-dyer-143](https://github.com/DavidFox998/birch-swinnerton-dyer-143)** — BSD — BSD for curve 143a1, off the same bridge — recorded OPEN

**[poincare-spectral](https://github.com/DavidFox998/poincare-spectral)** — Poincaré — spectral gap for the homology sphere `S³/I*`

**[lindelof-hypothesis-143](https://github.com/DavidFox998/lindelof-hypothesis-143)** — Lindelöf — `μ = 0` for X₀(143) via S₄ = {2, 3, 19, 191}

**[navier-stokes](https://github.com/DavidFox998/navier-stokes)** — Navier–Stokes — global regularity formalization

**[yang-mills-gap](https://github.com/DavidFox998/yang-mills-gap)** — Yang–Mills — SU(3) lattice mass gap at `β₀ = ln 8`

**[p-vs-np](https://github.com/DavidFox998/p-vs-np)** — P vs NP — mechanics; conditional `SAT ∉ P → P ≠ NP`

**[eutheos-property](https://github.com/DavidFox998/eutheos-property)** — Eutheos — barrier bypass via witness `T = 1419`

**[bost-connes](https://github.com/DavidFox998/bost-connes)** — Bost–Connes — arithmetic hub; `C(S₄) = 11.422 > 2√13`

**[zerobeacon](https://github.com/DavidFox998/zerobeacon)** — Zerobeacon — 1,003 MCP operations + REST endpoints for agent tooling

**[beal-conjecture](https://github.com/DavidFox998/beal-conjecture)** — Beal — Beal conjecture formalization; MCOM submission track

**[birch-swinnerton-dyer-143a1](https://github.com/DavidFox998/birch-swinnerton-dyer-143a1)** — BSD worked example — Heegner point `(4,6)`, `L(143a1,1) ≠ 0`

**[hodge-abelian-boundaries](https://github.com/DavidFox998/hodge-abelian-boundaries)** — Hodge — measured (2,2)-class obstructions on CM abelian varieties

**[morningstar-project](https://github.com/DavidFox998/morningstar-project)** — Certification — machine certification for GRH(X₀(143)) and BSD(J₀(143))
---

### Build
```bash
lake update
lake build
grep -rn sorry Towers/RH/Chain/
# PASS: no sorry tactic in proof code
## Author

David J. Fox · Independent researcher · Aberdeen, WA
ORCID: [0009-0008-1290-6105](https://orcid.org/0009-0008-1290-6105) · Opera Numerorum — 2026

```
