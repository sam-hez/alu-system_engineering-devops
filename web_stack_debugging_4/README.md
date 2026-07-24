# Web Stack Debugging 4

This project diagnoses Nginx failures under concurrent load using
ApacheBench and server logs.

The supplied init configuration gives Nginx an open-file limit that is
too low for a benchmark using 100 concurrent clients. The Puppet
manifest sets `ULIMIT` to `-n 8192` in `/etc/default/nginx` and restarts
Nginx so the corrected process limit takes effect.
