# Use the official Bun image as the base
FROM oven/bun:latest

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and bun.lock (if present)
COPY package.json bun.lock ./

# Install dependencies
RUN bun install

# Copy the rest of the application code
COPY . .

# Expose the port your dev server uses
EXPOSE 5173

# Start the development server with hot reloading
CMD ["bun", "run", "dev", "--", "--host"]