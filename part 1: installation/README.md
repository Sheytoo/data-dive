# Installation of MySQL Server on Linux

This guide will walk you through the installation of MySQL on a Linux system. We'll be using Ubuntu for this example, but the steps should be similar for other Linux distributions.

## Table of Contents

1. [Install MySQL Server](#install-mysql-server)
2. [Start MySQL Server](#start-mysql-server)
3. [Configure MySQL Server](#configure-mysql-server)
4. [Create a MySQL User and Grant Privileges](#create-a-mysql-user-and-grant-privileges)
5. [References](#references)

---

## Install MySQL Server

### Ubuntu

```bash
sudo apt update
sudo apt install mysql-server
```

### Fedora

```bash
sudo dnf update
sudo dnf install mysql-server
```

---

## Start MySQL Server

### Ubuntu and Fedora

```bash
sudo systemctl start mysql.service
```

### Check MySQL Server Status

```bash
sudo systemctl status mysql.service
```

---

## Configure MySQL Server

### WARNING:

As of July 2022, an error occurs when you run the `mysql_secure_installation` command. The reason is that this script will attempt to set a password for the installation’s **root** account but, by default on installations, this account is not configured to connect using a password.

#### Open MySQL Shell

```bash
sudo mysql
```

#### Set a password for the root account

```sql
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
```

#### Exit MySQL Shell

```sql
exit
```

#### Run the `mysql_secure_installation` command

```bash
sudo mysql_secure_installation
```

Once the security script completes, you can then reopen MySQL and change the **root** user’s authentication method back to the default, `auth_socket`. To authenticate as the **root** MySQL user using a password, run this command:

```bash
mysql -u root -p
```

---

## Create a MySQL User and Grant Privileges

### Create a new user

```sql
CREATE USER 'username'@'localhost' IDENTIFIED BY 'password';
```

### Grant privileges to the new user

```sql
GRANT ALL PRIVILEGES ON <database>.<table> TO 'username'@'localhost';
```

```sql
GRANT ALL PRIVILEGES ON *.* TO 'username'@'localhost' WITH GRANT OPTION;
```
The `WITH GRANT OPTION` clause enables the user to grant privileges to other users.

### Flush privileges

```sql
FLUSH PRIVILEGES;
```
Reloads the privileges from the grant tables in the `mysql` database.

### Exit MySQL Shell

```sql
exit
```

### Login as the new user

```bash
mysql -u username -p
```

---

And there you have it! You've successfully installed MySQL on your Linux system. Inspired by <a href="https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-22-04" target="_blank">How To Install MySQL on Ubuntu 22.04</a> that I invite you to read.