#!/bin/bash

docker compose -f dev.docker-compose.yaml down
rm -rf .dev
docker compose -f dev.docker-compose.yaml up -d
