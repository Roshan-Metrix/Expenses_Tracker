# Using the official Node.js 22 Alpine image
FROM node:22-alpine

# Setting the working directory
WORKDIR /app

# Copying package.json and package-lock.json
COPY package*.json .

# Installing dependencies
RUN npm install

# Copying the rest of the application code
COPY . .

# Exposing the application port
EXPOSE 5173

# Starting the application
CMD [ "npm","run","dev" ]