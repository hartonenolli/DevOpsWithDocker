#!/bin/bash

# Clone the repository from GitHub
git clone https://github.com/$1

# Navigate to the repository directory
cd $(basename $1)

# Build the Docker image using the Dockerfile in the root directory
docker build . -t $2

# Push the image to Docker Hub
docker push $2