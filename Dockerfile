FROM ubuntu:18.04
WORKDIR /app
COPY package*.json ./
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y nodejs npm
RUN npm install
COPY . .
USER desecops
EXPOSE 8080
CMD ["node", "index.js"]