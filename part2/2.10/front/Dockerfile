FROM ubuntu:16.04
RUN apt-get update && apt-get install -y curl git
RUN git clone https://github.com/docker-hy/frontend-example-docker exer
WORKDIR /exer
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash && apt-get install -y nodejs
RUN npm -v && node -v && npm install
EXPOSE 5000
CMD ["npm", "start"]
