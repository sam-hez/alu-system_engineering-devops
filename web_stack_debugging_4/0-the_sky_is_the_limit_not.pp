# Raises the Nginx worker connection limit to handle concurrent HTTP requests.
exec { 'raise-nginx-worker-connections':
  command  => 'sed -i "s/worker_connections 15;/worker_connections 1024;/" /etc/nginx/nginx.conf',
  onlyif   => 'grep -q "worker_connections 15;" /etc/nginx/nginx.conf',
  path     => ['/bin', '/usr/bin'],
  provider => shell,
  notify   => Service['nginx'],
}

service { 'nginx':
  ensure => running,
}
