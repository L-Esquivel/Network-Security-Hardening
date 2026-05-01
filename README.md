# Network Security Hardening Guide & Scripts

**Practical documentation, checklists, and scripts for hardening Linux servers and network infrastructure.**

Repository focused on reducing the attack surface through proven security configurations, DNS hardening, firewall rules, and system optimization.

### 🎯 Objective
Provide actionable, real-world hardening guides and automation scripts to help secure servers following industry best practices (CIS Benchmarks inspired).

### 📋 What's Included
- **HARDENING_CHECKLIST.md** – Step-by-step hardening checklist
- **DNS_Hardening.md** – Secure DNS configuration guide
- **Before-After_Comparison.md** – Security improvement comparison
- **Scripts/** – Ready-to-use automation scripts

### ✨ Key Hardening Areas Covered
- SSH security (key-only authentication, Fail2Ban)
- Firewall configuration (default deny policy)
- DNS security and recursion control
- System updates and cleanup
- User account and permission hardening
- Logging and basic monitoring

### 🚀 How to Use

```bash
# Clone the repository
git clone https://github.com/L-Esquivel/Network-Security-Hardening.git
cd Network-Security-Hardening

# Explore the checklist
cat HARDENING_CHECKLIST.md

# Make scripts executable
chmod +x Scripts/*.sh

# Example: Run SSH hardening (test first!)
cd Scripts
./harden_ssh.sh

---
*This repository is part of a specialized portfolio in IT Operations and Cybersecurity, demonstrating the ability to build custom security tooling*.
