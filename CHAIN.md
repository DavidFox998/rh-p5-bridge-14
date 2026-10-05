# Opera Numerorum — Condensed chain (1 repo)

Condensed from 19 separate route repos (arakelov-rh-descent etc private) into rh-p5-bridge-14 single referee-friendly repo — verify against local core da3b943c662f, not remote private API.

**Referee repo:** this checkout  
**Public core live `main`:** `da3b943c662f37c62f8bbaf6ad38783a84ed9b54` (recorded; not an object in this git history)  
**CHAIN.md lock:** `6ec00281c55dca4dc2647e8f9c36574ccb327ec7`  
**Local core:** [Towers/RH/Arakelov/AbbesUllmo.lean](Towers/RH/Arakelov/AbbesUllmo.lean)

`scripts/verify-ensemble.sh` checks those local modules and prints the live core SHA next to the lock. The two SHAs differ. That difference is recorded. The script does not fetch private remotes, and a private name below is a warning skip, not an HTTP 404.

| Former remote | Visibility | Local module |
|---------------|------------|--------------|
| DavidFox998/arakelov-positivity-rh-core | public core | [Towers/RH/Arakelov/AbbesUllmo.lean](Towers/RH/Arakelov/AbbesUllmo.lean) |
| DavidFox998/riemann-arakelov-positivity | private | [Towers/RH/Arakelov/](Towers/RH/Arakelov/) |
| DavidFox998/arakelov-rh-descent | private | [Towers/RH/KimSarnak/](Towers/RH/KimSarnak/) |
| DavidFox998/rh-growth-contradiction | private | [Towers/RH/GrowthContradiction.lean](Towers/RH/GrowthContradiction.lean) |
| DavidFox998/brothers-desert-proof | private | [Towers/RH/Formalized/Exceptional_Prime_Desert_Map.lean](Towers/RH/Formalized/Exceptional_Prime_Desert_Map.lean) |
| DavidFox998/rh-p5-bridge-14 | this repo | [Towers/RH/Chain/C09_P5Bridge.lean](Towers/RH/Chain/C09_P5Bridge.lean), [Towers/RH/Chain/P5_BSD_RH_Link.lean](Towers/RH/Chain/P5_BSD_RH_Link.lean) |

**Historical chain SHA256 (19 repos, P26-08-23):** `702d12e6ebf9b203d73bc8a57617ea960e3cc2a31901fc482888fec28ff08825`  
**Previous chain (12 repos, 2026-08-05):** `c79c94e7676a10b1cfb5afc75b7346b9b5b8589dee9b679db230ba3b8034e6d1`

The historical digest is `SHA256` of the newline-terminated string `repo:sha\n` for the 19 names in canonical alphabetical order, using the HEAD commits in the table below. It is not recomputed by the daily job.

---

## Historical lock (19 repos — do not fetch private rows)

