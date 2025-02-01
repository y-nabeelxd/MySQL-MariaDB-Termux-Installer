# MySQL-MariaDB-Termux-Installer
This Script Created for Easily Install MariaDB on Termux. | [Install Basic Commands of Termux? 
Click here!](https://github.com/y-nabeelxd/Termux-Auto-Package-Installer)
# Installation
```
apt update -y && apt upgrade -y && apt install git -y && apt install bash -y && cd $Home && git clone https://github.com/y-nabeelxd/MySQL-MariaDB-Termux-Installer && cd MySQL-MariaDB-Termux-Installer && clear && echo "Installing MariaDB..." && apt install mariadb -y && chmod +x install.sh && bash install.sh -y && cd $Home && rm -rf MySQL-MariaDB-Termux-Installer &&  echo "Starting MariaDB server..." && mysqld_safe &
```
