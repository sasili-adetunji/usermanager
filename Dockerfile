FROM node:8.1.2 
ENV ROOT_URL "http://localhost"
ENV MONGO_URL "mongodb://127.0.0.1:27017/userManager"

WORKDIR /usr/app
COPY package.json .
RUN npm install --quiet
COPY . .
EXPOSE 7000
CMD [ "npm", "start" ]