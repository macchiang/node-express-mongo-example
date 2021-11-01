# Base image
FROM node:16-alpine

RUN apk upgrade --no-cache

# Create app directory
RUN mkdir -p /app
WORKDIR /app

# Install app dependencies
COPY package.json package-lock.json ./
RUN npm install

# copy app source
COPY . /app

# service port
EXPOSE 3000

CMD [ "node", "index.js"]
