FROM node:23-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

# Install a simple HTTP server
RUN npm install -g serve

# Expose port 3000
EXPOSE 3000

# Serve the Vue.js app
CMD ["serve", "-s", "dist", "-l", "3000"]
