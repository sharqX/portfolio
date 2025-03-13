#BUILD STAGE
FROM node:lts AS build

ENV NODE_OPTIONS=--openssl-legacy-provider

RUN npm install --global @gridsome/cli

WORKDIR /app

COPY . .

RUN yarn

RUN gridsome build

#SERVE STAGE
FROM nginx:alpine

COPY --from=build /app/dist /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]