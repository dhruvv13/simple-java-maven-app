#!/usr/bin/env bash

export IMAGE=$1
docker pull ${IMAGE}
docker-compose -f docker-compose.yaml down
docker-compose -f docker-compose.yaml up -d

echo "Waiting 15 seconds for Spring Boot initialization..."
sleep 15

echo "--- DOCKER STATUS ---"
docker ps -a

echo "--- APPLICATION LOGS ---"
docker logs ec2-user-java-maven-app-1 --tail 50 || docker-compose logs --tail 50

echo "--- LOCAL PORT CHECK ---"
curl -I http://localhost:8080 || true

echo "Application deployed successfully!"