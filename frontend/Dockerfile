FROM node:20-alpine as builder

WORKDIR /app

COPY package*.json ./

# Clear npm cache and update npm before installing dependencies
RUN npm cache clean --force && npm install -g npm@latest

RUN npm install

COPY . .

# Build the application
RUN npm run build

# Use a lightweight image for the final stage
FROM node:20-alpine as production

WORKDIR /app

COPY --from=builder /app ./

EXPOSE 3000

CMD ["npm", "start"]