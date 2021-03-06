FROM node:12-alpine

WORKDIR /usr/src/app

ADD package.json .

RUN apt-get update \
    && apt-get -y install sudo \
    && sudo apt install imagemagick

RUN npm install --quiet

CMD ["node", "server.js"]