| Repo | HEAD at lock | Cluster |
|------|-------------|---------|
| DavidFox998/arakelov-positivity-rh-core · [Towers/RH/Arakelov/AbbesUllmo.lean](Towers/RH/Arakelov/AbbesUllmo.lean) | `6ec00281c55dca4dc2647e8f9c36574ccb327ec7` | RH |
| DavidFox998/arakelov-rh-descent (private, skipped) · [Towers/RH/KimSarnak/](Towers/RH/KimSarnak/) | `49ad1b7f8fec6a871fea1959040e15d43493397a` | RH |
| [DavidFox998/birch-swinnerton-dyer-143](https://github.com/DavidFox998/birch-swinnerton-dyer-143) | `853d7f3171900a4b3af96f7733f684cd8932de1a` | BSD |
| [DavidFox998/birch-swinnerton-dyer-143a1](https://github.com/DavidFox998/birch-swinnerton-dyer-143a1) | `d690e1c30010eaf03ca446f8561612997ac36a5a` | BSD |
| [DavidFox998/bost-connes](https://github.com/DavidFox998/bost-connes) | `15250352cace6fc15cd2a13cf9430d7be8fead00` | BSD/RH |
| DavidFox998/brothers-desert-proof (private, skipped) · [Towers/RH/Formalized/Exceptional_Prime_Desert_Map.lean](Towers/RH/Formalized/Exceptional_Prime_Desert_Map.lean) | `c21a38cdb98e408659f565525dff9091940a0516` | RH |
| [DavidFox998/Certifications](https://github.com/DavidFox998/Certifications) | `731253f5b336de77105a3dc85798828306abc9ad` | META |
| [DavidFox998/eutheos-property](https://github.com/DavidFox998/eutheos-property) | `c3d272476ab82f7858b38f13dd7cde5e6d01baf9` | P≠NP |
| [DavidFox998/hodge-abelian-boundaries](https://github.com/DavidFox998/hodge-abelian-boundaries) | `b5d4339e96bff39749093b0acbf323b03d3bb2e7` | Hodge |
| [DavidFox998/lindelof-hypothesis-143](https://github.com/DavidFox998/lindelof-hypothesis-143) | `d0897752af48bd0c1c069c808518c1911d6e796d` | RH |
| [DavidFox998/morningstar-project](https://github.com/DavidFox998/morningstar-project) | `14d94d39ed786170c450e64d3751d43a26be60d6` | META |
| [DavidFox998/navier-stokes](https://github.com/DavidFox998/navier-stokes) | `ab0e5eccf6066e43a92a28c61dd256e88a84228e` | NS |
| [DavidFox998/opera-sieve](https://github.com/DavidFox998/opera-sieve) | `43f8b96822e7db3328b7d24f48324aca600d0350` | META |
| [DavidFox998/p-vs-np](https://github.com/DavidFox998/p-vs-np) | `ebcee3293972f67364d6724447c2cb4652a36173` | P≠NP |
| [DavidFox998/poincare-spectral](https://github.com/DavidFox998/poincare-spectral) | `807f4b442fa599614598271b1b1364fc2fb31105` | Poincaré |
| DavidFox998/rh-growth-contradiction (private, skipped) · [Towers/RH/GrowthContradiction.lean](Towers/RH/GrowthContradiction.lean) | `c10d48c7b11df28520598c3d0cfcb3006b16fec2` | RH |
| DavidFox998/rh-p5-bridge-14 · [Towers/RH/Chain/P5_BSD_RH_Link.lean](Towers/RH/Chain/P5_BSD_RH_Link.lean) | `22bba853bf8b91d8d05cfddbbdb69d6e246ef068` | META |
| DavidFox998/riemann-arakelov-positivity (private, skipped) · [Towers/RH/Arakelov/](Towers/RH/Arakelov/) | `14c52e307e95258965ed06291cdc2f03d1498900` | RH |
| [DavidFox998/yang-mills-gap](https://github.com/DavidFox998/yang-mills-gap) | `bee05c045ff04a5a84eb2a33e4445ce454a0f368` | YM |

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

The daily check is local. It does not recompute the 19-way digest.

```bash
bash scripts/verify-ensemble.sh
```

`scripts/relock-chain.sh` still lists the historical 19 names and calls the GitHub API. Private names 404 for the public Actions token, so that script is not the daily verifier. Do not point `verify-chain.yml` at it.

| Workflow | Schedule | What it does |
|----------|----------|----------------|
| `verify-chain.yml` | **Daily at 08:00 UTC** (and on `workflow_dispatch`) | Runs `scripts/verify-ensemble.sh`. Private names are skipped. A missing local module fails the job and can post to `SLACK_WEBHOOK_URL`. |
| `relock-chain.yml` | **Weekly, Monday 06:00 UTC** (and on `workflow_dispatch`) | Historical API re-lock. Not used to clear the private-repo 404. |

To receive Slack alerts, add an incoming-webhook URL as a repository secret named `SLACK_WEBHOOK_URL`.
If the secret is absent the Slack step is skipped; a real local miss still fails the job.

---

## Verification

From this checkout:

```bash
bash scripts/verify-ensemble.sh
```

The script prints public core `da3b943c662f37c62f8bbaf6ad38783a84ed9b54` next to lock `6ec00281c55dca4dc2647e8f9c36574ccb327ec7`, checks `Towers/`, and skips private names. It exits 0 when those local files are present.

Referees read:

- [Towers/RH/Arakelov/AbbesUllmo.lean](Towers/RH/Arakelov/AbbesUllmo.lean)
- [Towers/RH/KimSarnak/](Towers/RH/KimSarnak/)
- [Towers/RH/GrowthContradiction.lean](Towers/RH/GrowthContradiction.lean)
- [Towers/RH/Formalized/Exceptional_Prime_Desert_Map.lean](Towers/RH/Formalized/Exceptional_Prime_Desert_Map.lean)
- [Towers/RH/Chain/C09_P5Bridge.lean](Towers/RH/Chain/C09_P5Bridge.lean)

See [CERT_LOG.md](CERT_LOG.md) for pre-run baseline certificates.
