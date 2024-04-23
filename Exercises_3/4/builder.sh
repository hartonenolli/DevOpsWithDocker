#!/bin/bash

# Clone the repository from GitHub
git clone https://github.com/$1

# Navigate to the repository directory
cd $(basename $1)

# Build the Docker image using the Dockerfile in the root directory
docker build . -t $2

# Login to Docker Hub
# echo "Logging in to Docker Hub"
docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD

# Push the image to Docker Hub
docker push $2