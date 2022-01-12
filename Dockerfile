# syntax=docker/dockerfile:1

FROM node:16

COPY . /app
WORKDIR /app
RUN npm install
RUN npm audit fix --force

CMD ["node", "app.js"]

EXPOSE 5000
