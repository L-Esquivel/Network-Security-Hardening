# Before vs After Hardening Comparison

This document shows the security improvements achieved by applying the hardening measures in this repository.

| Security Aspect              | Before Hardening                          | After Hardening                                      | Impact Level |
|-----------------------------|-------------------------------------------|------------------------------------------------------|--------------|
| SSH Access                  | Password authentication + Root login allowed | Key-based only, Root disabled, Fail2Ban enabled     | High         |
| Firewall Policy             | Default allow or weak rules               | Default deny + only necessary ports open            | High         |
| Open Ports                  | Multiple unnecessary ports exposed        | Minimal attack surface (only required services)     | High         |
| DNS Configuration           | Open recursion, no DNSSEC                 | Recursion restricted + DNSSEC validation            | Medium-High  |
| System Updates              | Manual and irregular                      | Automated security updates + cleanup                | Medium       |
| Logging & Monitoring        | Basic or disabled                         | Detailed logging + basic alerting                   | Medium       |
| User Accounts               | Weak passwords, unnecessary accounts      | Strong policies + account auditing                  | High         |
| Overall Attack Surface      | Large                                     | Significantly reduced                                | High         |
| Compliance Readiness        | Low                                       | Closer to CIS Level 1 / basic audit ready           | High         |

### Key Takeaways
- A few hours of systematic hardening can dramatically reduce risk.
- Most common attack vectors (SSH brute force, port scanning, DNS abuse) are mitigated.
- The server becomes much more resistant to automated attacks and script kiddies.

**Recommendation**: Apply changes gradually and always test in a staging environment first.