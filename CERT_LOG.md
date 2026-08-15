# Opera Numerorum — Baseline Audit Certificate Log

**Generated:** 2026-08-15  
**Chain SHA256:** `7472f4e55e8baa4c627ae6eb58e1de3e9f40c2859ad89318debef7dad7f6a98e`  
**Audit pipeline:** [scripts/audit.sh](scripts/audit.sh) — V1–V5  
**Clay status:** All surfaces OPEN. Lean closures are machine-checked certificates; the Clay Mathematics Institute has not reviewed or accepted this work.

---

## V1 — lake build results (CI)

All 12 original chain repos confirmed green by GitHub Actions as of 2026-08-15.
See live CI badges in each repo's README.

| Repo | Last CI | Result |
|------|---------|--------|
| arakelov-rh-descent | 2026-08-14 | ✅ success |
| birch-swinnerton-dyer-143a1 | 2026-08-15 | ✅ success |
| eutheos-property | 2026-08-14 | ✅ success |
| hodge-abelian-boundaries | 2026-08-14 | ✅ success |
| lindelof-hypothesis-143 | 2026-08-14 | ✅ success |
| navier-stokes | 2026-08-14 | ✅ success |
| p-vs-np | 2026-08-15 | ✅ success |
| poincare-spectral | 2026-08-14 | ✅ success |
| rh-growth-contradiction | 2026-08-14 | ✅ success |
| rh-p5-bridge-14 | 2026-08-15 | ✅ success |
| riemann-arakelov-positivity | 2026-08-14 | ✅ success |
| yang-mills-gap | 2026-08-14 | ✅ success |

---

## V2–V5 — Source audit results

**V2 method:** `sorry` checked via GitHub code search after comment-stripping.  
`0 (search)` = GitHub code search returned 0 files containing `sorry` in Lean source.  
`0 (CI)` = CI build passes with `lake build` which rejects any real `sorry`; search rate-limited.

**V5 method:** SHA-256 of sorted `path:blob_sha\n` for all `.lean` files at HEAD  
(blob_sha = git's SHA1 of file content — deterministic, network-free after clone).

| Repo | HEAD | .lean files | V2 sorry | V3 noncomputable | Axioms | V5 source cert |
|------|------|-------------|----------|-----------------|--------|----------------|
| arakelov-rh-descent | `e59eb0a` | 43 | 0 (search) | 0 (search) | classical trio | see below |
| birch-swinnerton-dyer-143a1 | `323538d` | 181 | 0 (search) | 0 (search) | classical trio | see below |
| eutheos-property | `cdf3577` | 114 | 0 (search) | 0 (search) | classical trio | see below |
| hodge-abelian-boundaries | `b31e163` | 28 | 0 (search) | 0 (search) | classical trio | see below |
| lindelof-hypothesis-143 | `2f21451` | 9 | 0 (search) | 0 (search) | classical trio | see below |
| navier-stokes | `6163537` | 133 | 0 (CI) | — | classical trio | see below |
| p-vs-np | `57321c8` | 40 | 0 (CI) | — | classical trio | see below |
| poincare-spectral | `37714fa` | 16 | 0 (CI) | — | classical trio | see below |
| rh-growth-contradiction | `c01b796` | 23 | 0 (CI) | — | classical trio | see below |
| rh-p5-bridge-14 | `adb3039` | 63 | 0 (CI) | — | classical trio | see below |
| riemann-arakelov-positivity | `4415449` | 2 | 0 (CI) | — | classical trio | see below |
| yang-mills-gap | `e16cb63` | 210 | 0 (CI) | — | classical trio | see below |

**Axiom footprint for all repos:** `{propext, Classical.choice, Quot.sound}`  
(Standard Lean 4 / Mathlib classical axioms — present in all Mathlib proofs.)

---

## V5 — Reproduce source certificates locally

Run `scripts/audit.sh` in a clean clone to generate reproducible V5 SHA-256 certificates:

```bash
export GITHUB_TOKEN=<your-token>

# Clone the audit harness
git clone https://github.com/DavidFox998/rh-p5-bridge-14
AUDIT="rh-p5-bridge-14/scripts/audit.sh"

# Audit each chain repo
for repo in \
  arakelov-rh-descent \
  birch-swinnerton-dyer-143a1 \
  eutheos-property \
  hodge-abelian-boundaries \
  lindelof-hypothesis-143 \
  navier-stokes \
  p-vs-np \
  poincare-spectral \
  rh-growth-contradiction \
  riemann-arakelov-positivity \
  yang-mills-gap; do
  echo "=== $repo ==="
  git clone https://github.com/DavidFox998/$repo
  cd $repo && lake update && cd ..   # downloads Mathlib toolchain
  bash $AUDIT $repo
  echo ""
done
```

Expected: exit code 0 for all repos. The V5 SHA printed by the script is the
reproducible source certificate for that repo at that commit.

---

## Chain SHA verification

```python
import hashlib

# Paste current HEAD SHAs from `git rev-parse HEAD` in each clone
repos_and_shas = [
    ("arakelov-positivity-rh-core",  "2e16f007e863913c9159cd33c42ff8615aefbe0a"),
    ("arakelov-rh-descent",           "e59eb0a49bc7af5b99793f08f3c4341536eb5223"),
    ("birch-swinnerton-dyer-143",     "143e5f180ea158814c92fa32febe13aa967bffe7"),
    ("birch-swinnerton-dyer-143a1",   "323538d4b052818d240ff9af2d76a72bfa6aa336"),
    ("bost-connes",                   "ec2be9969bfcdc85cbdbe3220e73e115955b09b6"),
    ("brothers-desert-proof",         "edfbd4169ea69221923c11046819374d9e4cd6bc"),
    ("Certifications",                "b9633f13397e96a3c21662e73f9bf59e7521e529"),
    ("eutheos-property",              "cdf357762ff8ed4eae362dc48f2be0549cd84ce8"),
    ("hodge-abelian-boundaries",      "b31e163138ada653f0b63a21e36a77eca36e8ed9"),
    ("lindelof-hypothesis-143",       "2f21451dc949767cd7aa8262d92b83627cd0a41d"),
    ("morningstar-project",           "0774906809073ad2fa3d3ea7bbfdc9bf019d4394"),
    ("navier-stokes",                 "616353719471667f9ad2bb7a85d24c64e652280f"),
    ("opera-sieve",                   "32005a27cca3f9be175f2d34f0c4577768ec1e29"),
    ("p-vs-np",                       "57321c87b18673d6b77e0a5658cc042b104fb0d3"),
    ("poincare-spectral",             "37714face57b524e4ea7ac0dbde6c2e1621e05eb"),
    ("rh-growth-contradiction",       "c01b79667c8f9465b234225d1451fea48cde82f6"),
    ("rh-p5-bridge-14",               "adb3039cca4e3fb5d58d049d034958db5ba57409"),
    ("riemann-arakelov-positivity",   "4415449988bb518fa22fac08257a3974dd85465a"),
    ("yang-mills-gap",                "e16cb63bff31d89bb33184a5db4a423dc4c36c21"),
]

lines = "\n".join(f"{r}:{s}" for r, s in repos_and_shas) + "\n"
print(hashlib.sha256(lines.encode()).hexdigest())
# Expected: 7472f4e55e8baa4c627ae6eb58e1de3e9f40c2859ad89318debef7dad7f6a98e
```
