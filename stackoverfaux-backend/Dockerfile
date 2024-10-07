# Use the official Node.js image
FROM node:16

# Create app directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Generate Prisma Client
RUN npx prisma generate

# Expose port 5000 and start the application
EXPOSE 5000
CMD ["npm", "start"]