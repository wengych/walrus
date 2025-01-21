FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    curl \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

ADD https://storage.googleapis.com/mysten-walrus-binaries/walrus-testnet-latest-ubuntu-x86_64 /usr/local/bin/walrus
RUN chmod +x /usr/local/bin/walrus
RUN mkdir -p /var/lib/walrus
WORKDIR /var/lib/walrus

ENTRYPOINT ["/usr/local/bin/walrus"]
