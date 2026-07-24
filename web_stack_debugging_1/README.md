# Web Stack Debugging 1

This project diagnoses an Nginx server that is not accepting HTTP
connections on port 80.

`0-nginx_likes_port_80` corrects the default virtual host so Nginx
listens on port 80 across all active IPv4 interfaces, then restarts the
service.
