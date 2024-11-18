# Echidna Server

A fully functional software licensing server written in Dart.

# Development

## Debugging the server

1. First you need to start a postgres server. You can do this by running the following command:

    ```bash
    cp .env.example .env
    docker compose -f dev.docker-compose.yaml up -d 
    ```

    or if you have slidy installed you can run:

    ```bash
    slidy run up
    ```

2. Run the server using the following command:

    ```bash
    dart run bin/main.dart
    ```

3. Debug the server using your favorite IDE.

## Updating the database schema

1. Edit `schema.prisma` to your heart's content.
2. Run `npx prisma db push` to update the dart orm.
3. Done!

# Deployment

> [!NOTE]
> Docker deployment is coming soon.

This project is supposed to be deployed together with the [echidna_webui](https://github.com/necodeIT/echidna_webui). The webui is the frontend for the server.
