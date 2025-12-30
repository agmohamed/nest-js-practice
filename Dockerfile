FROM node:22-alpine

WORKDIR /app

# Install deps
COPY package*.json ./
RUN npm ci

# Copy source
COPY . .

# Build NestJS
RUN npm run build

# Railway uses 8080
EXPOSE 8080

CMD ["node", "dist/main.js"]
