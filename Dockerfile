FROM node:latest

WORKDIR /project

COPY package.json ./

RUN npm install -g npm@10.6.0
RUN npm install

CMD ["node", "app.js"]
