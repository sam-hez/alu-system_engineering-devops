# Web Stack Debugging 4

This project diagnoses Nginx failures under concurrent load using
ApacheBench and server logs.

The supplied configuration limits each Nginx worker to 15 simultaneous
connections, which is insufficient for a benchmark using 100 concurrent
clients. The Puppet manifest raises `worker_connections` to 1024 and
refreshes Nginx when that configuration changes. A conditional guard
makes the correction idempotent.
