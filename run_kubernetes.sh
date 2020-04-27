#!/usr/bin/env bash

## Complete the following steps to get kubernetes pods running locally

# This is your Docker ID/path
dockerpath=alihussainia/boston_housing_API

# Run the Docker Hub container with kubernetes
kubectl run boston_housing_API\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=boston_housing_API

# List kubernetes pods
kubectl get pod

# Forward the container port to a host
kubectl port-forward boston_housing_API 8000:80
