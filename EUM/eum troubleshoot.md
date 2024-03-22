http://eum-server-ip:7001/eumaggregator/ping


```bash
ps -ef | grep -i eum | grep -v grep
kill -9 eum-PID
ps -ef | grep -i database | grep -v grep
kill -9 eum-database-PID
cd /opt/appdynamics/eum/mysql
bin/mysqld_safe --defaults-file=/opt/appdynamics/eum/mysql/db.cnf
cd /opt/appdynamics/eum/eum-processor
./bin/eum.sh start
```