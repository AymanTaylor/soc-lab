# TCP Analysis Notes

## Observe

- SYN packets.
- SYN ACK responses.
- ACK completion.

Normal flow:

Client -> SYN  
Server -> SYN ACK  
Client -> ACK

---

## Suspicious Indicators

- many SYN attempts
- repeated resets
- fast reconnect attempts

Possible brute force behavior.