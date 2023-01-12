# node is a docker hub official image (Node.js is a JavaScript-based platform for server-side)
 # the version of node used is 18
 # https://hub.docker.com/_/node
 # FROM creates a layer from the Docker image.
 # alpine is the base image which is based on Alpine Linux, a very compact Linux distribution
FROM node:18-alpine
#create a directory 'app' inside the image
WORKDIR /app
# copy the current local directory in the directory 'app'
COPY . .
# RUN builds the application with make
# yarn install is used to install all dependencies for a project
RUN yarn install --production
# the container will be listening on port 80
EXPOSE 80
# specifies what command to run within the container
CMD ["node", "./server.js"]
