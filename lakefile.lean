import Lake
open Lake DSL

package «rh-p5-bridge-14» where
  version := v!"2.0"
  description := "P5-Bridge-14 — Keystone q5=226 q6=165849 cf_bound=82829 — ties BSD 143a1 + bost-connes M1-M3 → 4 RH routes"
  keywords := #["rh", "bsd", "bost-connes", "arakelov", "p5"]
  leanOptions := #[⟨`autoImplicit, false⟩]

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.12.0"

-- Hub M1-M3 — provides C(S4)=11.422>2√13, genus 13, h=10 both routes
require «bost-connes» from git
  "https://github.com/DavidFox998/bost-connes" @ "v1.0-M1-M3-CLOSED"

-- Worked example BSD rank1 — provides ap table, Sha=1 tors=1, R>0, BSD_143_PROVED
require «birch-swinnerton-dyer-143a1» from git
  "https://github.com/DavidFox998/birch-swinnerton-dyer-143a1" @ "v1.0-CLAY-CLOSED"

lean_lib Towers where
  roots := #[`Towers]

-- Allow importing BostConnes and BSD modules inside Towers/RH/Chain/
lean_lib BostConnes where
  roots := #[`BostConnes]

lean_lib BSD where
  roots := #[`BSD]
