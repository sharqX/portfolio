# BUILD STAGE
FROM node:lts AS builder

ENV NODE_OPTIONS=--openssl-legacy-provider

WORKDIR /app

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . .
RUN yarn build

# RUNTIME STAGE
FROM node:lts-alpine

WORKDIR /app

RUN yarn global add serve@14

COPY --from=builder /app/dist ./dist

EXPOSE 8080

CMD ["serve", "-s", "dist", "-l", "8080"]
