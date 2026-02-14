#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"

"${SCRIPT_DIR}/wsl-env.sh" docker compose -f "${ROOT_DIR}/docker-compose.yml" run --rm --entrypoint sh picobot -lc '
set -eu
id
ls -ld /home/picobot /home/picobot/.picobot
if touch /home/picobot/.picobot/_write_test; then
  echo "WRITE_TEST: OK"
else
  echo "WRITE_TEST: FAIL" >&2
  exit 1
fi
ls -la /home/picobot/.picobot
'
