FROM postman/newman:6-ubuntu@sha256:d9b5e780ead0026bbb37f3759cd7b10fc8a88cd4030c8266a7c5e343d75a5198

WORKDIR /tests

COPY ./entrypoint.sh /tests/entrypoint.sh
COPY ./download_collection.sh /tests/download_collection.sh

RUN chmod +x /tests/entrypoint.sh /tests/download_collection.sh && \
    apk update && \
    apk --no-cache add curl

ENTRYPOINT ["/tests/entrypoint.sh"]
