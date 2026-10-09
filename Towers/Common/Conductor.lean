-- Towers/Common/Conductor.lean
-- NOTE (2026-10-09, mechanical build fix): this file previously carried no imports
-- ("Clay requires no import") but uses `Nat.totient` (Mathlib-only) and tactic proofs,
-- so it could not elaborate. Minimal import added; tactic proofs switched to core `decide`.
-- SHA-lock vs rh-route-a/b/c copies is now stale by necessity — those copies are
-- byte-identical and equally unbuildable; sync them if the lock is to be restored.
import Mathlib.Data.Nat.Totient
def N_143 : Nat := 143
def g_X0_143 : Nat := 13
def h_neg143 : Nat := 10
def p5_BDP : Nat := 3993746143633
def phi_143 : Nat := 120
def S14_card : Nat := 14
theorem N_times_g : N_143 * g_X0_143 = 1859 := by decide
theorem phi_143_eq : Nat.totient 143 = 120 := by decide
theorem N_eq_11_times_13 : N_143 = 11 * 13 := by decide
theorem phi_143_eq_g_times_S14_plus : phi_143 = 8 * g_X0_143 + 16 := by decide
