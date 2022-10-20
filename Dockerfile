FROM node:alpine3.16

USER node
WORKDIR app

RUN curl http://github.com/porszivo/repository

RUN npm ci

RUN npm run build

CMD ["node", "dist/main.js"]
