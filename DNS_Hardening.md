# DNS Security Hardening Guide

Practical guide to secure DNS configuration and reduce common DNS-based attacks.

### Why DNS Hardening Matters
DNS is one of the most targeted services. Proper configuration prevents cache poisoning, amplification attacks, and data exfiltration.

### Recommended Configurations

#### 1. Basic DNS Resolver Hardening (Unbound or BIND)
- Disable recursion for external queries
- Allow recursion only from trusted networks
- Enable DNSSEC validation
- Use rate limiting

#### 2. Firewall Rules for DNS
```bash
# Allow DNS queries only from trusted IPs
iptables -A INPUT -p udp --dport 53 -s 192.168.0.0/16 -j ACCEPT
iptables -A INPUT -p udp --dport 53 -j DROP