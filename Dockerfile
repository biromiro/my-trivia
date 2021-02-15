FROM node:15.8.0-alpine3.10

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY public ./public
COPY src ./src

COPY .env* ./

EXPOSE $PORT

CMD ["npm", "start"]