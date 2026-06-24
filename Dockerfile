FROM node:20-alpine

WORKDIR /app

COPY *.json ./

RUN npm ci

COPY . . 

USER node

EXPOSE 5000

CMD ["node", "server.js"]
