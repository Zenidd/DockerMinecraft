### DockerMinecraft

A simple dockerized Minecraft Server

## Prerequisites

- Docker
- Docker compose
- Git

## Launch

```bash
git clone https://github.com/Zenidd/DockerMinecraft.git
cd DockerMinecraft
docker-compose up
```

## Misc

Mount server related volume on lightweight alpine image
```bash
docker run --rm -ti -v dockerminecraft_minecraft:/data alpine sh
```