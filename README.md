# Docker-test

# shows running containers
docker ps
# stops container process
docker stop container_id
# shows all containers running or not
docker ps -a
# run a container by image (attached to terminal)
docker run image_name
# detached from terminal
docker run image_name
# only download image not run
docker pull image_name
# attach terminal to docker process
docker attach container_id
# run specific verstion
docker run redix:5.0
# run in interactive mode with input ability
docker run -i image_name
# run in interactive mode with terminal all
docker run -it image_name
# sleep container forces to keep runing for set interval in seconds
docker run image_name sleep 5
# run custom command on container start
docker run image_name command
# map port 80 of host env to docker port 5000 to access from outside
docker run -p 80:5000 image_name
# inspect more container detail including env variables
docker inspect container_id
# view logs
docker logs container_id
# set env variable
docker run -e VAR_NAME=VALUE image_name
# build docker image using dockerfile
docker build Dockerfile -t image_name
# push on docker hub
docker push accname/image_name
# see size of each build command for example package install size
docker history image_name
# override entrypoint command
docker run --entrypoint sleep2.0 image_name parameter
# set network for container (default:bridge)
docker run image_name --network=host
# create custom network
docker network create \ --driver bridge \ --subnet 182.18.0.0/16 custom-isolated-network
# create a volume
docker volume create volume_name
# mount volume
docker run -v volume_name:/var/lib/mysql image_name
# name the container
docker run --name=name image_name
# run docker-compose.yml
docker-compose up
# limit cpu usage by percentage (50%)
docker run --cpus=.5 image_name
# limit memory usage by mb (100mb)
docker run --memory=100m image_name