sudo docker image ls 
sudo docker container ls
vi dockerfile
  FROM ubuntu
  ENV DEBIAN_FRONTEND=noninteractive
  RUN apt-get update && apt-get install -y firefox
  CMD ["firefox"]
 sudo docker build . -t firefox:latest
 xhost +
 sudo docker run --rm -it --name firefox -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:ro firefox:latest
