#!/usr/bin/env bash

export IMAGE=$1
docker pull ${IMAGE}
docker-compose -f docker-compose.yaml down
docker-compose -f docker-compose.yaml up -d
echo "Application deployed successfully!"