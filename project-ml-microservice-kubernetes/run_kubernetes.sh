#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="sahlmady/app"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run predict --image=$dockerpath:testing --port=80

# Step 3:
# List kubernetes pods
kubectl get pod

# Step 4:
# Forward the container port to a host
kubectl port-forward predict 8000:80