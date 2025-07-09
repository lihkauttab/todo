FROM node:16

# Set the working directory in the container
WORKDIR /app
# Copy package.json and package-lock.json first (for better caching)

ADD  a-todo/ /app/


COPY package*.json  ./

# Install dependencies
RUN npm install
# Copy all application files
COPY . .
# Expose the port your app runs on
EXPOSE 3000

# Define the command to run your app
CMD ["npm", "start"]             
