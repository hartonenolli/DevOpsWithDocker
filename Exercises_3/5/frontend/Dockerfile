# Use node:14
FROM node:14

# Set the working directory
WORKDIR /app

RUN useradd -m appuser

RUN chown appuser /app


# Copy package.json and package-lock.json
COPY package.json ./
COPY package-lock.json ./

# Install dependencies
RUN npm install

# Copy the src
COPY . .

# Expose a port 3000, 5000 was reserved
EXPOSE 3000

RUN npm install -g serve

RUN REACT_APP_BACKEND_URL=http://localhost:8080 npm run build

USER appuser
# Command to run the application
CMD ["serve", "-s", "-l", "3000", "build"]
