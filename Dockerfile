FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo
ENV MONGODB_CLUSTER_ADDRESS cluster0.gyfpw.mongodb.net
ENV MONGODB_USERNAME saad
ENV MONGODB_PASSWORD NRPyRe7jNQmUjWFj

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]