FROM node:14

RUN apt-get update

RUN apt install -y default-jre

RUN npm init -y 
RUN npm install apollo-server graphql
RUN npm install --save-dev nodemon
RUN npm install axios
RUN npm install apollo-datasource-rest
RUN npm install prisma --save-dev
RUN npm install @apollo/client graphql

RUN mkdir /node
WORKDIR /node