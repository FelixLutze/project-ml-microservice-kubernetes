#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=machine_learning_api

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username felixlutze
docker tag machine_learning_api felixlutze/machine_learning_api:latest

# Step 3:
# Push image to a docker repository
docker push felixlutze/machine_learning_api:latest
