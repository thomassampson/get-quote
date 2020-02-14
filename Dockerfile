FROM node:lts-alpine3.9

ARG QOTM_ENDPOINT=http://52.138.23.26

ENV QOTM_ENDPOINT=${QOTM_ENDPOINT}

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

CMD [ "node", "src/index.js" ]