FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y socat

VOLUME /var/run/docker.sock

ENTRYPOINT ["socat TCP-LISTEN:2375,reuseaddr,fork UNIX-CONNECT:/var/run/docker.sock"]