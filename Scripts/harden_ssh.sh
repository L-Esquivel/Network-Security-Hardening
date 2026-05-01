#!/bin/bash
# harden_ssh.sh - Basic SSH Hardening Script

echo "=== Starting SSH Hardening ==="

# Backup original config
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak

# Apply secure settings
sed -i 's/#PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
sed -i 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/' /etc/ssh/sshd_config

echo "SSH configuration updated."
echo "Remember to restart SSH service: systemctl restart sshd"
echo "And test access with your SSH key before logging out!"