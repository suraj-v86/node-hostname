# Step 1: Use an official Node.js runtime as a parent image
FROM node:16

# Step 2: Set the working directory in the container
WORKDIR /usr/src/app

# Step 3: Copy the package.json and package-lock.json to the container
COPY package*.json ./

# Step 4: Install the dependencies in the container
RUN npm install

# Step 5: Copy the rest of the application files to the container
COPY . .

# Step 6: Expose the port that the app will run on (3000)
EXPOSE 3000

# Step 7: Define the command to run your app
CMD ["npm", "start"]
