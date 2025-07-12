FROM node:22.17.0

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Prisma Generation
RUN npx prisma generate

CMD ["npm", "run", "dev"]
