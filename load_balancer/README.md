# Load Balancer

This project introduces load balancing and redundancy using two Nginx
web servers and HAProxy.

## Task 0

`0-custom_http_response_header` installs Nginx and configures the
`X-Served-By` response header. The header value identifies the hostname
of the web server that handled the request.

## Task 1

`1-install_load_balancer` installs HAProxy on lb-01 and distributes HTTP
requests between web-01 and web-02 using round-robin balancing and
backend health checks.
