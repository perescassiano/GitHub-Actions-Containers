FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.p2am8sr.mongodb.net
ENV MONGODB_USERNAME admin
ENV MONGODB_PASSWORD admin

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]