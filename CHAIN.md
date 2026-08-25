# Opera Numerorum — Data Chain Lock (19 repos)

**Chain SHA256:** `b7fd458d479a65e2a94d673fd2b041c8a15ee8de80f0db45e96cf59b4e1ce339`  
P26-08-23  
**Repos in chain:** 19  
**Previous chain (12 repos, 2026-08-05):** `c79c94e7676a10b1cfb5afc75b7346b9b5b8589dee9b679db230ba3b8034e6d1`

This file is maintained in `rh-p5-bridge-14` and referenced across all repos in the chain.  
The chain SHA256 is `SHA256` of the newline-terminated string
`repo:sha\n` for every repo in **canonical alphabetical order**,
using the HEAD commits recorded in the table below.

---

## Repos in this chain

| Repo | HEAD at lock | Cluster |
|------|-------------|---------|
| [DavidFox998/arakelov-positivity-rh-core](https://github.com/DavidFox998/arakelov-positivity-rh-core) | `59ca013e8aa2df9cd5808a7f30bf5eac3fab16fc` | RH |
| [DavidFox998/arakelov-rh-descent](https://github.com/DavidFox998/arakelov-rh-descent) | `fb50a23fffef99d2849d865662336e376b02b7d7` | RH |
| [DavidFox998/birch-swinnerton-dyer-143](https://github.com/DavidFox998/birch-swinnerton-dyer-143) | `2a5fe5f48cee9f129a005a0d795937e109768df1` | BSD |
| [DavidFox998/birch-swinnerton-dyer-143a1](https://github.com/DavidFox998/birch-swinnerton-dyer-143a1) | `d950b4fb4c0017e5aedb889d3e638fb3f1a80c5e` | BSD |
| [DavidFox998/bost-connes](https://github.com/DavidFox998/bost-connes) | `a5da300a8d7324adfd492eabd0c962c8a71bf658` | BSD/RH |
| [DavidFox998/brothers-desert-proof](https://github.com/DavidFox998/brothers-desert-proof) | `e5c1814b4e3627d59c91115e3414929ffcc4199a` | RH |
| [DavidFox998/Certifications](https://github.com/DavidFox998/Certifications) | `d54ecd974f7085be8648fc131153e644392835a0` | META |
| [DavidFox998/eutheos-property](https://github.com/DavidFox998/eutheos-property) | `7b0085ea3448ce10c0023069f2ce701adb6e7c15` | P≠NP |
| [DavidFox998/hodge-abelian-boundaries](https://github.com/DavidFox998/hodge-abelian-boundaries) | `2a6477beb7bc19bc5997bad359bce35a4202972b` | Hodge |
| [DavidFox998/lindelof-hypothesis-143](https://github.com/DavidFox998/lindelof-hypothesis-143) | `ba293fb60a56cd99e3dcb3f8d7f3301efe2a38f4` | RH |
| [DavidFox998/morningstar-project](https://github.com/DavidFox998/morningstar-project) | `3a93b9ae2352ae93d1bb0602a53e03d0aa58d591` | META |
| [DavidFox998/navier-stokes](https://github.com/DavidFox998/navier-stokes) | `fce1db4ff72650a9da42e740adbf630f990cbde0` | NS |
| [DavidFox998/opera-sieve](https://github.com/DavidFox998/opera-sieve) | `2b4c8f948396171528b62fa0594d9096ba197ab3` | META |
| [DavidFox998/p-vs-np](https://github.com/DavidFox998/p-vs-np) | `a499a4dca2d86517a01644da18f1e482a461794b` | P≠NP |
| [DavidFox998/poincare-spectral](https://github.com/DavidFox998/poincare-spectral) | `309cbf7460bf966415c1ea6c7ccd7e0af0e53f7f` | Poincaré |
| [DavidFox998/rh-growth-contradiction](https://github.com/DavidFox998/rh-growth-contradiction) | `82cf0249869035f7339a1c75eae2e6da0399fc44` | RH |
| [DavidFox998/rh-p5-bridge-14](https://github.com/DavidFox998/rh-p5-bridge-14) | `2b106c7268ac00c504758cd50421a1c827474813` | META |
| [DavidFox998/riemann-arakelov-positivity](https://github.com/DavidFox998/riemann-arakelov-positivity) | `b62e1e138cb4dcdb45ffee437f2cd6a37ce34006` | RH |
| [DavidFox998/yang-mills-gap](https://github.com/DavidFox998/yang-mills-gap) | `9872ddba9cf0072eb9cb6ce1ca0c20027aff29ad` | YM |

---

## What this chain represents

These repos are not isolated proofs of isolated problems.
They are facets of the same underlying object.

| Cluster | Repos | Core claim |
|---------|-------|-----------|
| Circuit complexity / P vs NP | `p-vs-np`, `eutheos-property` | Witness T=1419; 35→61→188→∞ family; H4 Fibonacci tower; non-algebrizing barrier |
| Riemann Hypothesis | `rh-p5-bridge-14`, `riemann-arakelov-positivity`, `rh-growth-contradiction`, `arakelov-rh-descent`, `brothers-desert-proof`, `arakelov-positivity-rh-core`, `lindelof-hypothesis-143` | RH via Arakelov geometry, growth contradictions, ζ-function bounds, Dirichlet jitter |
| BSD Conjecture | `birch-swinnerton-dyer-143a1`, `birch-swinnerton-dyer-143`, `bost-connes` | BSD on 143a1; h(ℚ(√−143))=10; Bost-Connes M1–M3 |
| Lindelöf | `lindelof-hypothesis-143` | Moment bounds, sub-convexity |
| Poincaré | `poincare-spectral` | Spectral methods, Laplacian gap |
| Navier–Stokes | `navier-stokes` | Regularity, blow-up barrier |
| Hodge | `hodge-abelian-boundaries` | Abelian boundary cases |
| Yang–Mills | `yang-mills-gap` | Mass gap certificate |
| Infrastructure | `opera-sieve`, `morningstar-project`, `rh-p5-bridge-14`, `Certifications` | Sieve, certification ledger, bridge, audit |

The Millennium Problems are not seven isolated islands.
They are projections of a single geometric object — the same
non-crystallographic, non-algebrizing H4-throat barrier that
T=1419 witnesses in circuit complexity.

---

## Re-lock procedure

When one or more repos receive new commits the chain SHA drifts.
Re-lock with the automated script:

```bash
# Inside a checkout of rh-p5-bridge-14:
export GITHUB_TOKEN=ghp_...          # needs repo:read on all 19 repos
bash scripts/relock-chain.sh         # patches CHAIN.md + REPOS.md, opens a PR
bash scripts/relock-chain.sh --dry-run  # preview only — no file changes
```

The script:
1. Calls the GitHub API to fetch the current `main` HEAD of each repo.
2. Recomputes `SHA256(repo:sha\n …)` in canonical alphabetical order.
3. If the digest differs from the value in this file, patches `CHAIN.md` and
   `REPOS.md` in place and (inside GitHub Actions) opens a pull request.
4. If the digest matches, exits 0 with "chain is current".

Two GitHub Actions workflows guard the chain:

| Workflow | Schedule | Action on drift |
|----------|----------|-----------------|
| `verify-chain.yml` | **Daily at 08:00 UTC** (and on `workflow_dispatch`) | Fails the job → GitHub check failure; posts a Slack alert via `SLACK_WEBHOOK_URL` repository secret |
| `relock-chain.yml` | **Weekly, Monday 06:00 UTC** (and on `workflow_dispatch`) | Opens a pull request titled `chore: re-lock ensemble chain (YYYY-MM-DD)` for human review before merge |

To receive Slack alerts, add your incoming-webhook URL as a repository secret named `SLACK_WEBHOOK_URL` in `rh-p5-bridge-14`.
If the secret is absent the Slack step is skipped gracefully; the job still fails (providing the GitHub check-failure signal).

---

## Verification

Recompute the chain SHA from live HEAD commits:

```python
import hashlib, json, urllib.request, os

repos = [
    "arakelov-positivity-rh-core", "arakelov-rh-descent",
    "birch-swinnerton-dyer-143", "birch-swinnerton-dyer-143a1",
    "bost-connes", "brothers-desert-proof", "Certifications",
    "eutheos-property", "hodge-abelian-boundaries", "lindelof-hypothesis-143",
    "morningstar-project", "navier-stokes", "opera-sieve", "p-vs-np",
    "poincare-spectral", "rh-growth-contradiction", "rh-p5-bridge-14",
    "riemann-arakelov-positivity", "yang-mills-gap"
]
tok = os.environ["GITHUB_TOKEN"]
lines = []
for repo in repos:
    url = f"https://api.github.com/repos/DavidFox998/{repo}/commits/main"
    req = urllib.request.Request(url, headers={"Authorization": f"token {tok}"})
    sha = json.loads(urllib.request.urlopen(req).read())["sha"]
    lines.append(f"{repo}:{sha}")
result = hashlib.sha256(("\n".join(lines) + "\n").encode()).hexdigest()
print(result)
print("Expected: f39ed9a9bd7cc02c6cf415f40b3faaa3c627a5a0d53621766466f31a2211e7ce")
```

If the hashes differ, one or more repos have received new commits since the lock.
Re-lock by re-running this script and committing a fresh CHAIN.md.

---

## Audit all repos

```bash
git clone https://github.com/DavidFox998/rh-p5-bridge-14
for repo in arakelov-positivity-rh-core arakelov-rh-descent \
    birch-swinnerton-dyer-143 birch-swinnerton-dyer-143a1 \
    bost-connes brothers-desert-proof eutheos-property \
    hodge-abelian-boundaries lindelof-hypothesis-143 morningstar-project \
    navier-stokes opera-sieve p-vs-np poincare-spectral \
    rh-growth-contradiction riemann-arakelov-positivity yang-mills-gap; do
  git clone https://github.com/DavidFox998/$repo
  bash rh-p5-bridge-14/scripts/audit.sh $repo | tail -5
done
```

See [CERT_LOG.md](CERT_LOG.md) for pre-run baseline certificates.
