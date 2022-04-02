FROM node:16.14.2-alpine

ENV PYTHONUNBUFFERED=1
ENV AWS_CLI_VER=2.1.1

# Install packages
ENV PAGER="less"

RUN apk --no-cache --update add \
    bash \
    curl \
    less \
    groff \
    jq \
    git \
    gcc \
    musl-dev \
    python3-dev \
    py3-setuptools \
    libc-dev \
    libffi \
    libffi-dev \
    openssl-dev \
    cargo \
    make \
    cmake \
    py3-pip \
    curl gcompat zip &&  \
    curl -s https://awscli.amazonaws.com/awscli-exe-linux-x86_64-${AWS_CLI_VER}.zip -o awscliv2.zip && \
    unzip awscliv2.zip && ./aws/install

RUN pip3 install --upgrade pip \
    setuptools_rust \
    awsebcli==3.20.3 --ignore-installed

RUN curl -L https://github.com/barnybug/cli53/releases/download/0.8.18/cli53-linux-386 > /usr/bin/cli53 && \
    chmod +x /usr/bin/cli53

# Update NPM
RUN npm config set unsafe-perm true
RUN npm install -g npm@latest

WORKDIR /home/app

