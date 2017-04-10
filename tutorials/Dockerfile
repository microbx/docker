
FROM node:6.10.0-alpine

MAINTAINER Christopher Dowell <cbdowell@gmail.com>

RUN addgroup -S node && adduser -S -g node node

ENV NPM_CONFIG_LOGLEVEL warn

WORKDIR /app

COPY package.json /app/package.json

RUN npm install

RUN mv /app/node_modules /node_modules

COPY . /app

EXPOSE 3000

CMD ["npm", "start"]
