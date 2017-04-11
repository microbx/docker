
FROM node

MAINTAINER Christopher Dowell <cbdowell@gmail.com>

RUN adduser --disabled-password --gecos "" sinopia
RUN mkdir -p /opt/sinopia/storage

WORKDIR /opt/sinopia

RUN npm install js-yaml sinopia
RUN chown -R sinopia:sinopia /opt/sinopia
#RUN npm set registry http://localhost:4873/

USER sinopia

ADD /config.yaml /tmp/config.yaml
ADD /start.sh /opt/sinopia/start.sh
ADD /htpasswd /opt/sinopia/htpasswd

CMD ["/opt/sinopia/start.sh"]

EXPOSE 4873

VOLUME /opt/sinopia
