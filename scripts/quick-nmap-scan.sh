#!/bin/bash
# quick-nmap-scan.sh
# A simple Nmap script to scan your local network

echo "Starting quick Nmap scan..."
nmap -T4 -F 192.168.1.0/24 -oN ../logs/quick-scan.txt
echo "Scan complete. Results saved to logs/quick-scan.txt"
