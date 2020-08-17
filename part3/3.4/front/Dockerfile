FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
    curl git && \
    git clone https://github.com/docker-hy/frontend-example-docker exer && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && apt-get install -y nodejs && \
    npm -v && node -v

WORKDIR /exer

RUN npm install && \
    apt-get purge -y --auto-remove curl git && \
    useradd -m app && \
    chown -R app /exer/

USER app

EXPOSE 5000

CMD ["npm", "start"]
