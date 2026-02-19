# Wireshark Filters

DNS Traffic:

dns

---

HTTP Traffic:

http

---

TCP Handshake:

tcp.flags.syn == 1 and tcp.flags.ack == 0

---

SSH Traffic:

tcp.port == 22

---

Repeated DNS Queries:

dns && ip.addr == 192.168.56.40