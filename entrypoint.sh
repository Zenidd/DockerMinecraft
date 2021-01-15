#!/bin/bash

cd /root/minecraft
java -Xmx${JAVA_XMS} -Xms${JAVA_XMX} -jar server.jar nogui