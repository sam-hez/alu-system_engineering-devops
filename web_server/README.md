# Web Server

This project covers web servers, HTTP, DNS, Nginx, process management,
file transfer with SCP, redirects, error pages, and server automation.

## Task 0

`0-transfer_file` transfers a local file to a remote user's home
directory using SCP and a specified SSH private key.

## Task 1

`1-install_nginx_web_server` updates the package index, installs Nginx
non-interactively, and configures the default page to contain
`Holberton School for the win!`. It uses the `service` command to
restart Nginx without `systemctl`.

## Task 2

`2-setup_a_domain_name` records the root domain `samhez.tech`. Its DNS
zone must contain an A record that resolves the root domain to the
web-01 IPv4 address.

## Task 3

`3-redirection` installs Nginx, creates the required homepage, and adds
a permanent redirect from `/redirect_me` to the specified YouTube URL.
The Nginx `permanent` rewrite flag returns HTTP status 301.

## Task 4

`4-not_found_page_404` configures a fresh Nginx server with the
homepage and permanent redirect from the earlier tasks, then installs a
custom error page containing `Ceci n'est pas une page`. Missing
resources return that content with HTTP status 404.

## Task 5

`5-design_a_beautiful_404_page.html` is a responsive, accessible custom
error page built with self-contained HTML and CSS. It preserves the
required `Ceci n'est pas une page` text and links visitors back to the
website root.
