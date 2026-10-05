# Verify ensemble failure

Recorded 2026-10-05 from `main` `610803bdf764bb62d90f122428bd63e00589288a`.

The daily job [Verify Ensemble Chain, run 37206175413](https://github.com/DavidFox998/rh-p5-bridge-14/actions/runs/37206175413) failed in 8 seconds. The same failure is the last ten scheduled runs. Lean CI is not the red check.

## What the job printed

```
Fetching HEAD commits from GitHub API …
  arakelov-positivity-rh-core                   da3b943c662f
ERROR: failed to fetch arakelov-rh-descent: HTTP Error 404: Not Found
```

The verifier walks `verify-chain.yml` in alphabetical order. `arakelov-positivity-rh-core` is public and answered. `arakelov-rh-descent` is next, and the request died there.

## Why the API returns 404

An unauthenticated `GET https://api.github.com/repos/DavidFox998/arakelov-rh-descent` returns HTTP 404. The repository is private. The Actions `GITHUB_TOKEN` of this public repository cannot read it, so GitHub reports the private repository as not found.

Three more chain members are private, so the same 404 would hit them if the job got that far:

- `brothers-desert-proof`
- `rh-growth-contradiction`
- `riemann-arakelov-positivity`

## Drift the job never reaches

Live `main` of the public core is `da3b943c662f37c62f8bbaf6ad38783a84ed9b54`. `CHAIN.md` still locks `6ec00281c55dca4dc2647e8f9c36574ccb327ec7`. The daily job exits before it can compare the chain digest.

## This repository is not `RH.Bridge.P5`

`lakefile.lean` declares `lean_lib Towers` only. There is no Lean module `RH.Bridge.P5`. A local `lake build RH.Bridge.P5` emitted no log lines for 25 seconds while Lake configured, and it was stopped. That is not the daily failure. `.lake/` from that probe is not part of this commit.

## README audit

`grep private` across `README.md` files returned no matches.

`github.com` links whose names contain `rh-` still point at separate repositories, including the private routes, from `README.md`, `CHAIN.md`, `REPOS.md`, `AGENTS.md`, `CERT_LOG.md`, and the `Towers/RH` notes. `CHAIN.md` still lists 19 repositories. The verifier in `verify-chain.yml` uses that same list. Neither file records the four RH routes, the core, and this bridge as one public repository.
