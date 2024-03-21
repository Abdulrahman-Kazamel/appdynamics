
 Change to the mysql directory using 
 `cd /opt/appdynamics/platform/mysql/`. 
 - Error : 2002 (HY000): Can't connect to local MySQL through socket '/tmp/mysql.sock' (2) 
 - Connect to the database using ``./bin/mysql -u root -p --socket=<platform_admin_home>/mysql/mysql.sock --port=3377 ``   
 - (replace the socket path and port with the appropriate values). 
 - and    ``ps -ef | grep mysql`` ===> from the output grep the --socket with one with port that I need - To show the databases, run ` show databases`. - To use a specific database, `run use platform_admin`. - To show tables, run `show tables`.