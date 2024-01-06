#!/bin/bash

# Pull the latest Docker image from GitHub Container Registry
docker pull ghcr.io/${secrets.DOCKERHUB_USERNAME}/clockbox:latest

# Stop and remove the existing container
docker stop clockbox-container || true
docker rm clockbox-container || true

# Run the new container
docker run -d -p 80:8080 --name clockbox-container ${secrets.DOCKERHUB_USERNAME}/clockbox:latest