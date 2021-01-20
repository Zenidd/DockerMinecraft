#!/bin/bash

cd /root/minecraft
exec java -Xmx${JAVA_XMX} -Xms${JAVA_XMS} -jar server.jar nogui