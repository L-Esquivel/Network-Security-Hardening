# Network Security Hardening Guide & Scripts

**Practical documentation, checklists, and scripts for hardening network infrastructure and servers.**

Repository focused on reducing attack surface through proven security configurations, DNS hardening, firewall rules, and system optimization.

### 🎯 Objective
Provide actionable, real-world hardening guides and automation to help secure Linux servers and network devices following industry best practices (CIS, NIST inspired).

### ✨ Content Included

- **HARDENING_CHECKLIST.md** – Step-by-step checklist
- **DNS_Hardening.md** – Secure DNS configuration
- **Firewall_Examples/** – iptables / firewalld / ufw rules
- **SSH_Hardening/** – Secure SSH setup
- **Scripts/** – Automation scripts (use with caution)
- **Before-After_Comparison.md** – Security improvements examples

### 📋 Main Hardening Checklist (Summary)

- Disable unnecessary services and ports
- Implement strong SSH configuration (key-only, fail2ban)
- DNS security (query restrictions, DNSSEC)
- Firewall rules (default deny policy)
- System updates and automatic security patching
- User account and password policy enforcement
- Logging and monitoring setup

### 🚀 How to Use

```bash
# Clone the repository
git clone https://github.com/L-Esquivel/Network-Security-Hardening.git
cd Network-Security-Hardening

# Explore the main checklist
cat HARDENING_CHECKLIST.md

# Review firewall examples
ls Firewall_Examples/


---
*This repository is part of a specialized portfolio in IT Operations and Cybersecurity, demonstrating the ability to build custom security tooling*.
