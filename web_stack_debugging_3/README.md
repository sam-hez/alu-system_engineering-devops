# Web Stack Debugging 3

This project uses system-call tracing to diagnose an HTTP 500 error in a
WordPress installation running on a LAMP stack.

The trace reveals that WordPress attempts to load
`class-wp-locale.phpp`, which does not exist. The Puppet manifest
corrects that reference to `class-wp-locale.php`. Its conditional guard
makes the repair idempotent by running it only while the incorrect
reference remains in `wp-settings.php`.
