FROM alpine:latest

ENTRYPOINT ["/usr/bin/lspci"]

WORKDIR /workspace

RUN apk add --no-cache pciutils

# run as unprivileged user
USER 1000:1000
