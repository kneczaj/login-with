FROM node:14.17 as build-deps
WORKDIR /usr/src/app
ARG REACT_APP_TOKEN_DECRYPTOR_URL
COPY package.json yarn.lock ./
RUN yarn install
COPY components/ ./components
COPY pages/ ./pages
COPY static/ ./static
COPY fetch-with-cookies.js with-layout.js with-profile.js ./

RUN yarn build
CMD ["yarn", "start"]
