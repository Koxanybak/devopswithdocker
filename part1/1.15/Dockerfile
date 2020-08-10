FROM ubuntu:16.04
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/Koxanybak/Fullstackopen-2020 shakki
WORKDIR shakki/osa4ja5/bloglist-frontend-master
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs
# LINK TO DOCKERHUB: https://hub.docker.com/repository/docker/koxanybak/blog
RUN npm install
EXPOSE 3000
CMD ["npm", "start"] 
