### Notes

# docker container run diamol/ch02-hello-diamol

- Docker tells to run a particular image
- It can't find the image locally (Unable to find image 'diamol/ch02-hello-diamol:latest' locally), so it will pull from docker hub

# Container has it's own virtual environment, managed by Docker
- Hostname
- IP Address
- Disk

Density & Isolation

# docker container run --interactive --tty diamol/base

--interactive and --tty can be shortened to -it
--interactive = setup connection with the container
--tty = connect to a terminal session inside the container

Docker assigns a random id to each container

# docker container top {id}
shows any process in the container

# docker container logs {id}
displays any log entries the container has collected

# docker container inspect {id}

# docker container ls -all
lists all containers

## Containers in the exited state still exist.

# docker container run --detach --publish 8088:80 diamol/ch02-hello- diamol-web

--detach--Starts the container in the background and shows the container ID
--publish--Publishes a port from the container to the computer

Containers aren’t exposed to the outside world by default. Each has its own IP address, but that’s an IP address that Docker creates for a network that Docker manages--the container is not attached to the physical network of the computer. Publishing a container port means Docker listens for network traffic on the computer port, and then sends it into the container. In the preceding example, traffic sent to the computer on port 8088 will get sent into the container on port 80

# docker container stats {id}
shows resources utilized by the container

# docker container rm --force $(docker container ls --all --quiet)

The Docker Engine is the management component of Docker. It looks after the local image cache, downloading images when you need them, and reusing them if they’re already downloaded. It also works with the operating system to create containers, virtual networks, and all the other Docker resources. The Engine is a background process that is always running (like a Linux daemon or a Windows service).

The Docker Engine makes all the features available through the Docker API, which is just a standard HTTP-based REST API. You can configure the Engine to make the API accessible only from the local computer (which is the default), or make it available to other computers on your network.

The Docker command-line interface (CLI) is a client of the Docker API. When you run Docker commands, the CLI actually sends them to the Docker API, and the Docker Engine does the work.

