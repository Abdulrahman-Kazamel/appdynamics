
```bash
cd \[EUM_HOME\]/mysql
bin/mysql -u root -p \--port 3388 \--socket mysql.sock
```

```mysql
USE eum_db;

SELECT \* FROM account_credential \\G;

SELECT \* FROM accounts \\G;
```

### Backup EUM Database

 ```bash
cd \[EUM_HOME\]\\mysql

./mysqldump -u root \--password \--protocol=TCP -P 3388 \--databases eum_db \--add-drop-database \> eum_db_bkup.sql
```


 

 

 

ps -ef \| grep -i eum \| grep -v grep\
kill -9 eum-PID\
ps -ef \| grep -i database \| grep -v grep\
kill -9 eum-database-PID\
cd /opt/appdynamics/eum/mysql\
bin/mysqld_safe \--defaults-file=/opt/appdynamics/eum/mysql/db.cnf &\
cd /opt/appdynamics/eum/eum-processor\
./bin/eum.sh start

 

*From \<<https://community.appdynamics.com/t5/Business-iQ-Analytics/Analytic-service-is-unavailable/m-p/52984#M516>\>*

 

 

 
