# set of instructions which tells docker on how to create a specific images with all of its different layers
# each instructions are on different line inside of this file
# in other term: each line in docker file represents a different layer in our final image

# this is parent image
FROM node:17-alpine

# tells docker any commands used after this line will do inside the directery if specified for egg /app below
WORKDIR /app

# copy -> copy files to the image (.) -> from path then last one (.) -> path to , add if path necessary
COPY . .

# install dependencies
RUN npm install

# port owned by container
EXPOSE 4000

# command that runs only when container specified with this image is run
CMD ["node", "app.js"]