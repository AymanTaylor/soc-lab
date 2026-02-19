# Lab Setup

## Ubuntu Server

Install services:

sudo apt update
sudo apt install apache2 openssh-server tcpdump -y

Verify:

systemctl status apache2
systemctl status ssh

---

## Kali Linux

Install tools:

sudo apt update
sudo apt install hydra nmap tcpdump -y

---

## Network Mode

VirtualBox:

Host Only Adapter.

Ensure VMs can ping each other.

Example:

ping 192.168.56.30