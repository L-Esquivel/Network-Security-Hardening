#!/bin/bash
# update_system.sh - Secure system update and cleanup

echo "=== Starting secure system update ==="

# Update package lists
apt update

# Upgrade installed packages
apt upgrade -y

# Remove unnecessary packages
apt autoremove -y
apt autoclean

# Update security database (for rkhunter, clamav, etc.)
freshclam 2>/dev/null || echo "freshclam not installed or skipped"

echo "System updated and cleaned successfully!"
echo "Consider rebooting if kernel was updated."