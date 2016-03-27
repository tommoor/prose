FROM nodesource/trusty:4.2.1
MAINTAINER Tom Moor <tom.moor@gmail.com>

ADD . /usr/src/app/
WORKDIR /usr/src/app
ENV NODE_ENV env

RUN npm install
RUN npm install -g gulp
RUN mkdir -p dist && gulp

EXPOSE 3000

CMD ["npm", "start"]
