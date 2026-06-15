import Lake
open Lake DSL
-- RH Core C01-C07 — Morning Star Project
-- Axiom footprint: {propext, Classical.choice, Quot.sound}
-- sorry: 0, mathlib v4.12.0
require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.12.0"
lean_lib Towers where
  roots := #[`Towers.RH.ZeroDensity, `Towers.RH.GrowthContradiction,
             `Towers.RH.ZProtocolBridge, `Towers.RH.Chain.C07_RH]
