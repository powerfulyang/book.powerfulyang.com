FROM node:14.0-alpine3.11

WORKDIR /usr/app

COPY book.json .

RUN  npm i -g gitbook-cli \
    && gitbook install
