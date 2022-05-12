# Docker Commands

1. docker run nginx
- Will run the specified image. New images will be pulled if it cannot find it locally

2. docker ps
- list containers
- each container gets a random ID and name
- docker ps -a (will list ALL containers, not just the ones that are running)

3. docker stop {target}
- stop docker

4. docker rm {target}
- remove docker image

5. docker images
- show images

6. docker rmi {target}
- must delete all dependent images

7. docker pull {target}
- only pull image but not run the container

8. docker run ubuntu
# Containers are meant to run specific task, not maintain an OS. Once the task is complete, it exits. It lives long as long as the process lives.

9. docker run ubuntu sleep 5
- Docker runs sleep for 5 seconds within ubuntu

10. docker exec
- execute a command within a docker container

11. docker run kodekloud/simple-webapp
- run in attached mode

12. docker run -d kodekloud/simple-webapp
- run the docker container in a detached mode
- you can run docker attach id if you want to attach again

13. docker run -it centos bash
- -it login directly to the container

14. docker system prune
- removes all unused images

15. docker logs -f 287ff
- logs of docker container

16. docker build -t pknomad/figlet:latest .
- build and push docker container into the hub