# Use the official Node.js 18 Alpine image as the base
# Specifies the base image. The Alpine variant is lightweight, which helps in reducing the image size.
FROM node:18-alpine  

# Set the working directory inside the container. All subsequent commands will be run from this directory.
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory inside the container
COPY package*.json ./

# Install application dependencies defined in package.json
RUN npm install

# Copy the rest of the application code to the working directory inside the container
COPY . .

# Expose port 3000 to the host. Informs Docker that the container listens on port 3000
EXPOSE 3000

# Define the command to run the application
CMD ["node", "index.js"]
