# Raises the Nginx worker connection limit to handle concurrent HTTP requests.
exec { 'raise-nginx-worker-connections':
  command  => 'sed -ri "s/worker_connections[[:space:]]+[0-9]+;/worker_connections 1024;/" /etc/nginx/nginx.conf && service nginx restart',
  path     => ['/bin', '/usr/bin', '/sbin', '/usr/sbin'],
  provider => shell,
}
