FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    curl \
    wget \
    openssl

CMD ["echo", "Vulnerable Image 🚨"]
