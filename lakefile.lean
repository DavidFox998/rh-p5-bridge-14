import Lake
open Lake DSL

package «rh-p5-bridge-14» where
  version := v!"2.0.0"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.12.0"

-- NOTE (roadmap phase0-1, 2026-10-09): the former `require` lines for
-- `bost_connes` and `birch_swinnerton_dyer_143a1` were dropped — nothing in
-- Towers/ imports from either package (verified by grep).

lean_lib Towers where
  roots := #[`Towers]

-- NOTE (2026-10-10): `TowersExperimental` builds the `Towers/RH/Formalized/`
-- tree standalone.  It is an alternative formalization with an incompatible
-- `ArithmeticSurface` (`genus : ℕ`) and MUST NOT be imported by `Towers`.
-- See `TowersExperimental.lean` for the documented split.
lean_lib TowersExperimental where
  roots := #[`TowersExperimental]
