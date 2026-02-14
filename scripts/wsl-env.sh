#!/usr/bin/env bash
set -euo pipefail

export LOCAL_UID="$(id -u)"
export LOCAL_GID="$(id -g)"
exec "$@"
