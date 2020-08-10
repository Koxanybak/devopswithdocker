#os is ubuntu 20.04
FROM ubuntu:20.04

#install git
RUN apt-get update && apt-get install -y git

#install node and npm
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash
RUN apt-get install -y nodejs

#install typescript
RUN npm install -g typescript ts-node ts-node-dev

CMD ["/bin/bash"]

# https://hub.docker.com/repository/docker/koxanybak/1.17
