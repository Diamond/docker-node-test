FROM ubuntu:14.04
MAINTAINER "brichey@teladoc.com"
RUN apt-get update
RUN apt-get install -y build-essential curl
RUN curl -sL https://deb.nodesource.com/setup | sudo bash -
RUN apt-get install -y nodejs
RUN npm install -g express nodemon
EXPOSE 3000
COPY . /node
WORKDIR /node
RUN npm install
CMD ["nodemon", "/node/src/app.js"]
