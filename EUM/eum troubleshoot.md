http://eum-server-ip:7001/eumaggregator/ping


```bash
ps -ef | grep -i eum | grep -v grep
kill -9 eum-PID

ps -ef | grep -i database | grep -v grep
kill -9 eum-database-PID

cd /opt/appdynamics/eum/mysql
bin/mysqld_safe --defaults-file=/opt/appdynamics/eum/mysql/db.cnf &

cd /opt/appdynamics/eum/eum-processor
./bin/eum.sh start
```

### some troubleshoot as per your case

https://docs.appdynamics.com/display/PRO43/EUM+Server+Requirements



```bash
eum-processor-launcher.vmoptions

-Xms6471m  -Xmx6471m 
```


![[brum no license.png]]
1- There is still no EUM avaialble on the Controller? 
if yes
perform steps 4-8 in this doc section:  
[https://docs.appdynamics.com/appd/onprem/latest/en/eum-server-deployment/provision-eum-licenses#id-.ProvisionEUMLicensesv21.4-provision-licensesProvisionLicensesforControllerAccounts](https://docs.appdynamics.com/appd/onprem/latest/en/eum-server-deployment/provision-eum-licenses#id-.ProvisionEUMLicensesv21.4-provision-licensesProvisionLicensesforControllerAccounts)


it should report like this 

![[eum license done.png]]
