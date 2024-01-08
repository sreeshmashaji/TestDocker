#!/bin/bash
echo "😊Hai"
# Pull the latest Docker image from GitHub Container Registry
sudo docker pull -a ${{ secrets.DOCKERHUB_USERNAME }}/clockbox
    

# # Stop and remove the existing container
#  sudo docker stop clockbox-container || true
#  sudo docker rm clockbox-container || true

# Run the new container
sudo docker run -dp 8080:8080 ${{ secrets.DOCKERHUB_USERNAME }}/clockbox:latest
