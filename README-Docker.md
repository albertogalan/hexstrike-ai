# HexStrike AI Docker Setup

This guide explains how to run HexStrike AI using Docker and Docker Compose.

## Quick Start

1. **Clone and navigate to the project:**
   ```bash
   cd hexstrike-ai
   ```

2. **Copy environment configuration:**
   ```bash
   cp .env.example .env
   # Edit .env with your configuration
   ```

3. **Build and start services:**
   ```bash
   docker-compose up -d
   ```

4. **Access the services:**
   - HexStrike AI API: http://localhost:8000
   - Web Interface: http://localhost:8080
   - Health Check: http://localhost:8000/health

## Configuration Options

### Environment Variables

Edit `.env` file to configure:

- **Database Settings**: PostgreSQL connection details
- **Redis Settings**: Cache and session storage
- **API Keys**: External service integrations
- **Security**: JWT secrets and encryption keys

### Service Profiles

Choose which services to run:

```bash
# Run only HexStrike AI (minimal)
docker-compose up hexstrike-ai

# Run with database and cache
docker-compose up hexstrike-ai redis postgres

# Run full stack with nginx
docker-compose up
```

## Docker Commands

### Basic Operations
```bash
# Start services
docker-compose up -d

# View logs
docker-compose logs -f hexstrike-ai

# Stop services
docker-compose down

# Rebuild after code changes
docker-compose build hexstrike-ai
docker-compose up -d hexstrike-ai
```

### Maintenance
```bash
# Update security tool databases
docker-compose exec hexstrike-ai nuclei -update-templates
docker-compose exec hexstrike-ai nmap --script-updatedb

# Access container shell
docker-compose exec hexstrike-ai bash

# Clean up volumes (WARNING: deletes data)
docker-compose down -v
```

## Volume Mounts

Data is persisted in Docker volumes:

- `hexstrike-data`: Application data and configurations
- `hexstrike-cache`: Cached results and temporary files
- `hexstrike-logs`: Application and tool logs
- `hexstrike-results`: Scan results and reports
- `postgres-data`: Database storage
- `redis-data`: Cache storage

## Security Considerations

1. **Change default passwords** in `.env` file
2. **Use HTTPS in production** with proper SSL certificates
3. **Restrict network access** using firewall rules
4. **Regular updates** of base images and security tools
5. **Monitor logs** for suspicious activities

## Troubleshooting

### Common Issues

1. **Port conflicts:**
   ```bash
   # Check if ports are in use
   netstat -tlnp | grep :8000
   
   # Change ports in docker-compose.yml
   ports:
     - "8001:8000"  # Use different external port
   ```

2. **Permission errors:**
   ```bash
   # Fix volume permissions
   docker-compose exec hexstrike-ai chown -R hexstrike:hexstrike /app/data
   ```

3. **Out of memory:**
   ```bash
   # Increase memory limits in docker-compose.yml
   mem_limit: 4g
   ```

4. **Tool not found:**
   ```bash
   # Check tool installation
   docker-compose exec hexstrike-ai which nmap
   
   # Install missing tools
   docker-compose exec hexstrike-ai apt-get update
   docker-compose exec hexstrike-ai apt-get install -y <tool-name>
   ```

### Debugging

1. **Check container status:**
   ```bash
   docker-compose ps
   ```

2. **View detailed logs:**
   ```bash
   docker-compose logs --tail=100 hexstrike-ai
   ```

3. **Monitor resource usage:**
   ```bash
   docker stats
   ```

4. **Test health endpoint:**
   ```bash
   curl http://localhost:8000/health
   ```

## Production Deployment

For production deployment:

1. **Use environment-specific compose files:**
   ```bash
   docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d
   ```

2. **Enable SSL/TLS:**
   - Configure nginx with SSL certificates
   - Use Let's Encrypt for free certificates

3. **Set up monitoring:**
   - Configure log aggregation
   - Set up health check monitoring
   - Enable metrics collection

4. **Backup strategy:**
   - Regular database backups
   - Volume snapshots
   - Configuration backups

## Development

For development with live code reloading:

```bash
# Mount source code as volume
docker-compose -f docker-compose.yml -f docker-compose.dev.yml up
```

This setup provides a complete containerized environment for running HexStrike AI with all necessary dependencies and security tools.