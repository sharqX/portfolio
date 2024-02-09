FROM node:lts
RUN npm install --global @gridsome/cli
ENV NODE_OPTIONS=--openssl-legacy-provider
WORKDIR /app
COPY . .
RUN yarn
CMD gridsome develop