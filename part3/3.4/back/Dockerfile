FROM ubuntu:16.04

ENV FRONT_URL=http://localhost:5000

RUN apt-get update && apt-get install -y \
    curl git && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && apt-get install -y nodejs && \
    git clone https://github.com/docker-hy/backend-example-docker backend && \
    node -v && npm -v

WORKDIR /backend

RUN npm install && \
    apt-get purge -y --auto-remove curl git && \
    useradd -m app && \
    chown -R app /backend/

USER app

EXPOSE 8000

CMD ["npm", "start"]
