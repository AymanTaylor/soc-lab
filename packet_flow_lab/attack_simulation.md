# Attack Simulation

## Normal Traffic

Run:

./generate_normal_traffic.sh

Produces:

- HTTP browsing
- DNS queries
- SSH login

---

## Suspicious Traffic

Run brute force:

./simulate_bruteforce.sh

Simulates:

- password guessing
- repeated SSH attempts

---

## DNS Beacon

Run:

python3 dns_beacon.py

Creates periodic DNS lookups similar to command-and-control traffic.