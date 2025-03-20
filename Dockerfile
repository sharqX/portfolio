#BUILD STAGE
FROM node:lts AS build

ENV NODE_OPTIONS=--openssl-legacy-provider

RUN npm install --global @gridsome/cli

WORKDIR /app

COPY . .

RUN yarn

EXPOSE 8080

CMD gridsome develop

#SERVE STAGE
# FROM nginx:alpine

# RUN rm /etc/nginx/conf.d/default.conf

# COPY default.conf /etc/nginx/conf.d/default.conf

# COPY --from=build /app/dist /usr/share/nginx/html

# EXPOSE 80

# CMD ["nginx", "-g", "daemon off;"]