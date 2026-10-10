/-
  Root aggregator for the `TowersExperimental` library (created 2026-10-10).

  `Towers/RH/Formalized/C01_Arakelov_v2.lean` is an alternative formalization
  attempt with an incompatible `ArithmeticSurface` record (`genus : ℕ` vs the
  Chain tree's `genus : ℝ`) and an alternative Arakelov value (`2*g-2` vs the
  Chain scaffold `4*(g-1)/g`).  It is NOT part of the canonical certificate
  chain reviewed for the Justin Sun Prize.

  Canonical submission: `Towers` library (`Towers.lean`), i.e.
  `Towers.RH.Chain` C01–C22.  The genuine `arakelovPairing_X0_143` lives in
  the sibling repo `arakelov-positivity-rh-core`.

  This target exists so the alternative formalization remains buildable and
  reviewable without polluting the canonical namespace.  It is never imported
  by `Towers.lean`.  (`Towers/RH/Formalized/C_Chain` is excluded: it depends
  on the Chain C01 and defines a colliding `main_theorem`; it builds
  standalone as a module.)
-/
import Towers.RH.Formalized.C01_Arakelov_v2
