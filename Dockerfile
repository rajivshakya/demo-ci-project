# Intentionally vulnerable image for testing

FROM ubuntu:18.04

# Disable interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install outdated & vulnerable packages
RUN apt-get update && apt-get install -y \
    openssl \
    curl \
    wget \
    libssl1.1 \
    apache2 \
    && rm -rf /var/lib/apt/lists/*

# Expose port (not required, just realistic)
EXPOSE 80

# Start apache (dummy)
CMD ["apachectl", "-D", "FOREGROUND"]
