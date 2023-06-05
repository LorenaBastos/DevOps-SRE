# Use a lightweight Node.js base image
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json files
COPY package*.json ./

# Install app dependencies
RUN npm ci --only=production

# Copy the rest of the application code
COPY . .

# Expose the port your app listens on
EXPOSE 3000

# Start the Node.js application
CMD ["node", "app.js"]
