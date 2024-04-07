FROM ubuntu

RUN apt-get update && RUN apt-get install -y git nano npm

WORKDIR /usr/share/myapp

RUN npm build

WORKDIR /home/myapp