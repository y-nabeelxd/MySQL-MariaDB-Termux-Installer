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


(Optional) Start MariaDB on Boot (Termux Specific)
Termux doesn't have a traditional init system.  You'll need a workaround to start MariaDB automatically when Termux starts.  One common method is to add the `mysqld_safe &` command to your `.bashrc` or `.zshrc` file (depending on which shell you use).
 * Open the file in a text editor (e.g., nano ~/.bashrc).

```
nano ~/.bashrc
```

 * Add the line `mysqld_safe &` at the end of the file.
```
mysqld_safe &
```
 * Save the file. (Ctrl+X)

This will start MariaDB every time you open a new Termux session.

Key Considerations for Termux:
 * Storage: Be mindful of storage space on your Android device. Databases can grow large over time.
 * Backups: Regularly back up your MariaDB databases to prevent data loss.  The mysqldump command is commonly used for this.
 * Port Forwarding (If needed): If you need to access your MariaDB server from outside your Android device, you might need to configure port forwarding.  This is more advanced and depends on your network setup.


Troubleshooting:
 * Can't connect to local MySQL server through socket `'/data/data/com.termux/files/usr/tmp/mysql.sock'`: This error usually means the MariaDB server isn't running. Double-check that you've started it using `mysqld_safe &`. Also, ensure that any previous mysqld processes have been completely killed.
By following these steps, you'll have a functional MariaDB installation on your Termux Android environment. Remember to prioritize security, especially setting a strong root password and creating separate users for your applications.  Regular backups are also essential to protect your data

<details>
  <summary>Install Basic Commands of Termux</summary>
  <a href="https://github.com/y-nabeelxd/Termux-Auto-Package-Installer">
  <button style="padding: 10px 20px; background-color: #4CAF50; color: white; border: none; border-radius: 5px; cursor: pointer;">
    Click here!
  </button>
</a></details>
