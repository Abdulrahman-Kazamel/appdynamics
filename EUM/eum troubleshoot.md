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

### some troubleshoot as per your case

https://docs.appdynamics.com/display/PRO43/EUM+Server+Requirements



```bash
eum-processor-launcher.vmoptions
-Xmx6471m
-Xms6471m
```