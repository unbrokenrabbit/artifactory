#!/bin/bash

echo "I'm provisioning things!!!"

# Install Docker
apt install -y docker.io

ARTIFACTORY_VERSION=5.4.5

# Pull Artifactory Docker image
docker pull docker.bintray.io/jfrog/artifactory-oss:$ARTIFACTORY_VERSION

# Create volume for Artifactory data
docker volume create --name artifactory5_data

# Run the container
docker run --name artifactory5-oss -d -v artifactory5_data:/var/opt/jfrog/artifactory -p 8081:8081 docker.bintray.io/jfrog/artifactory-oss:$ARTIFACTORY_VERSION



