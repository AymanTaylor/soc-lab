#!/bin/bash

SERVER=192.168.56.30

echo "HTTP Requests"

for i in {1..20}
do
 curl http://$SERVER > /dev/null 2>&1
 sleep 2
done

echo "DNS Queries"

for i in {1..20}
do
 nslookup google.com > /dev/null
 sleep 1
done

echo "SSH Test"

ssh user@$SERVER exit