
FROM ubuntu:16.04

MAINTAINER Christopher Dowell <cbdowell@gmail.com>

RUN adduser --disabled-password --gecos "" sparkleshare
RUN mkdir -p /opt/sparkleshare

WORKDIR /opt/sparkleshare

RUN sudo apt-get update && apt-get install sparkleshare
RUN chown -R sparkleshare:sparkleshare /opt/sparkleshare

USER sparkleshare

ADD /config.json /tmp/config.json
ADD /start.sh /opt/sparkleshare/start.sh

CMD ["/opt/sparkleshare/start.sh"]
