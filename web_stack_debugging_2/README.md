# Web Stack Debugging 2

This project explores Linux users, privileges, and the importance of
running services with the least privilege they require.

## Task 0

`0-iamsomeoneelse` accepts a username and uses `sudo` to execute
`whoami` as that user without changing the identity of the calling shell.

## Task 1

`1-run_nginx_as_nginx` configures Nginx to listen on IPv4 port 8080 and
launches both its master and worker processes as the unprivileged
`nginx` user.
