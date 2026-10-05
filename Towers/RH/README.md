# Towers/RH

Riemann Hypothesis bridge — reduces infinite prime set `S_α0` to finite `S_14`.

Constants: `q5=226`, `q6=165849`, `cf_bound=82829`, `p5=67645`, `|S_14|=14`.

Referees: routes A–D, the Arakelov core, and the P5 keystone are in this tree. Former remotes `riemann-arakelov-positivity`, `arakelov-rh-descent`, `rh-growth-contradiction`, and `brothers-desert-proof` are private and are not fetched. Public core live `da3b943c662f` is recorded against the CHAIN.md lock `6ec00281c55d`. There is no module `RH.Bridge.P5`.

Subfolders:

- [`Arakelov/`](Arakelov/) — Route A positivity and the local core, `ω²=48/13` in [`AbbesUllmo.lean`](Arakelov/AbbesUllmo.lean) (former `arakelov-positivity-rh-core` / `riemann-arakelov-positivity`)
- [`Chain/`](Chain/) — keystone — [`P5_BSD_RH_Link.lean`](Chain/P5_BSD_RH_Link.lean), [`C09_P5Bridge.lean`](Chain/C09_P5Bridge.lean)
- `ConverseTheorem/` — converse theorem input for Langlands transfer `L_fn`
- [`Formalized/`](Formalized/) — formal sieve criteria `Sieve_Criterion.lean` defining `S14`; Route D in [`Exceptional_Prime_Desert_Map.lean`](Formalized/Exceptional_Prime_Desert_Map.lean)
- `IwaniecKowalski/` — Rankin-Selberg `L`-function bounds
- `JorgensonKramer/X0_143/` — analytic torsion, `K1IdealGrowth` for height
- [`KimSarnak/`](KimSarnak/) — Kim-Sarnak `λ₁≥975/4096` → Selberg trace = Bost-Connes (former `arakelov-rh-descent`)

Root files `Bridge143.lean`, `ZeroDensity.lean`, [`GrowthContradiction.lean`](GrowthContradiction.lean), `ZProtocolBridge.lean`, `H2_WeilTransfer.lean`, `M9_WeilTransfer.lean` sit with the four routes:

- **A** [`Arakelov/AbbesUllmo.lean`](Arakelov/AbbesUllmo.lean) — former `riemann-arakelov-positivity` (private)
- **B** [`KimSarnak/`](KimSarnak/) — former `arakelov-rh-descent` (private)
- **C** [`GrowthContradiction.lean`](GrowthContradiction.lean) — former `rh-growth-contradiction` (private)
- **D** [`Formalized/Exceptional_Prime_Desert_Map.lean`](Formalized/Exceptional_Prime_Desert_Map.lean) — former `brothers-desert-proof` (private)

Lindelöf sieve in this tree: [`Formalized/Modular_Sieve_Lindelof.lean`](Formalized/Modular_Sieve_Lindelof.lean).
