# MySQL-MariaDB-Termux-Installer
This Script Created for Easily Install MariaDB on Termux.
# Installation

Update
```
apt update -y && apt upgrade -y
```

Install requirments
```
apt install git -y && apt install bash -y
```

Install Process
```
cd $Home && git clone https://github.com/y-nabeelxd/MySQL-MariaDB-Termux-Installer && cd MySQL-MariaDB-Termux-Installer && clear && echo "Installing MariaDB..." && apt install mariadb -y && chmod +x install.sh && bash install.sh -y && cd $Home && rm -rf MySQL-MariaDB-Termux-Installer
```

Start MariaDB Server
```
mysqld_safe &
```

Check Server Status
```
ps aux | grep mysqld
```



Secure the Installation (Important!)
```
mysql_secure_installation
```
This interactive script helps you:
 * Set a root password (essential for security).
 * Remove anonymous users.
 * Disallow remote root login (highly recommended).
 * Remove the test database.

Answer the questions carefully during `mysql_secure_installation.`  Setting a strong root password is the most important step.



Connect to MariaDB
```
mysql -u root -p
```
 * -u root specifies the username (root).
 * -p prompts you for the password (the one you set during `mysql_secure_installation`).

How to set/change password
```
USE mysql;
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('PUT_HERE_YOUR_PASSWORD');
FLUSH PRIVILEGES;
```


<details>
  <summary>Install Basic Commands of Termux</summary>
  <a href="https://github.com/y-nabeelxd/Termux-Auto-Package-Installer">
  <button style="padding: 10px 20px; background-color: #4CAF50; color: white; border: none; border-radius: 5px; cursor: pointer;">
    Click here!
  </button>
</a></details>
