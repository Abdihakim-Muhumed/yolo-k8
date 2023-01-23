FROM node:alpine
LABEL maintainer="Abdihakim Muhumed <abdihakim.muhumedo@gmail.com>"

WORKDIR /usr/src/app/client


COPY ./client/package*.json ./


COPY ./client .

RUN npm install

WORKDIR /usr/src/app/backend

COPY ./backend/package*.json ./


COPY ./backend .

RUN npm install