#!/bin/bash
# firewall_basic.sh - Basic secure firewall setup (UFW)

echo "=== Configuring basic secure firewall (UFW) ==="

# Enable UFW if not active
ufw --force enable

# Default policies
ufw default deny incoming
ufw default allow outgoing

# Allow essential services (modify according to your needs)
ufw allow ssh          # Port 22 (cámbialo si usas otro puerto)
ufw allow 80/tcp       # HTTP
ufw allow 443/tcp      # HTTPS
# ufw allow 53/udp     # DNS (solo si el servidor es DNS)

# Enable logging
ufw logging on

# Reload firewall
ufw reload

echo "Firewall configured successfully!"
echo "Check status with: ufw status verbose"
echo "WARNING: Make sure you have alternative access before applying strict rules."