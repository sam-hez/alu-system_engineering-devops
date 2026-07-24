# Fixes the invalid WordPress PHP file reference that causes an HTTP 500 error.
exec { 'fix-wordpress-php-file-reference':
  command => '/bin/sed -i s/class-wp-locale.phpp/class-wp-locale.php/ /var/www/html/wp-settings.php',
  onlyif  => '/bin/grep -q class-wp-locale.phpp /var/www/html/wp-settings.php',
}
