FROM node:8

# COPY's first argument is relative to current dir, second is relative to WORKDIR
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .

EXPOSE 1883
CMD [ "npm", "start" ]
