FROM node:lts-alpine as builder

# Set working directory
WORKDIR /app

# Only copy dependency definitions first
COPY package.json .
RUN npm install
# Then copy the rest of your project
COPY . .

# Build the app
RUN npm run build

FROM nginx
COPY --from=builder /app/build /usr/share/nginx/html

