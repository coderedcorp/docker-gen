FROM alpine:latest

RUN apk -U add openssl

ENV DOCKER_HOST unix:///tmp/docker.sock

COPY dist/alpine-linux/amd64/docker-gen /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/docker-gen"]
