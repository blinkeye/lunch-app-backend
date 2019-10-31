FROM node:12.13.0-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package-lock.json package.json ./
RUN npm install

COPY src ./src

#localhost:3005
EXPOSE 3005
WORKDIR /usr/src/app/src
CMD [ "node", "./bin/www" ]