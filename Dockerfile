FROM node:alpine

RUN mkdir dist

COPY index.js /dist
COPY package.json /dist

WORKDIR dist

RUN npm install

CMD ["npm", "start"]

EXPOSE 80