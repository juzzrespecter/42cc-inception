#!/bin/sh

# Setup ENV variables 

sed "/MYSQL_ROOT_PASSWD/${MYSQL_ROOT_PASSWD}/" /tmp/mariadb-setup.sql
sed "/MYSQL_DB/${MYSQL_DB}/" /tmp/mariadb-setup.sql
sed "/MYSQL_USER/${MYSQL_USER}/" /tmp/mariadb-setup.sql
sed "/MYSQL_USER_PASSWD/${MYSQL_USER_PASSWD}/" /tmp/mariadb-setup.sql

# First time setup for ROOT & WP database config.

openrc && \
    mysql < /tmp/mariadb-setup.sh

# Set WP database tables

# Run mysqld in foreground as root

mysql_safe
