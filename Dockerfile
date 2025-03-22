# syntax=docker.io/docker/dockerfile:1.7

FROM docker.io/library/alpine:3.21
ARG VERSION=0.8.2
RUN apk add --no-cache soju~$VERSION
WORKDIR /run/soju
ENTRYPOINT ["/usr/bin/soju"]
