# Firewall

This project configures UFW on web-01 to deny incoming traffic by
default while allowing TCP ports 22 for SSH, 80 for HTTP, and 443
for HTTPS.

The SSH rule must be added before enabling UFW to avoid losing remote
access to the server.