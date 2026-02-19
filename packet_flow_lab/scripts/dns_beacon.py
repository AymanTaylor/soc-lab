import subprocess
import time

DOMAIN = "test-beacon-domain.com"

print("DNS beacon simulation started")

while True:
    subprocess.run(["nslookup", DOMAIN])
    time.sleep(15)