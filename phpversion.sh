#!/bin/sh

# Set the PHP version as a variable
PHP_VERSION=8.2

printf "Switching current PHP Version to Version $PHP_VERSION with symlinks.\n"
printf "Press any key to continue...\n"

read CONTINUE

printf "Creating backups..."

# Backup original binaries
mv /usr/bin/php /usr/bin/php.backup
mv /usr/bin/php-cgi /usr/bin/php-cgi.backup
# mv /usr/bin/phpize /usr/bin/phpize.backup

printf " done.\n\n"

printf "Creating symlinks..."

# Create symlinks to the plesk ones
ln -s /opt/plesk/php/$PHP_VERSION/bin/php /usr/bin/php
ln -s /opt/plesk/php/$PHP_VERSION/bin/php-cgi /usr/bin/php-cgi

printf " done.\n\n"

printf "Process completed.\n"
printf "PHP version is:\n"

php -v

printf "\nand PHP binary path is:\n"

which php

printf "\n\n"