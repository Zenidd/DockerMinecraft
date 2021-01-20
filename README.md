### DockerMinecraft

A simple dockerized Minecraft Server

## Prerequisites

- [Docker](https://docs.docker.com/engine/install/)
- [Docker compose](https://docs.docker.com/compose/install/)
- [Git](https://github.com/git-guides/install-git)

## Launch

```bash
git clone https://github.com/Zenidd/DockerMinecraft.git
cd DockerMinecraft
docker-compose up -d
```
## Recommended launcher

- [TLauncher](https://tlauncher.org/en/)


## Misc

Mount server related volume on lightweight alpine image
```bash
docker run --rm -ti -v dockerminecraft_minecraft:/data alpine sh
```