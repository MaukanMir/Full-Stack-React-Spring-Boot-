# Use an official Node runtime as a parent image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock) for dependency installation
COPY package*.json ./
# If you are using yarn, copy yarn.lock as well
# COPY package.json yarn.lock ./

# Install dependencies
RUN npm install
# If you are using yarn, use:
# RUN yarn install

# Bundle app source
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Define the command to run the app
CMD ["npm", "start"]
# If you are using yarn, use:
# CMD ["yarn", "start"]