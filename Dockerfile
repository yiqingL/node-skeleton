FROM node:alpine

WORKDIR /dist

COPY index.js /dist
COPY package.json /dist

RUN npm install

COPY node_modules /dist

WORKDIR dist

CMD ["npm", "start"]

EXPOSE 80