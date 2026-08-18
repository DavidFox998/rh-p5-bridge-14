#!/usr/bin/env bash
# =============================================================================
# Opera Numerorum — Ensemble Link Auditor
#
# Parses REPOS.md for every GitHub repo in the DavidFox998 ensemble, then
# fetches each repo's README from GitHub and checks that it contains a
# back-link to rh-p5-bridge-14 (the keystone / ensemble entry point).
#
# Usage:
#   bash scripts/check_ensemble_links.sh [REPOS_MD_PATH]
#
# Options:
#   REPOS_MD_PATH   Path to REPOS.md (default: REPOS.md in same dir as script)
#   GITHUB_TOKEN    Set this env var to avoid GitHub API rate-limits (optional)
#
# Exit codes:
#   0  all repos contain the ensemble link
#   1  one or more repos are missing the ensemble link
# =============================================================================

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPOS_MD="${1:-${SCRIPT_DIR}/../REPOS.md}"
REPOS_MD="$(realpath "$REPOS_MD")"

ENSEMBLE_KEYSTONE="rh-p5-bridge-14"
ENSEMBLE_OWNER="DavidFox998"

# Colour helpers (disabled when not a terminal or CI sets NO_COLOR)
if [[ -t 1 && "${NO_COLOR:-}" == "" ]]; then
  RED='\033[0;31m'; GREEN='\033[0;32m'; YELLOW='\033[1;33m'; BOLD='\033[1m'; RESET='\033[0m'
else
  RED=''; GREEN=''; YELLOW=''; BOLD=''; RESET=''
fi

echo -e "${BOLD}Opera Numerorum — Ensemble Link Audit${RESET}"
echo "Keystone repo : ${ENSEMBLE_OWNER}/${ENSEMBLE_KEYSTONE}"
echo "REPOS.md      : ${REPOS_MD}"
echo ""

# ---------------------------------------------------------------------------
# 1. Extract repo slugs from REPOS.md
#    Looks for Markdown links of the form [slug](https://github.com/DavidFox998/slug)
# ---------------------------------------------------------------------------
if [[ ! -f "$REPOS_MD" ]]; then
  echo -e "${RED}ERROR: REPOS.md not found at ${REPOS_MD}${RESET}"
  exit 1
fi

mapfile -t REPOS < <(
  grep -oP "https://github\.com/${ENSEMBLE_OWNER}/\K[a-zA-Z0-9_-]+" "$REPOS_MD" \
    | sort -u
)

if [[ ${#REPOS[@]} -eq 0 ]]; then
  echo -e "${RED}ERROR: No repos found in REPOS.md — check the file format.${RESET}"
  exit 1
fi

echo "Repos found in REPOS.md (${#REPOS[@]}):"
for r in "${REPOS[@]}"; do echo "  - ${r}"; done
echo ""

# ---------------------------------------------------------------------------
# 2. Build curl auth header (optional — avoids 60 req/hr unauthenticated limit)
# ---------------------------------------------------------------------------
CURL_AUTH=()
if [[ -n "${GITHUB_TOKEN:-}" ]]; then
  CURL_AUTH=(-H "Authorization: Bearer ${GITHUB_TOKEN}")
fi

# ---------------------------------------------------------------------------
# 3. For each repo, fetch the default-branch README and check for ensemble link
# ---------------------------------------------------------------------------
PASS=0
FAIL=0
MISSING=()

fetch_readme() {
  local repo="$1"
  # GitHub Contents API — Accept: application/vnd.github.raw returns raw text
  local api_url="https://api.github.com/repos/${ENSEMBLE_OWNER}/${repo}/readme"
  local response
  response=$(curl -sf "${CURL_AUTH[@]}" \
    -H "Accept: application/vnd.github.raw" \
    "$api_url" 2>/dev/null) || true
  echo "$response"
}

for REPO in "${REPOS[@]}"; do
  # The keystone itself doesn't need to link back to itself
  if [[ "$REPO" == "$ENSEMBLE_KEYSTONE" ]]; then
    echo -e "  ${YELLOW}SKIP${RESET}  ${REPO}  (keystone — self-reference not required)"
    continue
  fi

  README=$(fetch_readme "$REPO")

  if [[ -z "$README" ]]; then
    echo -e "  ${YELLOW}WARN${RESET}  ${REPO}  (README not fetchable — repo private or missing)"
    # Treat unfetchable repos as warnings, not hard failures, so the check
    # remains useful even for private or not-yet-public repos.
    continue
  fi

  if echo "$README" | grep -q "$ENSEMBLE_KEYSTONE"; then
    echo -e "  ${GREEN}PASS${RESET}  ${REPO}"
    PASS=$((PASS + 1))
  else
    echo -e "  ${RED}FAIL${RESET}  ${REPO}  — README does not reference '${ENSEMBLE_KEYSTONE}'"
    FAIL=$((FAIL + 1))
    MISSING+=("$REPO")
  fi
done

# ---------------------------------------------------------------------------
# 4. Summary
# ---------------------------------------------------------------------------
echo ""
echo -e "${BOLD}Results: ${GREEN}${PASS} passed${RESET}${BOLD}, ${RED}${FAIL} failed${RESET}"

if [[ ${#MISSING[@]} -gt 0 ]]; then
  echo ""
  echo -e "${RED}Repos missing the ensemble back-link:${RESET}"
  for m in "${MISSING[@]}"; do
    echo "  - https://github.com/${ENSEMBLE_OWNER}/${m}"
  done
  echo ""
  echo "Each repo's README should reference '${ENSEMBLE_KEYSTONE}' so referees"
  echo "can navigate back to the ensemble entry point."
  echo ""
  echo "Minimal fix — add a line like this to the failing README(s):"
  echo ""
  echo "  **Ensemble entry point:** [rh-p5-bridge-14](https://github.com/${ENSEMBLE_OWNER}/${ENSEMBLE_KEYSTONE})"
  echo ""
  exit 1
fi

echo -e "${GREEN}All audited repos contain the ensemble back-link. ✓${RESET}"
exit 0
