# Stage 1 - Build
FROM node:18 AS builder
WORKDIR /app
COPY app/package*.json ./
RUN npm install --only=production
COPY app/ .

# Stage 2 - Run
FROM node:18-slim
WORKDIR /app
COPY --from=builder /app /app
EXPOSE 3000
CMD ["npm", "start"]
