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

## Updating the database schema

1. Edit `schema.prisma` to your heart's content.
2. Run `npx prisma db push` to update the dart orm.
3. Done!
