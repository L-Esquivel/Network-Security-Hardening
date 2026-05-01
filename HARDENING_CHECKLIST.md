# Network & Server Hardening Checklist

Practical checklist to reduce attack surface on Linux servers and network devices.

**Status Legend**: ☐ Not done | ✅ Done | ⚠️ Partial

## 1. Initial Setup
- [ ] Update system packages (`apt update && apt upgrade -y` or `yum update`)
- [ ] Enable automatic security updates
- [ ] Change default SSH port (optional but recommended)
- [ ] Disable root SSH login

## 2. SSH Hardening
- [ ] Use SSH key authentication only (disable password login)
- [ ] Set `PermitRootLogin no`
- [ ] Set `PasswordAuthentication no`
- [ ] Limit users with `AllowUsers`
- [ ] Install and configure Fail2Ban

## 3. Firewall Configuration
- [ ] Implement default deny policy
- [ ] Allow only necessary ports (22, 80, 443, etc.)
- [ ] Use UFW, firewalld or iptables
- [ ] Block invalid packets and port scanning

## 4. DNS Security
- [ ] Restrict DNS recursion
- [ ] Enable DNSSEC validation
- [ ] Disable zone transfers
- [ ] Use trusted DNS resolvers (1.1.1.1, 8.8.8.8)

## 5. User & Access Control
- [ ] Enforce strong password policy
- [ ] Implement account lockout after failed attempts
- [ ] Remove unnecessary users and groups
- [ ] Use sudo with timeout

## 6. Logging & Monitoring
- [ ] Enable detailed logging
- [ ] Install Logwatch or similar
- [ ] Monitor failed login attempts
- [ ] Set up basic intrusion detection (AIDE or Tripwire)

## 7. Additional Hardening
- [ ] Disable IPv6 if not needed
- [ ] Set proper file permissions (umask 027)
- [ ] Install security tools (ClamAV, rkhunter, lynis)
- [ ] Regular vulnerability scanning
