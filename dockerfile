# base image
FROM node:v10.3.0

RUN sudo apt-get install npm

WORKDIR /home/anto/my-app

ENV PATH /home/anto/my-app/node_modules/.bin:$PATH

# install and cache app dependencies
COPY package.json /usr/src/app/package.json

# add app
COPY . /home/anto/my-app

# start app
CMD ng serve --host 0.0.0.0 --port 4200
