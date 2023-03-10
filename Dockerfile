FROM node:16-alpine3.17
WORKDIR /usr/src/app
COPY package.json ./
RUN yarn install
COPY . .
EXPOSE 8080
CMD ["yarn", "server.ts"]