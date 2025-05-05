FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS jkunle.2dul2b9.mongodb.net
ENV MONGODB_USERNAME jkunle
ENV MONGODB_PASSWORD Er74lNp2Y9mLcJOK

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]