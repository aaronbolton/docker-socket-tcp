FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y socat docker

VOLUME /var/run/docker.sock

CMD ["dockerd", "-H", "unix:///var/run/docker.sock"]

RUN socat TCP-LISTEN:2375,reuseaddr,fork UNIX-CONNECT:/var/run/docker.sock