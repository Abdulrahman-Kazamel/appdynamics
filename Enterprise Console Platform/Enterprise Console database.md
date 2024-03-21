
 Change to the mysql directory using 
 `cd /opt/appdynamics/platform/mysql/`. 
 - Error : 2002 (HY000): Can't connect to local MySQL through socket '/tmp/mysql.sock' (2) 
 - Connect to the database using
```bash
./bin/mysql -u root -p --socket=<platform_admin_home>/mysql/mysql.sock --port=3377 
```
 - (replace the socket path and port with the appropriate values). 

```bash
 ps -ef | grep mysql 
```
 
 from the output grep the --socket with one with port that I need -

```mysql
show databases
#To use a specific database
 use platform_admin
 show tables
```
