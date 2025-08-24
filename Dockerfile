FROM python:3.11-slim

# Set environment variables
ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1
ENV DEBIAN_FRONTEND=noninteractive

# Create app user
RUN groupadd -r hexstrike && useradd -r -g hexstrike -d /app -s /bin/bash hexstrike

# Install system dependencies and available security tools
RUN apt-get update && apt-get install -y \
    # Build tools
    build-essential \
    gcc \
    g++ \
    make \
    cmake \
    git \
    curl \
    wget \
    unzip \
    zip \
    tar \
    gzip \
    # Network tools
    nmap \
    netcat-traditional \
    dnsutils \
    whois \
    traceroute \
    tcpdump \
    tshark \
    wireshark-common \
    # Essential security tools (available in repos)
    john \
    hashcat \
    hydra

RUN apt-get install -y \
    masscan \
    # Network enumeration
    smbclient \
    nbtscan \
    arp-scan \
    # Password tools
    medusa \
    # Binary analysis (correct package names)
    gdb \
    binutils \
    binwalk \
    xxd \
    file \
    # Forensics tools
    foremost \
    scalpel \
    sleuthkit \
    exiftool \
    steghide \
    # System tools
    procps \
    psmisc \
    htop \
    vim
RUN apt-get install -y \
    less \
    # Browser dependencies
    # Development tools
    python3-dev \
    python3-pip \
    golang-go \
    nodejs \
    npm \
    # Additional libraries
    libssl-dev \
    libffi-dev \
    libxml2-dev \
    libxslt1-dev \
    libjpeg-dev \
    libpng-dev \
    # Clean up
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install Go-based security tools
RUN export GOPATH=/opt/go && export PATH=$PATH:/usr/bin/go:$GOPATH/bin && \
    mkdir -p $GOPATH && \
    # Install modern security tools written in Go
    go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest && \
    go install -v github.com/ffuf/ffuf@latest && \
    go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest && \
    go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest && \
    go install -v github.com/tomnomnom/waybackurls@latest && \
    go install -v github.com/projectdiscovery/katana/cmd/katana@latest && \
    go install -v github.com/lc/gau/v2/cmd/gau@latest && \
    go install -v github.com/tomnomnom/anew@latest && \
    go install -v github.com/tomnomnom/qsreplace@latest && \
    go install -v github.com/hakluke/hakrawler@latest && \
    # Move binaries to system path
    cp $GOPATH/bin/* /usr/local/bin/ 2>/dev/null || true

# Install Python-based security tools
RUN pip install --no-cache-dir \
    # Core tools
    sqlmap \
    dirsearch \
    wafw00f \
    # Web security
    arjun \
    paramiko \
    requests \
    beautifulsoup4 \
    # Cloud security
    checkov \
    # Binary analysis
    pwntools \
    ropper \
    # Forensics
    volatility3 \
    && pip install --no-cache-dir git+https://github.com/devanshbatham/ParamSpider.git

# Set up working directory
WORKDIR /app

# Copy requirements first for better layer caching
COPY requirements.txt pyproject.toml ./

# Install Python dependencies
RUN pip install --no-cache-dir --upgrade pip setuptools wheel && \
    pip install --no-cache-dir -r requirements.txt && \
    pip install --no-cache-dir -e .

# Copy application files
COPY hexstrike_server.py hexstrike_mcp.py ./
COPY hexstrike-ai-mcp.json ./

# Create necessary directories
RUN mkdir -p /app/data /app/logs /app/cache /app/tmp /app/results && \
    chown -R hexstrike:hexstrike /app

# Switch to non-root user
USER hexstrike

# Set Chrome/Chromium options for headless operation
ENV CHROME_BIN=/usr/bin/chromium-browser
ENV CHROMEDRIVER_PATH=/usr/bin/chromedriver

# Expose ports
EXPOSE 8000 8080 8090

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
    CMD curl -f http://localhost:8000/health || exit 1

# Start the HexStrike AI server
CMD ["python", "hexstrike_server.py", "--port", "8000"]
