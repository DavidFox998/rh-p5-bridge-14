# scripts

`verify-ensemble.sh` is the daily check. It skips private names (`arakelov-rh-descent`, `brothers-desert-proof`, `rh-growth-contradiction`, `riemann-arakelov-positivity`) and compares local `Towers/` with the CHAIN.md lock `6ec00281c55d` and public core `da3b943c662f`. The earlier 404 is recorded in [`docs/OPERA_VERIFY_ENSEMBLE_FAIL.md`](../docs/OPERA_VERIFY_ENSEMBLE_FAIL.md). `relock-chain.sh` still calls the historical 19-repo API and is not that daily check.
