/-
  Root aggregator for the `Towers` library (created roadmap phase0-1, 2026-10-09).

  CANONICAL SUBMISSION (Justin Sun Prize): `Towers.RH.Chain` C01–C22.
  This is the certificate chain reviewed for the prize.  Every name has
  exactly one meaning in this environment.

  `Towers/RH/Formalized/` is an alternative formalization attempt with an
  incompatible `ArithmeticSurface` (`genus : ℕ` vs Chain's `genus : ℝ`) and
  an alternative Arakelov value (`2*g-2` vs the Chain scaffold `4*(g-1)/g`).
  It builds standalone via the `TowersExperimental` library target
  (`TowersExperimental.lean`) and is NOT part of the certificate chain.
  The genuine `arakelovPairing_X0_143` lives in the sibling repo
  `arakelov-positivity-rh-core`.

  Mechanical only: imports the top (DAG-root) modules of the honest tree — the
  modules nothing else in the tree imports.  Excluded from the build:

  * `Quarantine/` — dead files by construction (never imported by the build).
    (2026-10-09: `Towers/RH/Bridge143.lean` moved there — its
    `import Towers.RH.OpenSurfaces` referenced a nonexistent module.)
  * `Towers/RH/Formalized/C01_Arakelov_v2`, `Towers/RH/Formalized/C_Chain` —
    see NOTE below; in `TowersExperimental`.
-/
import Towers.Common.Conductor
import Towers.RH.Axioms
import Towers.RH.Chain.C11_CertificateClosure
import Towers.RH.Chain.C12_M9Integration
import Towers.RH.Chain.C16_MasterCertification
import Towers.RH.Chain.C17_ArakelovPairingCert
import Towers.RH.Chain.C18_KimSarnakCert
import Towers.RH.Chain.C19_BC6SelbergTraceCert
import Towers.RH.Chain.C20_LanglandsDescentCert
import Towers.RH.Chain.C21_GRHtoRHCert
import Towers.RH.Chain.C22_RouteACert
-- NOTE (2026-10-10): `Towers.RH.Formalized.C01_Arakelov_v2` is NOT imported
-- here.  It defines `TheoremaAureum.arakelovSelfIntersection` (plus
-- `ArithmeticSurface`, `X₀`, `X₀_143_genus`, `arakelovSelfIntersection_X0_143`,
-- `ArakelovPositivity`) on a different `ArithmeticSurface` record
-- (`genus : ℕ`) with a different value (`2*g-2`) than the Chain file's
-- (`genus : ℝ`, `4*(g-1)/g`).  Importing both puts duplicate definitions in
-- one environment and the build fails.  The Chain tree (C01–C22) is the one
-- the rest of the build resolves to; the v2 file builds in isolation and
-- nothing imports it.  Unifying on either value would change what existing
-- theorems prove (Chain's `slope_inequality`, `height_lower_bound`, and
-- `abbes_ullmo_1996_1_2` are wired to `4(g-1)/g`/`48/13`), so the v2 file
-- stays out of this aggregator, like Quarantine.
--
-- NOTE (2026-10-10): `Towers.RH.Formalized.C_Chain` is also NOT imported.
-- It defines `TheoremaAureum.main_theorem`, colliding with
-- `Towers.RH.H2_WeilTransfer.main_theorem`.  The Formalized tree
-- (C01_Arakelov_v2, C_Chain, Certificates) is an alternative formalization
-- with an incompatible `ArithmeticSurface`; it builds standalone via the
-- `TowersExperimental` library target (see `TowersExperimental.lean`).
--
-- NOTE (2026-10-10): `Towers/RH/Formalized/Data_Registry` and
-- `Module_24_ZLock` are also excluded from this aggregator.  They import
-- only Mathlib and collide with nothing, but they are not part of the
-- canonical C01–C22 certificate chain.  They build standalone as modules.
import Towers.RH.H2_WeilTransfer
import Towers.RH.IwaniecKowalski.NonVanishing
import Towers.RH.JorgensonKramer.X0_143.C22b_ClassNumberLowerBound
import Towers.RH.KimSarnak.MainTheorem
-- NOTE (2026-10-10): `Towers.RH.M9_WeilTransfer` is NOT imported here.
-- It defines `TheoremaAureum.VALOR_M9_min := 1084`, duplicating
-- `Towers.RH.Chain.C12_M9Integration.VALOR_M9_min`.  The Chain definition
-- is canonical; the standalone module builds in isolation.
import Towers.RH.ZProtocolBridge
-- NOTE (2026-10-10): `Towers.X0_143.K1IdealGrowth` is NOT imported here.
-- Its dependency `Towers/X0_143/Basic.lean` declares
-- `namespace Towers.RH.JorgensonKramer.X0_143` (wrong directory for that
-- namespace), colliding with `Towers/RH/JorgensonKramer/X0_143/Basic.lean`.
-- Standalone module; builds in isolation.
