# License Server

A fully functional software licensing server written in Dart.

# Development

## Debugging the server

First you need to start a postgres server. You can do this by running the following command:

```bash
cp .env.example .env
docker compose -f dev.docker-compose.yaml up -d 
```

Then you can debug the server using your favorite IDE.
