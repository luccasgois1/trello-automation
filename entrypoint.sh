#! /bin/sh

set -e

# Download collection
/tests/download_collection.sh

# Replace API Key pair in collections
sed -i "s/YOUR_TRELLO_API_KEY_HERE/$TRELLO_KEY/g" /tests/postman_collection.json
sed -i "s/YOUR_TRELLO_API_TOKEN_HERE/$TRELLO_TOKEN/g" /tests/postman_collection.json

# Run postman collection
newman run "/tests/postman_collection.json"
