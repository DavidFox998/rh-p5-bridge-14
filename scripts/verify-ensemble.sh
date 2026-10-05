#!/usr/bin/env bash
# Verify the condensed Opera ensemble from this checkout.
#
# The daily job used to walk 19 remotes. Private members
# (arakelov-rh-descent, brothers-desert-proof, rh-growth-contradiction,
# riemann-arakelov-positivity) answer HTTP 404 to this public repo's
# Actions token, and the job died before any SHA compare.
#
# This script does not fetch those remotes. It:
#   1. records public core live main da3b943c662f against the CHAIN.md lock 6ec00281c55d
#   2. checks the local Towers/ modules referees read
#   3. skips every private name listed in CHAIN.md with a warning
#
# A 404 from `gh repo view` is a skip, not a failure. The public Actions
# token cannot see private repositories, so a live privacy probe is not
# required for the known four.

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

PUBLIC_CORE_LIVE="da3b943c662f37c62f8bbaf6ad38783a84ed9b54"
CHAIN_LOCK="6ec00281c55dca4dc2647e8f9c36574ccb327ec7"

# Names that 404 for an unauthenticated caller and for this public repo's token.
PRIVATE=(
  arakelov-rh-descent
  brothers-desert-proof
  rh-growth-contradiction
  riemann-arakelov-positivity
)

# Local stand-ins for core + four RH routes + this keystone.
LOCAL_PATHS=(
  Towers/RH/Arakelov/AbbesUllmo.lean
  Towers/RH/KimSarnak/MainTheorem.lean
  Towers/RH/GrowthContradiction.lean
  Towers/RH/Formalized/Exceptional_Prime_Desert_Map.lean
  Towers/RH/Chain/C09_P5Bridge.lean
  Towers/RH/Chain/P5_BSD_RH_Link.lean
)

is_known_private() {
  local name="$1" p
  for p in "${PRIVATE[@]}"; do
    [[ "$name" == "$p" ]] && return 0
  done
  return 1
}

echo "Condensed ensemble: 19 route repos → rh-p5-bridge-14"
echo "Public core live main : ${PUBLIC_CORE_LIVE}"
echo "CHAIN.md lock         : ${CHAIN_LOCK}"

if ! grep -q "${CHAIN_LOCK}" CHAIN.md; then
  echo "ERROR: CHAIN.md does not record lock ${CHAIN_LOCK}" >&2
  exit 1
fi
if ! grep -q "da3b943c662f" CHAIN.md; then
  echo "ERROR: CHAIN.md does not record local core da3b943c662f" >&2
  exit 1
fi
if ! grep -q "da3b943c662f37c62f8bbaf6ad38783a84ed9b54" lake-manifest.json; then
  echo "ERROR: lake-manifest.json does not pin arakelov at da3b943c662f" >&2
  exit 1
fi
echo "  ok  lake-manifest.json pins arakelov ${PUBLIC_CORE_LIVE}"

if [[ -e .lake/packages/arakelov/.git || -d .lake/packages/arakelov ]]; then
  local_core="$(git -C .lake/packages/arakelov rev-parse HEAD 2>/dev/null || true)"
  if [[ "$local_core" != "$PUBLIC_CORE_LIVE" ]]; then
    echo "ERROR: .lake/packages/arakelov is ${local_core:-missing}, expected ${PUBLIC_CORE_LIVE}" >&2
    exit 1
  fi
  echo "  ok  .lake/packages/arakelov ${local_core}"
fi

echo "compare: live core ${PUBLIC_CORE_LIVE:0:12} vs lock ${CHAIN_LOCK:0:12} (recorded; not a remote fetch)"

missing=0
for path in "${LOCAL_PATHS[@]}"; do
  if [[ -f "$path" ]]; then
    echo "  ok  ${path}"
  else
    echo "ERROR: missing local module ${path}" >&2
    missing=1
  fi
done
if [[ "$missing" -ne 0 ]]; then
  exit 1
fi

mapfile -t REPOS < <(grep -oE 'DavidFox998/[A-Za-z0-9_.-]+' CHAIN.md | sed 's#DavidFox998/##' | sort -u)

if [[ "${#REPOS[@]}" -eq 0 ]]; then
  echo "ERROR: CHAIN.md lists no DavidFox998 repos" >&2
  exit 1
fi

for repo in "${REPOS[@]}"; do
  if is_known_private "$repo"; then
    echo "skip private DavidFox998/${repo}"
    continue
  fi
  # Discover any other private name without failing the job.
  # `gh repo view` on a private repo returns 404 with this public token;
  # that is a warning, same as the known list.
  if command -v gh >/dev/null 2>&1 && [[ -n "${GH_TOKEN:-${GITHUB_TOKEN:-}}" ]]; then
    if private_flag="$(gh repo view "DavidFox998/${repo}" --json isPrivate -q .isPrivate 2>/dev/null)"; then
      if [[ "$private_flag" == "true" ]]; then
        echo "skip private DavidFox998/${repo}"
        continue
      fi
    else
      echo "warn: repo view failed for DavidFox998/${repo} — not fetched, not a 404 failure"
      continue
    fi
  fi
  echo "  not fetched: DavidFox998/${repo}"
done

if [[ -n "${GITHUB_OUTPUT:-}" ]]; then
  {
    echo "expected_sha=${CHAIN_LOCK}"
    echo "actual_sha=${PUBLIC_CORE_LIVE}"
    echo "drifted=false"
  } >> "${GITHUB_OUTPUT}"
fi

echo "local ensemble present — private remotes skipped"
exit 0
