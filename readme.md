## Studying docker

### What I learned

- **March 15, 2026**
- I learned about `Dockerfile`.
  - `FROM` pull an image in docker hub e.g `NODE` image. If version is not specify then latest will be used.
  - `WORKDIR` to set the current working directory, every copy or command will be executed under the workdir.
  - `COPY` to copy something from original source to `docker` directory. e.g `COPY <original source> <custom docker source>`
  - `RUN` to run a command e.g `npm install`.
  - `EXPOSE` to exposed a port internally in container. This is not accessible to computer local.
  - `CMD` to run a script e.g `["npm", "run", "dev"]`

- `docker build -t <custom image name> <build-context>` e.g `docker build -t my-custom-image .`
- `docker images` to view all images.
- `docker ps` to view all running / active containers.
- `docker ps -a` to view all the containers, regardless running or not.
- `docker exec` e.g `docker exec -it <container name or id> bash` to get inside of the container's / docker directory.
- `docker start <container id or name>` to start a container e.g `docker start express`.
- `docker stop <container id or name>` to stop a container e.g `docker stop express`.
- `docker rm <container id or name>` to remove a container. Add `-f` flag to force. e.g `docker rm express` or `docker rm -f container1`.
- `docker rmi my-image-1` to remove an image.
- `docker run` e.g `docker run -d --rm --name container-1 -p 3001:3000 -v "<absolute path>:/<dockerfile workdir>" <name of the custom image>`. Run the container with a name of **container-1** and **detached** from terminal with **exposed** port of **3001** and volume mapped from **original's path to container / docker's workdir path**. When container is **stopped** it will auto remove or delete container's instance `--rm`.
- **note**: To fix node_modules from being deleted or affected, use another volume for node_modules.
