#!/bin/bash
set -e

# Login , authenticate your Docker client to your registry
aws ecr get-login-password --region eu-west-1 | docker login --username AWS --password-stdin 099199746132.dkr.ecr.eu-west-1.amazonaws.com

# Pull the Docker image from Docker Hub
docker pull 099199746132.dkr.ecr.eu-west-1.amazonaws.com/demo-repo-app2:latest

# Run the Docker image as a container
docker run -d -p 3001:3000 --name container-app2 099199746132.dkr.ecr.eu-west-1.amazonaws.com/demo-repo-app2:latest
