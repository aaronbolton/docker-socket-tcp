FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y socat

EXPOSE 2375    

ENTRYPOINT ["socat TCP-LISTEN:2375,reuseaddr,fork UNIX-CONNECT:/var/run/docker.sock"]