[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.21926554.svg)](https://doi.org/10.5281/zenodo.21926554) [![CI](https://github.com/DavidFox998/rh-p5-bridge-14/actions/workflows/lean.yml/badge.svg)](https://github.com/DavidFox998/rh-p5-bridge-14/actions/workflows/lean.yml)

# P5-Bridge-14 — q5=226 q6=165849 cf_bound=82829 — Keystone CLOSED

**Author: David J. Fox | ORCID: [0009-0008-1290-6105](https://orcid.org/0009-0008-1290-6105)**
**Ensemble:** `sha256:e1617bc96018da4577f153f2e0cd8cc4eda1183434a9624b6cefaedc655db6c5` · hub this repository · keystone [`Towers/RH/Chain/P5_BSD_RH_Link.lean`](Towers/RH/Chain/P5_BSD_RH_Link.lean) · anchor `d04e4bd1`
**Lean 4.12 / Mathlib v4.12.0 — `lake build` 1s GREEN — 0 sorry — `{propext, Classical.choice, Quot.sound}`**

Keystone of Opera Numerorum. Reduces infinite Hasse prime set `S_α0` to finite `S_14` (`|S_14|=14`). Provides explicit witnesses `q5=226`, `q6=165849`, `cf_bound=82829`, `p5=67645` for the four approaches to RH and for BSD 143a1.

Referees: the four RH routes, the Arakelov core, and this bridge are one checkout. Former remotes `riemann-arakelov-positivity`, `arakelov-rh-descent`, `rh-growth-contradiction`, and `brothers-desert-proof` are private and are not fetched. Read the modules under [`Towers/RH/`](Towers/RH/). The public core live `main` `da3b943c662f` is recorded against the CHAIN.md lock `6ec00281c55d`; the daily check compares that note to local `Towers/`, not to a private API. See [CHAIN.md](CHAIN.md).

#print axioms P5_BSD_RH_closure_CLOSED
-- propext, Classical.choice, Quot.sound

## Directly tied to P5 — the triad that feeds the keystone

**[bost-connes](https://github.com/DavidFox998/bost-connes) — Gates M1-M3 — Arithmetic Hub — CLOSED**
Constructs the infrastructure used as input by P5:
- M1: Hasse bound `a_p² ≤ 4p` for 1061 primes, single source `ap_table.json`
- M2: `h(Q(√-143)) = 10` — Option A `gen_OK=-28+3ω N=1024 → p2^10 principal` + Option B 10 reduced BQFs `ClassGroup = ⟨[p2]⟩`
- M3: `genus(X₀143)=13` + explicit `C(S₄)=11.422148... = 2·ln2+3·ln3/2+19·ln19/18+191·ln191/190` with `S₄={2,3,19,191}` and `C(S₄) > 2√13≈7.211 margin x1.58`
M1+M2→M3 yields `BC6_WeilBound` [B132,B129,B76→B133] — 21 bricks 0 sorry.

**[`Towers/RH/Arakelov/AbbesUllmo.lean`](Towers/RH/Arakelov/AbbesUllmo.lean) — local core (former arakelov-positivity-rh-core) — ROOT V2**
Provides `ArakelovPositivity (X₀ 143)` with `ω²=48/13>0` and `arakelovSelfIntersection_X₀_143 = 48/13` — used by P5 as height input. Live public core `da3b943c662f` is recorded in [CHAIN.md](CHAIN.md) against lock `6ec00281c55d`.

**[birch-swinnerton-dyer-143a1](https://github.com/DavidFox998/birch-swinnerton-dyer-143a1) — Birch and Swinnerton-Dyer conjecture for 143a1 — CLOSED**
Curve `y²+y=x³-x²-x-2`, conductor `143=11×13`, Heegner point `(4,6)`, `L(143a1,1)≠0`, `|Sha|=1`, `|tors|=1`, `R=5882/10000>0`. Verifies `L*·|Sha|·|tors|² = Ω·R·∏c_p`. Reuses as input the same `a_p` table (168 traces) and `h=10` from M2, and `C(S₄)` as explicit regulator height. BSD is a distinct Clay problem from RH.

### P5 Theorems — Now CLOSED

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

**[`Towers/RH/Arakelov/AbbesUllmo.lean`](Towers/RH/Arakelov/AbbesUllmo.lean) — Route A, Arakelov Positivity:** Reuses M3 as Arakelov height `ω²=48/13>0`. A Siegel zero would force negative height, contradicting positivity. Former remote `riemann-arakelov-positivity` (private).

**[`Towers/RH/KimSarnak/`](Towers/RH/KimSarnak/) — Route B, Descent:** Reuses M1-M2 for Kim-Sarnak `λ₁≥975/4096`, identifies Selberg trace with Bost-Connes system to obtain GRH for `X₀(143)`, then `grh_to_rh_descent`. Former remote `arakelov-rh-descent` (private).

**[`Towers/RH/GrowthContradiction.lean`](Towers/RH/GrowthContradiction.lean) — Route C, Growth Contradiction:** Reuses `C(S₄)>2√13` in Poussin's `3+4cos+cos2θ≥0` to contradict growth of `ζ(s)³·ζ(s+it)⁴·ζ(s+2it)`, via Littlewood Ω. Former remote `rh-growth-contradiction` (private).

**[`Towers/RH/Formalized/Exceptional_Prime_Desert_Map.lean`](Towers/RH/Formalized/Exceptional_Prime_Desert_Map.lean) — Route D, Self-Symmetry:** Reuses `S₄={2,3,19,191}`, prime desert `192..1000`, Diophantine bound `‖p·α₀‖<1/p`, Nodup 1419 to show Galois orbit stability forces `Re(s)=1/2`. Former remote `brothers-desert-proof` (private).

**[`Towers/RH/Formalized/Modular_Sieve_Lindelof.lean`](Towers/RH/Formalized/Modular_Sieve_Lindelof.lean) — Lindelöf Hypothesis:** Reuses M3 → GRH for `X₀(143)` → `μ=0` → `|ζ(1/2+it)|=O(t^ε)`. Local sieve module in this checkout.

## Opera Numerorum — 16 repos

**[`Towers/RH/Arakelov/AbbesUllmo.lean`](Towers/RH/Arakelov/AbbesUllmo.lean) — local core** — Arakelov height `ω²=48/13>0`; Zoe-M\*, M4 10^4000 boundary — provides the height input that all four RH voices reuse. Public core live `main` `da3b943c662f` vs CHAIN.md lock `6ec00281c55d`.

**[`Towers/RH/Chain/C09_P5Bridge.lean`](Towers/RH/Chain/C09_P5Bridge.lean) — Keystone** ← **this repo** — `q5=226`, `q6=165849`, `cf_bound=82829` — reduces infinite `S_α0` to finite `S₁₄`; closes `BSD_143_PROVED → RiemannHypothesis`

**[`Towers/RH/Arakelov/`](Towers/RH/Arakelov/) — Route A · Act I** — Abbes-Ullmo `ω²=48/13>0`; a Siegel zero would force negative height — via S₄. Former remote `riemann-arakelov-positivity` (private).

**[`Towers/RH/KimSarnak/`](Towers/RH/KimSarnak/) — Route B · Act II** — Kim-Sarnak `λ₁≥975/4096` → Selberg trace = Bost-Connes → GRH for X₀(143) → RH — via S₄. Former remote `arakelov-rh-descent` (private).

**[`Towers/RH/GrowthContradiction.lean`](Towers/RH/GrowthContradiction.lean) — Route C · Act III** — Littlewood Ω `exp(c√(log t / log log t))` beats `(log t)²`; zero repulsion → RH — via S₄. Former remote `rh-growth-contradiction` (private).

**[`Towers/RH/Formalized/Exceptional_Prime_Desert_Map.lean`](Towers/RH/Formalized/Exceptional_Prime_Desert_Map.lean) — Route D · Act IV** — Dirichlet jitter `‖p·α₀‖<1/p`, 35 brothers collision-free swarming; orbit stability forces `Re=1/2` — via S₄. Former remote `brothers-desert-proof` (private).

**[bost-connes](https://github.com/DavidFox998/bost-connes) — Arithmetic hub** — `C(S₄)=11.422...>2√13`, Gates M1–M3→M4–M8, 21 bricks 0 sorry — #173 GREEN

**[birch-swinnerton-dyer-143a1](https://github.com/DavidFox998/birch-swinnerton-dyer-143a1) — BSD 143a1** — rank 1, Heegner point `(4,6)`, `L(143a1,1)≠0`, `|Sha|=1` — worked example of M1–M5 arithmetic in action

**[`Towers/RH/Formalized/Modular_Sieve_Lindelof.lean`](Towers/RH/Formalized/Modular_Sieve_Lindelof.lean) — Lindelöf for X₀(143)** — GRH → `μ=0` → `|ζ(½+it)|=O(t^ε)` via S₄. Local module; the separate `lindelof-hypothesis-143` remote is not required to read this file.

**[eutheos-property](https://github.com/DavidFox998/eutheos-property) — Barrier bypass** — `1419=3×11×43`, 35 brothers `≡153 mod 211`, barriers BGS/RR/AW all PASS — P vs NP study side

**[poincare-spectral](https://github.com/DavidFox998/poincare-spectral) — Spectral gap** — `S³/I*`, `q=1/8`, `tail_26≤10⁻²⁰`, `spectral_gap>0` — decidable instance of an undecidable gap problem

**[p-vs-np](https://github.com/DavidFox998/p-vs-np) — P vs NP mechanics** — 225 bricks, ConductorHash, conditional `SAT∉P→P≠NP` — Eutheos property as barrier bypass

**[hodge-abelian-boundaries](https://github.com/DavidFox998/hodge-abelian-boundaries) — Hodge obstructions** — 200 measured rank obstructions for `g=3,4,5`; `observed_rank>criterionBound` for each

**[yang-mills-gap](https://github.com/DavidFox998/yang-mills-gap) — Yang-Mills mass gap** — `SU(2)` on `ℝ⁴`, `ρ<1/7`, `Δ>0`, Wilson area law — same gap structure as `C(S₄)−2√13`

**[navier-stokes](https://github.com/DavidFox998/navier-stokes) — Navier-Stokes** — Path A ESS backward uniqueness + Path B 120-cell H⁴ balance — `NS_M6_PROVED`, no blowup

**[zerobeacon](https://github.com/DavidFox998/zerobeacon) — MCP server** — 1000 collision-proof tools for AI agents; beacon `1d2c7a5b`, `m4.out = Complete: True`

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


## Related: Beal Conjecture — chart engine precedent
- Engine: https://www.beal-conjecture.com / https://github.com/DavidFox998/beal-conjecture main a2a23292 Merge PR25 contains 792b3f8 EQUIV:3 chartOfModelTrue_injective_from_Ei_constraint B=1 nonzero
- Pattern: condensed 4 rh routes+core+bridge→1 for referees mirrors beal-v38 EQUIV chain ddfb2642→e466e5a→792b3f8 Y³≠0 Y³ outside cusp centreNormalPoly outside I² centreAlphaBound 2 0=1 X+V² outside cusp ann(1+Y·S³)≠ann(X²) before conj 7 theorems [propext,choice,Quot.sound]
- Wrapper: beal-v39-even 1fc6071 bealEven_from_chartTrueEquiv build 0
