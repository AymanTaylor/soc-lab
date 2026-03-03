# Packet Flow Analysis

[![Python](https://img.shields.io/badge/Built%20With-Python-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)
[![Platform](https://img.shields.io/badge/Platform-Cross--Platform-6DB33F?style=for-the-badge&logo=linux&logoColor=white)](#)
[![License](https://img.shields.io/badge/License-Unlicense-lightgrey?style=for-the-badge)](#)
[![Status](https://img.shields.io/badge/Status-Production--Ready-success?style=for-the-badge)](#)

> Analyze and visualize network packet flows to understand protocol behavior, traffic patterns, and potential anomalies for SOC monitoring.

---

## 1. Mission Brief

SOC teams need hands-on practice analyzing network traffic to detect anomalies, identify suspicious activity, and understand packet-level communications.

**Goal:** Capture, dissect, and visualize packet flows with real-time and offline analysis.

**Success criteria:**

* Accurate identification of packet types and protocols
* Reconstruct communication flows between hosts
* Detect anomalies or suspicious patterns
* Produce clear visualizations and summary reports

---

## 2. Context

* **Target environment:** Linux, Windows, or virtual lab environment
* **Assumptions:**
  * Network traffic is available for capture (pcap files or live capture)
  * Users understand basic networking concepts
* **Constraints:**
  * Lab environment only
  * No production network intrusion
  * Observations are isolated to simulated traffic

---

## 3. System Topology

**Layers:**

* Capture Layer: Tools like tcpdump or Wireshark to capture traffic
* Parsing Layer: Python scripts using scapy or pyshark
* Analysis Layer: Flow reconstruction, protocol summary, anomaly detection
* Visualization Layer: Graphs, charts, and flow diagrams for reporting

**Data Flow Summary:**
Packet capture → Parsing & classification → Flow reconstruction → Visualization & reporting

---

## 4. Design Rationale

* **Stack choice:** Python for parsing flexibility, scapy/pyshark for packet handling
* **Storage model:** CSV/JSON or database for packet metadata
* **Trade-offs:** No full SIEM integration, focus on learning
* **Alternatives rejected:** Heavy enterprise tools; unnecessary for lab exercises

---

## 5. Core Mechanisms

**Mechanism A – Packet Capture**

* Tool: `tcpdump` or `Wireshark`
* Logic: Capture live network traffic or read pcap files
* Output: Raw packet data for analysis

**Mechanism B – Packet Parsing**

* Script: `parse_packets.py`
* Logic: Extract headers, protocol info, source/destination, payload metadata
* Output: Structured dataset (CSV/JSON)

**Mechanism C – Flow Reconstruction**

* Script: `reconstruct_flows.py`
* Logic: Group packets by source/destination and protocol, calculate session statistics
* Output: Ordered communication flows

**Mechanism D – Anomaly Detection**

* Script: `detect_anomalies.py`
* Logic: Identify unusual ports, high packet rates, malformed packets
* Output: List of suspicious flows or packets

**Mechanism E – Visualization & Reporting**

* Script: `visualize_flows.py`
* Logic: Generate graphs for protocol usage, top talkers, and flow timelines
* Output: Charts, flow diagrams, and CSV reports

---

## 6. Data Contracts

**Primary Entities:**

`Packet` – timestamp, src_ip, dst_ip, src_port, dst_port, protocol, length  
`Flow` – src_ip, dst_ip, protocol, packet_count, byte_count, duration  
`Anomaly` – flow_id, description, severity, detected_at  

**Integrity Rules:**

* Valid IP and port ranges
* Consistent timestamp ordering
* Protocol-specific validation

---

## 7. Execution Model

* Stateless parsing per capture file
* Scripts can run sequentially or independently
* Outputs stored for reporting and visualization

**Resource profile:**

* CPU: Moderate for large pcap parsing
* Memory: Depends on capture size
* I/O: Read/write for pcap and output files

---

## 8. Setup

**Install dependencies:**

```bash
pip install scapy pyshark matplotlib pandas
````

**Run scripts:**

```bash
python parse_packets.py capture.pcap
python reconstruct_flows.py parsed_packets.json
python detect_anomalies.py flows.json
python visualize_flows.py flows.json
```

---

## 9. Observability

* Real-time monitoring of packet flow statistics
* Flow summaries provide communication overview
* Anomalies flagged automatically
* Graphical reports for presentations and SOC training

---

## 10. Failure Surfaces

* **Malformed pcap files:** Script errors on invalid input
* **High traffic volume:** Memory issues during parsing
* **Unsupported protocols:** Ignored or misclassified packets

**Mitigations:** Validate input files, segment large captures, update parser with additional protocols

---

## 11. Validation Strategy

* Unit: Test parsing of individual protocols
* Integration: Full capture → parse → flow → visualization pipeline
* Edge-case: Broadcast traffic, fragmented packets
* Coverage: ≥90% of common protocols and flows

---

## 12. Operational Limits

* Lab-only environment
* Focused on TCP/IP, UDP, DNS, HTTP/HTTPS
* Not a production-grade intrusion detection system

---

## Maintainer

Ayman Taylor


