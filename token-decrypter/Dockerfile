FROM node:16
WORKDIR /usr/src/app
COPY package.json yarn.lock ./
RUN yarn install
COPY index.js ./
ENV NODE_ENV production
CMD ["yarn", "start"]
