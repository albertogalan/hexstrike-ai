# HexStrike AI MCP Security Tools Reference

**Version:** 6.0.0  
**Last Updated:** August 2025  
**Total Tools Supported:** 150+  

## Overview

HexStrike AI MCP provides comprehensive cybersecurity tool management through Model Context Protocol (MCP) integration. This document catalogs all security tools and capabilities available through the HexStrike platform.

## MCP Tool Categories

### Core Security Testing Tools (Direct MCP Integration)

#### Network Reconnaissance
- **nmap_scan** - Enhanced Nmap port scanning with real-time logging
- **gobuster_scan** - Directory/subdomain brute forcing (dir, dns, vhost modes)
- **nuclei_scan** - Vulnerability scanner with template-based detection
- **dirb_scan** - Directory brute forcing with wordlist support
- **nikto_scan** - Web vulnerability scanner with comprehensive checks

#### Web Application Security
- **sqlmap_scan** - Advanced SQL injection detection and exploitation
- **wpscan_analyze** - WordPress vulnerability scanning and enumeration
- **feroxbuster_scan** - High-performance directory/file discovery
- **ffuf_scan** - Fast web fuzzer for content discovery

#### Password & Authentication
- **hydra_attack** - Network authentication brute forcing
- **john_crack** - Hash cracking with custom wordlists and formats
- **hashcat_attack** - GPU-accelerated hash cracking

#### Network Enumeration
- **enum4linux_scan** - SMB/NetBIOS enumeration for Windows systems
- **smbclient_enum** - SMB share enumeration and access testing
- **snmp_walk** - SNMP enumeration and information gathering

#### Cloud Security Assessment
- **prowler_scan** - AWS/Azure/GCP security compliance scanning
- **trivy_scan** - Container and filesystem vulnerability scanning
- **scout_suite_assessment** - Multi-cloud security assessment
- **cloudmapper_analysis** - AWS network visualization and security analysis
- **pacu_exploitation** - AWS exploitation framework
- **kube_hunter_scan** - Kubernetes penetration testing
- **kube_bench_cis** - CIS Kubernetes benchmark compliance
- **docker_bench_security_scan** - Docker security assessment
- **clair_vulnerability_scan** - Container vulnerability analysis
- **falco_runtime_monitoring** - Runtime security monitoring
- **checkov_iac_scan** - Infrastructure as Code security scanning
- **terrascan_iac_scan** - Terraform/IaC security analysis

#### Exploitation & Post-Exploitation
- **metasploit_run** - Metasploit module execution with options
- **msfvenom_generate** - Payload generation for exploitation
- **reverse_shell_generate** - Custom reverse shell payload creation

#### File & System Operations
- **create_file** - Create files on HexStrike server
- **modify_file** - Modify existing files with append support
- **delete_file** - Delete files and directories
- **list_files** - Directory listing and file enumeration
- **generate_payload** - Large payload generation for testing
- **install_python_package** - Python package management
- **execute_python_script** - Python script execution in isolated environments

#### AI-Enhanced Intelligence Tools
- **analyze_target_ai** - AI-powered target profiling and analysis
- **intelligent_scan_ai** - Automated tool selection and chaining
- **detect_technologies_ai** - Technology stack detection with recommendations
- **ai_reconnaissance_workflow** - Comprehensive recon with AI orchestration
- **ai_vulnerability_assessment** - Intelligent vulnerability prioritization
- **generate_attack_chain_ai** - AI-generated attack methodology
- **ctf_challenge_solver** - Automated CTF challenge analysis
- **penetration_test_planner** - AI-driven pentest planning
- **advanced_osint_ai** - Enhanced OSINT with AI correlation

## Tool Categories by Security Domain

### 1. Essential Tools (Core Security Testing)
- **nmap** - Network discovery and port scanning
- **gobuster** - Directory/file brute forcing
- **dirb** - Web content discovery
- **nikto** - Web vulnerability scanner  
- **sqlmap** - SQL injection testing
- **hydra** - Network authentication brute forcing
- **john** - Password hash cracking
- **hashcat** - Advanced hash cracking

### 2. Network Tools (Infrastructure Testing)
- **rustscan** - Ultra-fast port scanner
- **masscan** - High-speed port scanner
- **autorecon** - Automated reconnaissance
- **nbtscan** - NetBIOS name scanner
- **arp-scan** - ARP-based network discovery
- **responder** - LLMNR/NBT-NS/mDNS poisoner
- **nxc** - Network execution tool
- **enum4linux-ng** - Enhanced SMB enumeration
- **rpcclient** - RPC client for Windows
- **enum4linux** - Classic SMB enumeration

