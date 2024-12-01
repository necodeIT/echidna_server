#!/bin/bash
set -e

echo "Running migrations..."
npx prisma db push

echo "Starting Dart server..."
exec dart run bin/main.dart
