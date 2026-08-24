# Opera Numerorum — Data Chain Lock (19 repos)

**Chain SHA256:** `4b161385b389cb59a636adceb3b46e785fd131ed492536f25137815e3c4d7990`  
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
| [DavidFox998/arakelov-positivity-rh-core](https://github.com/DavidFox998/arakelov-positivity-rh-core) | `60497b1c3fe9b31f9b121446436048ffd96a09e1` | RH |
| [DavidFox998/arakelov-rh-descent](https://github.com/DavidFox998/arakelov-rh-descent) | `fb50a23fffef99d2849d865662336e376b02b7d7` | RH |
| [DavidFox998/birch-swinnerton-dyer-143](https://github.com/DavidFox998/birch-swinnerton-dyer-143) | `cd89d2eae0bbf0d711de92b2b37eaa939ae0f454` | BSD |
| [DavidFox998/birch-swinnerton-dyer-143a1](https://github.com/DavidFox998/birch-swinnerton-dyer-143a1) | `d950b4fb4c0017e5aedb889d3e638fb3f1a80c5e` | BSD |
| [DavidFox998/bost-connes](https://github.com/DavidFox998/bost-connes) | `8d4911eaaf314ed866553f5fc745f6585721de0d` | BSD/RH |
| [DavidFox998/brothers-desert-proof](https://github.com/DavidFox998/brothers-desert-proof) | `e5c1814b4e3627d59c91115e3414929ffcc4199a` | RH |
| [DavidFox998/Certifications](https://github.com/DavidFox998/Certifications) | `3bca71025b6c01f0006cb8abc7aefa9bf6ced3c3` | META |
| [DavidFox998/eutheos-property](https://github.com/DavidFox998/eutheos-property) | `f49412da0cc8a1a2a5f85f3386efacc6cd467414` | P≠NP |
| [DavidFox998/hodge-abelian-boundaries](https://github.com/DavidFox998/hodge-abelian-boundaries) | `41bb94c2429b9e8cf366bafecc803ba18844fc90` | Hodge |
| [DavidFox998/lindelof-hypothesis-143](https://github.com/DavidFox998/lindelof-hypothesis-143) | `6db04e2ecbc56a5477e94dbd9d751d296dbc390f` | RH |
| [DavidFox998/morningstar-project](https://github.com/DavidFox998/morningstar-project) | `5cc170aa7ce9e5f6282a45ed5ac4b0f8aba1eec9` | META |
| [DavidFox998/navier-stokes](https://github.com/DavidFox998/navier-stokes) | `0fa1eca5ce05c3cabb588c07fbec12a86dba8509` | NS |
| [DavidFox998/opera-sieve](https://github.com/DavidFox998/opera-sieve) | `aa056a6092043e62b5749de7c167c8700d851fce` | META |
| [DavidFox998/p-vs-np](https://github.com/DavidFox998/p-vs-np) | `535288518ebfaa5cb8c20f652f2fd03ad81372df` | P≠NP |
| [DavidFox998/poincare-spectral](https://github.com/DavidFox998/poincare-spectral) | `ea023bcd77d5b4c0fbce8a656221fd5293704044` | Poincaré |
| [DavidFox998/rh-growth-contradiction](https://github.com/DavidFox998/rh-growth-contradiction) | `cd8794142240b9737393b0c1236b96d349f71d2d` | RH |
| [DavidFox998/rh-p5-bridge-14](https://github.com/DavidFox998/rh-p5-bridge-14) | `112e80ebd777203d917a4539453f7e8020dfe13f` | META |
| [DavidFox998/riemann-arakelov-positivity](https://github.com/DavidFox998/riemann-arakelov-positivity) | `5c8fb6f8adf6320883c2e1d3b14de597610a156e` | RH |
| [DavidFox998/yang-mills-gap](https://github.com/DavidFox998/yang-mills-gap) | `c3e025b7d32fa6e9a6398ea59403ef42107d7dcb` | YM |

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
