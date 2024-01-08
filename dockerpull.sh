#!/bin/bash

# Customize these variables for your environment
IMAGE_NAME="clockbox
IMAGE_TAG="latest"  # Or specify a specific tag
CONTAINER_NAME="clock_container"
PORTS="-p 8080:80"  # Adjust as needed for port mappings
# Pull the latest image if it's not already available

echo "Pulling image $IMAGE_NAME:$IMAGE_TAG"
sudo docker pull "$IMAGE_NAME:$IMAGE_TAG"


# Stop and remove any existing container with the same name
sudo docker rm -f "$CONTAINER_NAME" 2> /dev/null || true

# Run the container, exposing ports (but without volumes)
sudo docker run -dp 8080:8080 --name "$CONTAINER_NAME" "$IMAGE_NAME:$IMAGE_TAG" 

