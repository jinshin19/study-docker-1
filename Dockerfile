# Set of layers of instructions / This is almost similar to git workflows

# It will docker pull an node image with latest version of it.
FROM node:latest

# This tells the docker when a comman "RUN" is executed, it will execute to the /app inside
# Also in the COPY, the 2nd dot will be put inside the WORKDIR value
WORKDIR /app

# Copy the source code. The 1st dot is the current directory and the 2nd dot is the destinations directory
COPY . .

# Install dependecies
RUN npm install

# Expose the application's port
EXPOSE 3000 

# Run the application in the runtine using CMD instead of RUN
CMD ["npm", "run", "dev"]

# Add docker ignore to ignore certain files where copying