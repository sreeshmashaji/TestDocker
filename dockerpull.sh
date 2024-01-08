#!/bin/bash

# Customize these variables for your environment
IMAGE_NAME="clockbox
IMAGE_TAG="latest"  # Or specify a specific tag
CONTAINER_NAME="clock_container"
PORTS="-p 8080:80"  # Adjust as needed for port mappings

# Pull the latest image if it's not already available

  echo "Pulling image $IMAGE_NAME:$IMAGE_TAG"
  docker pull "$IMAGE_NAME:$IMAGE_TAG"


# Stop and remove any existing container with the same name
docker rm -f "$CONTAINER_NAME" 2> /dev/null || true

# Run the container, exposing ports (but without volumes)
docker run -d --name "$CONTAINER_NAME" "$IMAGE_NAME:$IMAGE_TAG" $PORTS

echo "Container $CONTAINER_NAME started successfully!"
