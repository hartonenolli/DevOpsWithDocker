# Build
FROM node:16-alpine AS build

# Set the working directory
WORKDIR /app

# Copy the src
COPY . .

RUN npm install \
    && npm run build

FROM node:16-alpine

WORKDIR /app

RUN npm install -g serve \
    && adduser -D appuser \
    && chown appuser /app \
    && rm -rf node_modules

# Expose a port 3000, 5000 was reserved
EXPOSE 3000

USER appuser

COPY --from=build /app/build /app/build

# Command to run the application
CMD ["serve", "-s", "-l", "3000", "build"]
