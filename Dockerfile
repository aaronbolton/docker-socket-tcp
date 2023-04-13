FROM alpine:latest

RUN apk -U --no-cache upgrade \
    && apk --no-cache add socat \
    && apk --no-cache add curl

ENTRYPOINT ["socat"]