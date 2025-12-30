FROM node:20-alpine

WORKDIR /app

# Install deps
COPY package*.json ./
RUN npm Install

# Copy source
COPY . .

# Build NestJS
RUN npm run build

# Railway uses 8080
EXPOSE 8080

CMD ["node", "dist/main.js"]
