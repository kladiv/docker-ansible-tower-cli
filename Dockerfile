FROM alpine:latest

ENV TOWER_CLI_VERSION 3.3.8

RUN apk add --update --no-cache \
    python \
    py-pip && \
    pip install ansible-tower-cli==$TOWER_CLI_VERSION && \
    pip install --upgrade pip && \
    rm -rf /var/cache/apk/*

CMD [ "tower-cli", "--version" ]
