# Dockerizing the Project

## Base Image
The base image i used is node:alpine . The main reason i used this as the base image is due to its small relative size hence less memory, better performance, security and maintainability.
## Dockerfile Directives
### Base image labeling
FROM node:alpine

LABEL maintainer="Abdihakim Muhumed <abdihakim.muhumedo@gmail.com>"
### Setting up the client application
WORKDIR /usr/src/app/client

COPY ./client/package*.json ./

COPY ./client .

RUN npm install
### Setting up the backend application
WORKDIR /usr/src/app/backend

COPY ./backend/package*.json ./


COPY ./backend .

RUN npm install
## Docker Compose Networking
For the client side i allocated port 3000 for both the docker cntainer and localhost to run the application on the localhost. The YML \
ports:
      - 3000:3000

And port 5000 for the backend: \
ports:
      - 5000:5000



## Docker Compose Volume
I defined a volume for storing data from the mongodb database and named it mongo_db. Below is YML i used in defining the docker compose volume: \
volumes:\
  mongo_db: {}

And the YML for storing the data of the mongodb microservice :\
volumes:\
      - mongo_db:/data/db

## Git Workflow
Git clone the repository.

Commit the changes.

Pushed to github main branch of forked repository.
