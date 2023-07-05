FROM node:16-alpine

EXPOSE 8081

WORKDIR /app

COPY package.json .
COPY yarn.lock .

RUN yarn

COPY . .

CMD ["yarn" "start:dev"]