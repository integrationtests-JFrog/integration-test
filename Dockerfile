FROM node:18.0.0

WORKDIR /project

COPY package.json .

CMD ["node", "index.js"]
