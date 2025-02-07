FROM redis:7-alpine

# Copy custom Redis configuration
COPY redis.conf /usr/local/etc/redis/redis.conf

# Create directory for Redis data
RUN mkdir -p /data && chown redis:redis /data

# Set proper permissions
USER redis

CMD ["redis-server", "/usr/local/etc/redis/redis.conf"] 