FROM node:23-slim

WORKDIR /app

COPY package*.json ./
RUN npm install
COPY . .

RUN npm install

EXPOSE 3001

CMD ["npm", "start"]
