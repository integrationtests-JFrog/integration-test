FROM node:latest

WORKDIR /project

COPY package.json ./

RUN npm install

CMD ["node", "app.js"]
