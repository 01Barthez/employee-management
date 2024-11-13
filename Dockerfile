FROM node:23-alpine

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn install

COPY . .

EXPOSE 3000 483

CMD ["yarn", "dev"]
