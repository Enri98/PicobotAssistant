# Picobot (WSL2 + Docker Compose)

Run all commands from this repository in the WSL filesystem (for example `~/picobot-sandbox`).

## Permission + Mount Diagnostics

```bash
bash scripts/diag.sh
```

## Onboard (creates `picobot-data/config.json`)

```bash
bash scripts/onboard.sh
```

## Start Gateway

```bash
bash scripts/wsl-env.sh docker compose up -d
```

## Follow Logs

```bash
docker compose logs -f
```
