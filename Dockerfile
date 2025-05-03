FROM node:lts-alpine as builder

# Set working directory
WORKDIR /app

# Only copy dependency definitions first
COPY package.json .
# Use npm ci if lock file is present, it's faster and more reliable
RUN npm install
# Then copy the rest of your project
COPY . .

# Build the app
CMD ["npm", "run", "build"]

FROM nginx
COPY --from=builder /app/build /usr/share/nginx/html

