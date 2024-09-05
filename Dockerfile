# Dockerfile

# Use Node.js LTS version as the base image
FROM node:16-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the source code into the container
COPY . .

# Expose port 9000 for Medusa
EXPOSE 9000

# Start the Medusa server
CMD ["npm", "run", "start"]
