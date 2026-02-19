# Packet Flow Lab

## Overview

Packet Flow Lab simulates normal and suspicious network behavior to train packet analysis and SOC investigation skills.

The lab focuses on recognizing traffic patterns using packet captures and applying investigation logic.

---

## Environment

Recommended setup:

- Ubuntu Server VM (target)
- Kali Linux VM (attacker)
- Optional Windows VM

VirtualBox Host-Only Network recommended.

Example addressing:

Client : 192.168.56.20  
Server : 192.168.56.30  
Attacker : 192.168.56.40

---

## Tools

- tcpdump
- Wireshark
- curl
- nslookup
- hydra

---

## Workflow

1. Capture normal traffic.
2. Generate browsing and DNS traffic.
3. Capture suspicious traffic.
4. Simulate brute force and DNS beaconing.
5. Analyze PCAP files.

