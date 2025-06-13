#!/usr/bin/env bash
CONTAINER="flask_container"
HOST_PORT=8080

# Tear down any existing container
if docker ps -a --format '{{.Names}}' | grep -xq "${CONTAINER}"; then
  echo "🗑 Removing old ${CONTAINER}…"
  docker rm -f "${CONTAINER}"
fi

echo "▶️ Running new ${CONTAINER}…"
docker run -d \
  --name "${CONTAINER}" \
  -p ${HOST_PORT}:8080 \
  -e APP_NAME="DockerLearner" \
  myflaskapp:latest

echo "✅ App live at http://localhost:${HOST_PORT}/"
