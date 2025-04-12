#! /bin/sh

set -ex

SCRIPT_DIR=$(dirname $(readlink -f "$0"))
POSTMAN_COLLECTION_FILE="$SCRIPT_DIR/postman_collection.json"
ENV_FILE="$SCRIPT_DIR/.env"

if [ -f "$ENV_FILE" ]; then
  source $ENV_FILE
fi

curl --location --request GET "https://api.getpostman.com/collections/$COLLECTION_UID" \
  --header "X-API-Key: $POSTMAN_KEY" >"$POSTMAN_COLLECTION_FILE"