### 3. Web Security Tools (Application Testing)
- **ffuf** - Fast web fuzzer
- **feroxbuster** - Directory/content discovery
- **dirsearch** - Web path discovery
- **dotdotpwn** - Directory traversal fuzzer
- **xsser** - XSS detection and exploitation
- **wfuzz** - Web application fuzzer
- **gau** - URL discovery from web archives
- **waybackurls** - Wayback Machine URL extraction
- **arjun** - HTTP parameter discovery
- **paramspider** - Parameter mining
- **x8** - Hidden parameter discovery
- **jaeles** - Web application scanner
- **dalfox** - XSS scanner and exploitation
- **httpx** - HTTP toolkit for probing
- **wafw00f** - Web application firewall detection
- **burpsuite** - Web application security testing
- **zaproxy** - OWASP ZAP security scanner
- **katana** - Web crawling and spidering
- **hakrawler** - Web application crawler

### 4. Vulnerability Scanning Tools
- **nuclei** - Template-based vulnerability scanner
- **wpscan** - WordPress security scanner
- **graphql-scanner** - GraphQL security testing
- **jwt-analyzer** - JSON Web Token analyzer

### 5. Password Tools (Credential Testing)
- **medusa** - Parallel brute force authentication
- **patator** - Multi-purpose brute forcer
- **hash-identifier** - Hash type identification
- **ophcrack** - Rainbow table password cracker
- **hashcat-utils** - Hashcat utilities collection

### 6. Binary Analysis Tools (Reverse Engineering)
- **gdb** - GNU Debugger
- **radare2** - Reverse engineering framework
- **binwalk** - Firmware analysis tool
- **ropgadget** - ROP gadget finder
- **checksec** - Binary security checker
- **objdump** - Object file analyzer
- **ghidra** - NSA reverse engineering suite
- **pwntools** - Binary exploitation toolkit
- **one-gadget** - One-shot RCE finder
- **ropper** - ROP/JOP gadget finder
- **angr** - Binary analysis platform
- **libc-database** - Libc version identification
- **pwninit** - Binary exploitation setup

### 7. Forensics Tools (Digital Investigation)
- **volatility3** - Advanced memory forensics
- **vol** - Volatility memory analyzer
- **steghide** - Steganography tool
- **hashpump** - Hash length extension attacks
- **foremost** - File carving tool
- **exiftool** - Metadata extraction
- **strings** - Extract printable strings
- **xxd** - Hex dump utility
- **file** - File type identification
- **photorec** - File recovery tool
- **testdisk** - Partition recovery
- **scalpel** - File carving utility
- **bulk-extractor** - Digital forensics tool
- **stegsolve** - Steganography analysis
- **zsteg** - PNG/BMP steganography
- **outguess** - Steganographic detection

### 8. Cloud Security Tools (Cloud Assessment)
- **prowler** - Multi-cloud security scanner
- **scout-suite** - Multi-cloud auditing
- **trivy** - Container vulnerability scanner
- **kube-hunter** - Kubernetes penetration testing
- **kube-bench** - Kubernetes CIS benchmarks
- **docker-bench-security** - Docker security assessment
- **checkov** - Infrastructure as Code scanner
- **terrascan** - Terraform security scanner
- **falco** - Runtime security monitoring
- **clair** - Container vulnerability analysis

### 9. OSINT Tools (Intelligence Gathering)
- **amass** - Attack surface mapping
- **subfinder** - Subdomain discovery
- **fierce** - DNS reconnaissance
- **dnsenum** - DNS enumeration
- **theharvester** - Email/subdomain harvester
- **sherlock** - Social media username search
- **social-analyzer** - Social media analysis
- **recon-ng** - Web reconnaissance framework
- **maltego** - Link analysis and data mining
- **spiderfoot** - OSINT automation
- **shodan-cli** - Shodan search engine CLI
- **censys-cli** - Censys search platform
- **have-i-been-pwned** - Breach data checker

### 10. Exploitation Tools (Active Testing)
- **metasploit** - Exploitation framework
- **exploit-db** - Exploit database
- **searchsploit** - Local exploit search

### 11. API Testing Tools (API Security)
- **api-schema-analyzer** - API schema analysis
- **postman** - API testing platform
- **insomnia** - REST client
- **curl** - Command line HTTP client
- **httpie** - Human-friendly HTTP client
- **anew** - Append new lines tool
- **qsreplace** - Query string replacer
- **uro** - URL parameter optimizer

### 12. Wireless Tools (Wireless Security)
- **kismet** - Wireless network detector
- **wireshark** - Network protocol analyzer
- **tshark** - Terminal-based Wireshark
- **tcpdump** - Network packet analyzer

