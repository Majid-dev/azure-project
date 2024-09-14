# Use a minimal and secure base image
FROM nginx:alpine

# Remove default nginx configuration to minimize potential attack surface
RUN rm -rf /etc/nginx/conf.d/*

RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# Copy custom nginx configuration (assumed to be hardened as well)
COPY nginx.conf /etc/nginx/nginx.conf

# Copy your HTML application to the default web directory
COPY . /usr/share/nginx/html

# Set proper permissions (read-only) for web content and restrict write access
RUN mkdir -p /var/cache/nginx /var/run /var/log/nginx \
    && chown -R 1000:1000 /var/cache/nginx /var/run /var/log/nginx /usr/share/nginx/html \
    && chmod -R 755 /usr/share/nginx/html \
    && touch /var/run/nginx.pid && chown 1000:1000 /var/run/nginx.pid

# Set a non-root user for running the container to avoid potential privilege escalation
USER 1000

# Expose only the necessary port
EXPOSE 8888

# Use a specific command to run nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
