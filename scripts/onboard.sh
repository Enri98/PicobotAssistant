#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
CONFIG_FILE="${ROOT_DIR}/picobot-data/config.json"

"${SCRIPT_DIR}/wsl-env.sh" docker compose -f "${ROOT_DIR}/docker-compose.yml" down --remove-orphans
"${SCRIPT_DIR}/wsl-env.sh" docker compose -f "${ROOT_DIR}/docker-compose.yml" run --rm picobot onboard

if [[ ! -s "${CONFIG_FILE}" ]]; then
  echo "ERROR: onboard did not create a non-empty ${CONFIG_FILE}" >&2
  exit 1
fi

echo "Onboard complete: ${CONFIG_FILE} exists and is non-empty."
