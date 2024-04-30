```bash
http://[your-ip-address]:7001/eumaggregator/ping

cd /opt/appdynamics/eum/eum-processor/
bin/eum.sh stop
ps -ef | grep -i eum | grep -v grep (no process should be listed)

vim eum.properties

## edit these values
analytics.enabled=true
analytics.serverHost=[your-ip-address] #That should be the Events Server IP Address
analytics.accountAccessKey=[eum_key] (the one collected in controller Admin jsp)

bin/eum.sh start
ps -ef | grep -i eum | grep -v grep (one process should be listed)
```


eum.beacon.host = [your-ip-address]:7001 #That should be the EUM Server IP Address
eum.beacon.https.host = https://[your-ip-address]:7002 #That should be the EUM Server IP Address
eum.cloud.host = http://localhost:7001 #That should be the EUM Server IP Address
eum.es.host = [your-ip-address]:9080 #That should be the Events Server IP Address
eum.mobile.screenshot.host = [your-ip-address]:7001 #That should be the EUM Server IP Address


<https://community.appdynamics.com/t5/Knowledge-Base/How-do-I-configure-the-EUM-Server-with-the-Enterprise-Console/ta-p/34504>



*From \<<https://community.appdynamics.com/t5/Business-iQ-Analytics/Analytic-service-is-unavailable/m-p/29716>\>*
*From \<<https://community.appdynamics.com/t5/Business-iQ-Analytics/Analytic-service-is-unavailable/m-p/29716>\>*
*From \<<https://github.com/sherifadel90/AppDynamicsPlatformInstallation>\>*



 
### eum var file

```
sys.adminRights\$Boolean=false
sys.languageId=en
sys.installationDir=/opt/appdynamics/eum
euem.InstallationMode=split
euem.Host=eumhostname
euem.initialHeapXms=1024
euem.maximumHeapXmx=4096
euem.httpPort=7001
euem.httpsPort=7002
mysql.databasePort=3388
mysql.databaseRootUser=root
mysql.dbHostName=localhost
mysql.dataDir=/opt/appdynamics/eum/data
mysql.rootUserPassword=singcontroller
mysql.rootUserPasswordReEnter=singcontroller
eumDatabasePassword=password
eumDatabaseReEnterPassword=password
keyStorePassword=password
keyStorePasswordReEnter=password
eventsService.isEnabled\$Boolean=true
eventsService.serverScheme=http
eventsService.host=172.xx.xx.xxx
eventsService.port=9080
eventsService.APIKey=f8a3xxx9-xx78-4xxe-b8xx-fxxxad5367d0
```
 

 



 
