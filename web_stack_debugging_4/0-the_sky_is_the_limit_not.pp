# Raises Nginx's open-file limit to handle concurrent HTTP requests.
exec { 'raise-nginx-open-file-limit':
  command  => 'sed -i "s/^ULIMIT=.*/ULIMIT=\"-n 8192\"/" /etc/default/nginx && service nginx restart',
  path     => ['/bin', '/usr/bin', '/sbin', '/usr/sbin'],
  provider => shell,
}
