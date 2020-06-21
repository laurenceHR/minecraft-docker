# Minecraft 1.11 Dockerfile - Example with notes

# Use the offical Debian Docker image with a specified version tag, Stretch, so not all
# versions of Debian images are downloaded.
FROM adoptopenjdk/openjdk8:latest

MAINTAINER Laurence HR <laurencehr@gmail.com>

#ENV MINECRAFT_VERSION 1.14.4
ENV MINECRAFT_VERSION 1.15.2
ENV RAM 512

WORKDIR /data

COPY jar/server-${MINECRAFT_VERSION}.jar /data
COPY data/eula.txt /data
COPY data/server.properties /data

VOLUME /data

# Expose the container's network port: 25565 during runtime.
EXPOSE 25565

#Automatically accept Minecraft EULA, and start Minecraft server
CMD pwd && ls -l && java -Xmx${RAM}M -Xms${RAM}M -jar /data/server-${MINECRAFT_VERSION}.jar nogui