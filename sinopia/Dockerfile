
FROM keyvanfatehi/sinopia:latest

MAINTAINER Christopher Dowell <cbdowell@gmail.com>

WORKDIR /opt/sinopia

RUN npm set registry http://localhost:4873/

COPY ./htpasswd /opt/sinopia/htpasswd
COPY ./config.yaml /opt/sinopia/config.yaml
