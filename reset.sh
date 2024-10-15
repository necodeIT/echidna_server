#!/bin/bash

docker compose -f dev.docker-compose.yaml down
sudo rm -rf .dev
docker compose -f dev.docker-compose.yaml up -d
