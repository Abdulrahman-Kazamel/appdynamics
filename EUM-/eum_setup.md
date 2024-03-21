cd /opt/appdynamics/eum/eum-processor/
bin/eum.sh stop
ps -ef | grep -i eum | grep -v grep (no process should be listed)
bin/eum.sh start
ps -ef | grep -i eum | grep -v grep (one process should be listed)


/opt/appd/platform/product/controller/license 
http://[your-ip-address]:8090/controller/admin.jsp
appdynamics.es.eum.key

eum.beacon.host = [your-ip-address]:7001 #That should be the EUM Server IP Address
eum.beacon.https.host = https://[your-ip-address]:7002 #That should be the EUM Server IP Address
eum.cloud.host = http://localhost:7001 #That should be the EUM Server IP Address
eum.es.host = [your-ip-address]:9080 #That should be the Events Server IP Address
eum.mobile.screenshot.host = [your-ip-address]:7001 #That should be the EUM Server IP Address


<https://community.appdynamics.com/t5/Knowledge-Base/How-do-I-configure-the-EUM-Server-with-the-Enterprise-Console/ta-p/34504>

 

 

appdynamics.on.premise.event.service.key



 

appdynamics.es.eum.key from admin= 7xxxx-e189-46cf-98eb-xxxxxa

analytics.accountAccessKey == ad.accountmanager.key.eum == appdynamics.es.eum.key


 

*From \<<https://community.appdynamics.com/t5/Business-iQ-Analytics/Analytic-service-is-unavailable/m-p/29716>\>*

 


*From \<<https://community.appdynamics.com/t5/Business-iQ-Analytics/Analytic-service-is-unavailable/m-p/29716>\>*

 

*From \<<https://github.com/sherifadel90/AppDynamicsPlatformInstallation>\>*

 


bin/mysqld_safe \--defaults-file=/opt/appdynamics/eum/mysql/db.cnf

 

 

 

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

eumDatabasePassword=ACT123

eumDatabaseReEnterPassword=ACT123

keyStorePassword=ACT123

keyStorePasswordReEnter=ACT123

eventsService.isEnabled\$Boolean=true

eventsService.serverScheme=http

eventsService.host=172.20.20.110

eventsService.port=9080

eventsService.APIKey=f8a336d9-ff78-4aae-b8a1-fdc7ad5367d0

 
