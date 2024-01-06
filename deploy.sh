#!/bin/bash

# Pull the latest Docker image from GitHub Container Registry
run: sudo docker pull -a ${{ secrets.DOCKERHUB_USERNAME }}/clockbox

# Stop and remove the existing container
run: sudo docker stop clockbox-container || true
run: sudo docker rm clockbox-container || true

# Run the new container
run: sudo docker run -d -p 80:8080 --name clockbox-container ${secrets.DOCKERHUB_USERNAME}/clockbox:latest