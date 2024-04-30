FROM node 18.0.0

WORKDIR /project

COPY package.json ./

RUN npm install

CMD ["node", "app.js"]
