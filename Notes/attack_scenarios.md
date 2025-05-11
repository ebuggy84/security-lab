# Attack Scenario: Brute Force and Exploitation Simulation

## 🧠 Objective
Simulate a brute force attack using Kali Linux against a vulnerable target (Metasploitable), capture the activity in Splunk, and validate alerts.

---

## 🖥️ Lab Setup
- **Kali Linux**: Attack machine
- **Metasploitable 2**: Vulnerable target VM
- **Splunk (on Ubuntu)**: Collect and monitor logs
- **Nessus Essentials**: Vulnerability scan results

---

## ⚔️ Step-by-Step Attack

### 1. Reconnaissance
```bash
nmap -sV -T4 -p- 192.168.1.105

### SSH Brute Force (Hydra)

**Date:** 2025-05-11  
**Tool Used:** Hydra  
**Target:** 192.168.1.105  
**Port:** 22 (SSH)  
**Username:** admin  
**Wordlist:** quicklist.txt (custom, 5 passwords)  
**Result:** ✅ Valid password found using Hydra

**Command:**
```bash
hydra -l admin -P ~/quicklist.txt ssh://192.168.1.105
**Explanation:** This demonstrates how Hydra can identify weak SSH credentials using a small custom wordlist.
```
### Metasploitable 2 Scan - Port Enumeration

**Date:** 2025-05-11  
**Tool Used:** Nmap  
**Command:**
```bash
nmap -sV 192.168.1.107
