# Redis Service

Production-ready Redis service with persistence and security features.

## Environment Variables

- `REDIS_PASSWORD`: Required. Password for Redis authentication
- `REDIS_MAX_MEMORY`: Optional. Maximum memory limit (default: 256mb)

## Features

- Persistence enabled with AOF
- Memory management with LRU eviction
- Security with password authentication
- Health checks included
- Non-root user for security

## Usage

```bash
# Build the image
docker build -t my-redis-service .

# Run the container
docker run -d \
  -e REDIS_PASSWORD=your_password \
  -v redis_data:/data \
  -p 6379:6379 \
  my-redis-service
``` 