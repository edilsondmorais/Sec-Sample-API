FROM node:alpine
WORKDIR /app
COPY package*.json ./
ARG DEBIAN_FRONTEND=noninteractive
RUN npm install
COPY . .
USER node
EXPOSE 8080
CMD ["node", "index.js"]