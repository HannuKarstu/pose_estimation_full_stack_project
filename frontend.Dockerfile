
FROM node:16-alpine

WORKDIR /app
COPY frontend .

RUN npm ci
RUN npm run build
ENV NODE_ENV production

RUN apk --no-cache add curl

EXPOSE 3000

CMD [ "npx", "serve", "build" ]