#!/bin/bash

echo "Updating Termux packages..."
pkg update && pkg upgrade -y
echo "Installing MariaDB..."
pkg install mariadb -y
clear
echo "To Run MariaDB MySQL Server:"
echo "----------------------------"
echo "mysqld_safe &"
sleep 3
echo ""
echo ""
echo "Login to MySQL with the following command:"
echo "mysql -u root"
sleep 3
echo ""
echo ""
echo "To set the root password (must be logged into MySQL):"
echo "---------------------------------------------------"
echo "USE mysql;"
echo "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('PUT_HERE_YOUR_PASSWORD');"
echo "FLUSH PRIVILEGES;"
sleep 3
echo "Starting MariaDB server..."
mysqld_safe &
