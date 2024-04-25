# Use the latest version of Node.js
FROM node:14

# Set the working directory
WORKDIR /app

# Copy the src
COPY . .

RUN useradd -m appuser \
    && chown appuser /app \
    && npm install \
    && npm install -g serve \
    && npm run build \
    && rm -rf node_modules

# Expose a port 3000, 5000 was reserved
EXPOSE 3000

USER appuser

# Command to run the application
CMD ["serve", "-s", "-l", "3000", "build"]
