#!/bin/bash

# Load env variables
set -a
. .env
set +a

# Run migrations
tern migrate --migrations ./internal/pgstore/migrations --config ./internal/pgstore/migrations/tern.conf
