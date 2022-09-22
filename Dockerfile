FROM node:16.13.2-alpine

WORKDIR /app

COPY . .

RUN apk update

CMD ["npm", "run", "dev"]