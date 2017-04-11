#!/bin/bash

if [ ! -f config.xml ]; then
    cp /tmp/config.xml /opt/sparkleshare/config.xml
fi

cat /opt/sparkleshare/config.xml

node /opt/sparkleshare/node_modules/sparkleshare/bin/sparkleshare --config /opt/sparkleshare/config.xml
