FROM alpine:latest

RUN apk update && \
    apk add openssl ca-certificates wget unzip

RUN cd /usr/local/share/ca-certificates; \
    wget -q https://github.com/hacdescm/certs/archive/master.zip; \
    unzip -j master.zip; \
    rm master.zip

RUN update-ca-certificates
