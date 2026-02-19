# Investigation Findings

## Incident Summary

Multiple SSH login attempts detected.

---

## Evidence

Repeated TCP connections to port 22.

High SYN packet frequency.

---

## Source

192.168.56.40

---

## Behavior

Password brute force activity.

---

## MITRE ATT&CK

T1110 — Brute Force.

---

## Recommendation

Block source IP.

Enable account lockout policy.

Review authentication logs.