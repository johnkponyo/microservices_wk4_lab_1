# Base image: Node runtime
FROM node:20-alpine

# Container working directory
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci

# Application code
COPY . .

# App port
EXPOSE 4000

# Run App
CMD ["node", "app.js"]

HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:4000/health || exit 1