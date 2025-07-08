# Using a base image to build the docker image - this is an official one from the Docker hub
FROM node:21-alpine

# Changing the working directory to /usr/src/app, now all the operations will be getting executed in this directory
WORKDIR /usr/src/app

# Copying all JSON packages to the working directory
COPY package*.json /usr/src/app

# Running npm command to install all the dependecies
RUN npm install

# Copying all other project files and folders to the working directory
COPY . .

# Setting the port number of the docker image as 3000 where the node js app runs
EXPOSE 3000

# Command to run your node js application
CMD ["npm", "start"]
