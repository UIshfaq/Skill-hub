#!/usr/bin/env bash
set -euo pipefail
{
  echo "[deploy] $(date -u +%FT%TZ) - deploiement simule SkillHub API"
  echo "[deploy] docker pull skillhub:latest"
  echo "[deploy] docker compose -f docker-compose.prod.yml up -d"
  echo "[deploy] healthcheck GET /health -> 200 attendu"
  echo "[deploy] OK"
} | tee deploy.log