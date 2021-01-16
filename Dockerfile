FROM ubuntu:18.04

#Default Minecraft version
ARG MINECRAFT_VERSION=1.16.5

#Get prerequisites
RUN apt-get update && apt-get install curl openjdk-8-jdk -y

WORKDIR "/root"

#Set Minecraft version
ENV MINECRAFT_VERSION=$MINECRAFT_VERSION

#Set JVM limits
ENV JAVA_XMS=$JAVA_XMS
ENV JAVA_XMX=$JAVA_XMX

#Create minecraft dir and download Minecraft java version
RUN mkdir minecraft && cd minecraft \
    && curl -o server.jar https://minecraftdocker.s3-us-west-1.amazonaws.com/spigot-${MINECRAFT_VERSION}.jar

#Copy configuration files
COPY ./config/* minecraft/

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Expose Minecraft port
EXPOSE 25565/tcp

# Run Minecraft service
ENTRYPOINT ["/entrypoint.sh"]