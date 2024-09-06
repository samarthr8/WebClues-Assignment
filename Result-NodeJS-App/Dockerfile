# Using a lightweight Node.js base image
FROM node:16-alpine

# Setting the Envinronment Variables
ENV PORT=3000

# Setting up the working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the application code
COPY . .

# Expose the port the app runs on
EXPOSE $PORT

# Define the command to run the application
CMD ["node", "server.js"]


