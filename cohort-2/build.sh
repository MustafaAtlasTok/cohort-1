#!/usr/bin/env bash
IMAGE="myflaskapp:latest"
echo "🔨 Building ${IMAGE}…"
docker build -t "${IMAGE}" .
