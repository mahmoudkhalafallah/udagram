FROM node:16.14.2-alpine

# Install packages
RUN apk update && apk add --update --no-cache \
    git \
    bash \
    curl \
    zip \
    openssh \
    python3 \
    py3-pip \
    py-cryptography \
    wget \
    curl \
    bash \
    less \
    groff \
    jq \
    gcc \
    musl-dev \
    py3-setuptools \
    libc-dev \
    libffi \
    libffi-dev \
    openssl-dev \
    cargo \
    make \
    cmake

RUN pip3 install --upgrade pip \
    setuptools_rust \
    awsebcli --ignore-installed \
    awscli

# Update NPM
RUN npm config set unsafe-perm true
RUN npm update -g

WORKDIR /home/app

CMD [ "node" ]
