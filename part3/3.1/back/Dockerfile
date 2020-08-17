FROM ubuntu:16.04

ENV FRONT_URL=http://localhost:5000
WORKDIR /backend

RUN apt-get update && apt-get install -y \
    curl git && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && apt-get install -y nodejs && \
    git clone https://github.com/docker-hy/backend-example-docker . && \
    node -v && npm -v && \
    npm install && \
    apt-get purge -y --auto-remove curl git


EXPOSE 8000

CMD ["npm", "start"]
