#!/usr/bin/env bash

export IMAGE=$1
docker pull ${IMAGE}
docker-compose -f docker-compose.yaml down
docker-compose -f docker-compose.yaml up -d
docker ps -a
docker logs ec2-user-java-maven-app-1
echo "Application deployed successfully!"