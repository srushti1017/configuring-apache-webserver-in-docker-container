# configuring-apache-webserver-in-docker-container
Hello Guys !! back with another Automation Repo !! In this Repo you will find a docker.sh script which will helps you to install GUI applications in docker container...

# Steps to install GUI application in docker container :
1)Step 1 :
  Firstly check the docker images and docker container using following commands :
  
    sudo docker run
  
    sudo docker container ls
  
  
2)Step 2 :
  Secondly goto to the dockerfile and make the following changes;
  
    vi dockerfile
  
    FROM ubuntu
  
    ENV DEBIAN_FRONTEND=noninteractive
  
    RUN apt-get update && apt-get install -y firefox
  
    CMD ["firefox"]
  
  3)Step 3 :
    Then to build the image in docker run the following command :
    
    sudo docker build . -t firefox:latest
    
  4)Step 4 :
    After completing installation run the following command to launch our GUI application
    
    xhost +
    
    sudo docker run --rm -it --name firefox -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:ro firefox:latest
    
  # The overall code is as follow :
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
  
    

  
