FROM node:14.17
WORKDIR /usr/src/app
COPY package.json package-lock.json ./
RUN npm install
COPY src/ ./src
COPY index.js server.js ./
ENV NODE_ENV production
CMD ["yarn", "start"]
