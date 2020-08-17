FROM ubuntu:16.04

WORKDIR /exer

RUN apt-get update && apt-get install -y \
    curl git && \
    git clone https://github.com/docker-hy/frontend-example-docker . && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && apt-get install -y nodejs && \
    npm -v && node -v && \
    npm install && \
    apt-get purge -y --auto-remove curl git

EXPOSE 5000

CMD ["npm", "start"]
