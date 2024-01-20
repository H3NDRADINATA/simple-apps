FROM node:18.19.0-buster
WORKDIR /app
ADD . /app
RUN npm install
CMD npm start   
