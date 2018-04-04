FROM node:alpine

RUN mkdir dist
ADD ./index.js /dist
ADD ./package.json /dist

WORKDIR /dist

RUN npm install

EXPOSE 2333

CMD ["npm", "start"]