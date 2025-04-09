#! /bin/sh

set -ex

SCRIPT_DIR=$(dirname $(readlink -f "$0"))

POSTMAN_COLLECTION_FILE="$SCRIPT_DIR/postman_collection.json"
ENV_FILE="$SCRIPT_DIR/.env"

if [ ! -f "$ENV_FILE" ]; then
    echo "$ENV_FILE file does not exist. Please create one based on the README.md file" 
    exit 1
fi

source $ENV_FILE

COLLECTION_UID=22855432-4ddc7e7b-fdc1-4f82-bee1-b738a657f547

curl --location --request GET "https://api.getpostman.com/collections/$COLLECTION_UID" \
--header "X-API-Key: $POSTMAN_KEY" > "$POSTMAN_COLLECTION_FILE"
