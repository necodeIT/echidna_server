#!/bin/bash

docker compose -f dev.docker-compose.yaml down

rm -rf ./data

docker compose -f dev.docker-compose.yaml up -d
