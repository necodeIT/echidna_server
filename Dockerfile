# Use the official Dart image
FROM dart:stable

WORKDIR /app

RUN apt-get update && \
    apt-get install -y git curl && \
    curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs && \
    apt-get clean

COPY . /app

RUN dart pub get

RUN chmod +x /app/start.sh

EXPOSE 3000

ENTRYPOINT [ "/app/start.sh" ]