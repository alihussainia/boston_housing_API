#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Create dockerpath
dockerpath=alihussainia/boston_housing_API

# Authenticate
echo "Docker ID and Image: $dockerpath"
docker login --username=alihussainia --password=password123

# Push image to a docker repository
docker push alihussainia/boston_housing_API:latest
