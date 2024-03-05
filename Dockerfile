FROM 099199746132.dkr.ecr.eu-west-1.amazonaws.com/node-image-repo:latest

WORKDIR /usr/src/app

RUN npm install

RUN npm install express

COPY package*.json ./

COPY . .

EXPOSE 3001

CMD ["node", "app.js"]
