import Lake
open Lake DSL

package «rh-p5-bridge-14» where
  version := v!"2.0.0"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.12.0"

require «bost-connes» from git
  "https://github.com/DavidFox998/bost-connes" @ "v1.0-M1-M3-CLOSED"

require «birch-swinnerton-dyer-143a1» from git
  "https://github.com/DavidFox998/birch-swinnerton-dyer-143a1" @ "v1.0-CLAY-CLOSED"

lean_lib Towers where
  roots := #[`Towers]
