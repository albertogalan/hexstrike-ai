#!/bin/bash
set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}🚀 Starting HexStrike AI Server...${NC}"

# Wait for dependencies (if using external services)
if [ "$WAIT_FOR_POSTGRES" = "true" ]; then
    echo -e "${YELLOW}⏳ Waiting for PostgreSQL...${NC}"
    while ! nc -z postgres 5432; do
        sleep 1
    done
    echo -e "${GREEN}✅ PostgreSQL is ready${NC}"
fi

if [ "$WAIT_FOR_REDIS" = "true" ]; then
    echo -e "${YELLOW}⏳ Waiting for Redis...${NC}"
    while ! nc -z redis 6379; do
        sleep 1
    done
    echo -e "${GREEN}✅ Redis is ready${NC}"
fi

# Create necessary directories
mkdir -p /app/data /app/logs /app/cache /app/results /app/tmp

# Set proper permissions
chown -R hexstrike:hexstrike /app/data /app/logs /app/cache /app/results /app/tmp

# Update security tools databases
echo -e "${YELLOW}🔄 Updating security tools databases...${NC}"

# Update Nuclei templates
if command -v nuclei &> /dev/null; then
    nuclei -update-templates -silent || true
fi

# Update Nmap scripts
if command -v nmap &> /dev/null; then
    nmap --script-updatedb || true
fi

# Initialize application
echo -e "${YELLOW}🔧 Initializing HexStrike AI...${NC}"

# Run database migrations (if applicable)
if [ -f "/app/migrations.py" ]; then
    python /app/migrations.py
fi

# Start the application
echo -e "${GREEN}🎯 HexStrike AI Server Ready!${NC}"
echo -e "${GREEN}📡 API: http://localhost:8000${NC}"
echo -e "${GREEN}🌐 Web: http://localhost:8080${NC}"

# Execute the main command
exec "$@"