### 13. Additional Specialized Tools
- **smbmap** - SMB share enumeration
- **volatility** - Memory forensics
- **sleuthkit** - Digital forensics toolkit
- **autopsy** - Digital forensics platform
- **evil-winrm** - WinRM exploitation
- **paramspider** - Parameter discovery
- **airmon-ng** - Wireless interface management
- **airodump-ng** - Wireless network scanning
- **aireplay-ng** - Wireless packet injection
- **aircrack-ng** - WEP/WPA cracking
- **msfvenom** - Payload generator
- **msfconsole** - Metasploit console
- **graphql-scanner** - GraphQL security scanner
- **jwt-analyzer** - JWT token analyzer

## AI-Enhanced Features

### Intelligent Tool Selection
- **Smart Scanning** - AI automatically selects optimal tools based on target analysis
- **Attack Chain Generation** - AI creates logical attack sequences
- **Parameter Optimization** - AI optimizes tool parameters for maximum effectiveness

### Advanced Workflows
- **Technology Detection** - AI identifies web technologies and suggests appropriate tools
- **Vulnerability Prioritization** - AI ranks findings by exploitability and impact
- **CTF Automation** - AI assists in Capture The Flag challenge solving

### Real-Time Intelligence
- **Adaptive Scanning** - Tools adapt based on discovered information
- **Failure Recovery** - Automatic fallback to alternative tools
- **Result Correlation** - AI correlates findings across multiple tools

## Usage Examples

### Basic Network Scan
```bash
# Through MCP
nmap_scan(target="example.com", scan_type="-sV", ports="1-1000")
```

### Web Application Testing
```bash
# Directory discovery
gobuster_scan(url="https://example.com", mode="dir", wordlist="/usr/share/wordlists/dirb/common.txt")

# Vulnerability scanning
nuclei_scan(target="https://example.com", severity="high,critical")
```

### Cloud Security Assessment
```bash
# AWS security scan
prowler_scan(provider="aws", profile="default", region="us-east-1")

# Container vulnerability scan
trivy_scan(scan_type="image", target="nginx:latest", severity="high,critical")
```

### AI-Enhanced Reconnaissance
```bash
# Intelligent target analysis
analyze_target_ai(target="example.com")

# Automated reconnaissance workflow
ai_reconnaissance_workflow(target="example.com", depth="deep")
```

## Installation Requirements

### Core Tools (Installed via Package Managers)
- **Homebrew** (macOS): `brew install nmap gobuster nikto hydra john hashcat masscan aircrack-ng`
- **APT** (Ubuntu/Debian): `apt install nmap gobuster nikto hydra john hashcat masscan aircrack-ng`
- **Kali Linux**: Most tools pre-installed with `kali-linux-default` package

### Go-Based Tools
```bash
go install github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest
go install github.com/ffuf/ffuf@latest
go install github.com/projectdiscovery/httpx/cmd/httpx@latest
go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go install github.com/tomnomnom/waybackurls@latest
go install github.com/projectdiscovery/katana/cmd/katana@latest
```

### Python-Based Tools
```bash
pip install sqlmap dirsearch wpscan-api
# or with uv
uv tool install sqlmap dirsearch
```

## Security Considerations

### Ethical Usage
- Only use against systems you own or have explicit permission to test
- Comply with local laws and regulations
- Follow responsible disclosure practices
- Respect rate limits and terms of service

### Tool Safety
- Many tools can cause service disruption if misconfigured
- Always test in isolated environments first
- Monitor resource usage during large-scale scans
- Implement proper logging and audit trails

## Integration with Claude Code

### Adding HexStrike MCP
```bash
claude mcp add --scope user hexstrike uv --python 3.10 run /path/to/hexstrike_mcp.py
```

### Available MCP Tools
The HexStrike MCP server exposes 40+ direct tool functions through the Model Context Protocol, enabling seamless integration with AI agents and automated workflows.

## Support and Documentation

- **GitHub Repository**: HexStrike AI project repository
- **Version**: 6.0.0 with enhanced AI capabilities
- **API Endpoint**: http://127.0.0.1:8888 (default)
- **Health Check**: `/health` endpoint for status monitoring

## Tool Status Legend

- ✅ **Available**: Tool is installed and functional
- ⚠️ **Partial**: Tool is installed but may have limited functionality
- ❌ **Missing**: Tool is not installed or not accessible
- 🔄 **Installing**: Tool installation in progress

---

**Disclaimer**: This tool collection is intended for authorized security testing and educational purposes only. Users are responsible for ensuring compliance with applicable laws and ethical guidelines.