**EUM Database**

Tuesday, March 12, 2024

12:39 PM

 

cd \[EUM_HOME\]/mysql

bin/mysql -u root -p \--port 3388 \--socket mysql.sock

USE eum_db;

SELECT \* FROM account_credential \\G;

SELECT \* FROM accounts \\G;

 

*From \<<https://help.appdynamics.com/hc/en-us/requests/372470>\>*

 

 

 

ps -ef \| grep -i eum \| grep -v grep\
kill -9 eum-PID\
ps -ef \| grep -i database \| grep -v grep\
kill -9 eum-database-PID\
cd /opt/appdynamics/eum/mysql\
bin/mysqld_safe \--defaults-file=/opt/appdynamics/eum/mysql/db.cnf &\
cd /opt/appdynamics/eum/eum-processor\
./bin/eum.sh start

 

*From \<<https://community.appdynamics.com/t5/Business-iQ-Analytics/Analytic-service-is-unavailable/m-p/52984#M516>\>*

 

 

 
