# Use an official Node.js runtime as the parent image
FROM node:latest

# Set the working directory inside the container to /app
WORKDIR /app

# Install create-react-app and use it to create a new React project called "my-react-app"
RUN npx create-react-app my-react-app

# Change the working directory to the newly created React app
WORKDIR /app/my-react-app

# Expose port 3000 to access the server
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]


### docker build -t my-react-app .
#### docker run -p 3000:3000 my-react-app
