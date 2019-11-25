FROM node:lts-alpine

WORKDIR /app

COPY . /app

ENV PATH /app/node_modules/.bin:$PATH

RUN apk add yarn
RUN yarn

CMD ["yarn", "start"]
