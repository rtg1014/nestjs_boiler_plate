FROM node:12.18.3-alpine3.12
RUN apk add --no-cache tzdata
ENV TZ Asia/Seoul

WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
CMD npm run start