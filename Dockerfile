#Define from what image we want to build from
FROM node:10

#Create app directory
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

#Install node modules
RUN npm install

#Copy Source
COPY . ./

#Expose Node port to outside world
#This is the port defined inside server.js
EXPOSE 5000

#Define the runtime command
#This will execute when docker image is run
CMD ["node", "server.js"]