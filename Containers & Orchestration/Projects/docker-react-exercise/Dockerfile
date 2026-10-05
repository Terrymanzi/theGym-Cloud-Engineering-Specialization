FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV HOST=0.0.0.0

# Install tools
RUN apt-get update && \
    apt-get install -y \
    git \
    curl \
    ca-certificates && \
    rm -rf /var/lib/apt/lists/*

# Install Node.js 20
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y nodejs

# Clone React project
WORKDIR /app

RUN git clone https://github.com/taniarascia/react-tutorial.git .

# Install dependencies
RUN npm install

# Expose React port
EXPOSE 3000

# globally environment variable to fix npm conflicts
ENV NODE_OPTIONS=--openssl-legacy-provider

# Start React app
CMD ["npm", "start"]

# # alternatively explicit invoked shell to parse the environment variable assignment
# CMD ["sh", "-c", "NODE_OPTIONS=--openssl-legacy-provider npm start"]