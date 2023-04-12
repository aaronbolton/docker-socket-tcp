FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y socat

ENTRYPOINT ["socat TCP-LISTEN:2375,reuseaddr,fork UNIX-CONNECT:/var/run/docker.sock"]