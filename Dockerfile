#BUILD STAGE
FROM node:lts 

ENV NODE_OPTIONS=--openssl-legacy-provider

RUN npm install --global @gridsome/cli

WORKDIR /app

COPY . .

RUN yarn

CMD gridsome develop