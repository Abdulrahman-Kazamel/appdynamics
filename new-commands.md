1- Check logs for Enterprise Console
```tail -f /opt/appdynamics/platform/platform-admin/logs/platform-admin-server.log```

2- Get the size of a file, run ``du -sh filename``.

3- The matrix for controller sizing can be found in the playbook directory 
```
/opt/appdynamics/platform/platform-admin/archives/controller/20.11.1-1963/playbooks
```

4- The data directory for the controller's database is 
```
/opt/appdynamics/platform/product/controller/db/data
```
5- Enterprise Console database:

 - Change to the mysql directory using `cd /opt/appdynamics/platform/mysql/`.
 - Error : 2002 (HY000): Can't connect to local MySQL through socket '/tmp/mysql.sock' (2)
 - Connect to the database using ``./bin/mysql -u root -p --socket=<platform_admin_home>/mysql/mysql.sock --port=3377 ``
   (replace the socket path and port with the appropriate values). and 
   ``ps -ef | grep mysql`` ===> from the output grep the --socket with one with port that I need
 - To show the databases, run ` show databases`.
 - To use a specific database, `run use platform_admin`.
 - To show tables, run `show tables`.
 
6- Controller database:

 - Change to the controller directory using `` cd opt/appdynamics/platform/product/controller/``.
 - Connect to the database using ``./bin/controller.sh login-db``
 - To show the databases, run ``show databases``.
 - To use a specific database, run ``use controller``.
 - To show tables, run `show tables`.
 
 7- To start the controller and glassfish server together, run 
 ```
 ./bin/startcontroller.sh
 ```
 To start each component alone, run ``./bin/controller.sh start-appserver`` or ``./bin/controller.sh start-db``
 
 8- Controller as a service to start automatically.
```
cd /opt/appdynamics/platform/products/controller/controller-ha/
./set_mysql_password_file.sh -p password
./init/install-init.sh
```

==============================Error for the below ===============================================
com.appdynamics.orcha.core.exceptions.OrchaRunnerException: Error running playbook at com.appdynamics.orcha.core.OrchaRunnerImpl.runPlaybook(OrchaRunnerImpl.java:220)

=============================================================================================
Managing Controller Environment – Controller Deep Link
Deep link are embedded links you see in alerts and are configured to be external URL access to the controller. Deep link can be
changed either via Enterprise console (CLI or GUI) or Glassfish domain.xml file for older controller versions.
./platform-admin.sh update-service-configurations --service controller --job update-configs --args controllerExternalUrl=<serverprotocol>://<controller-host>:<controller-port>
./platform-admin.sh update-service-configurations --service controller --job update-configs --args controllerExternalUrl=http://apm.newgenbank.com:8090

the same from Enterprise GUI configration tab ExternalUrl
==============================================================================================================================================

bin/platform-admin.sh add-credential --credential-name eventsservice-01 --type ssh --user-name root --ssh-key-file /root/.ssh/appd-analytics.pem
bin/platform-admin.sh add-credential --credential-name 10.0.30.45 --type ssh --user-name root --ssh-key-file /root/.ssh/appd-analytics.pem


bin/platform-admin.sh add-hosts --host-file <file path to host file> --credential <credential name> 

/opt/appdynamics/platform/product/controller/db/data

bin/platform-admin.sh remove-dead-hosts --hosts <host name>

./bin/platform-admin.sh add-hosts --hosts eventsservice --credential "Events Service" --platform-name AppDPlatform
./bin/platform-admin.sh add-hosts --hosts eventsservice-01 --credential eventsservice-01 --platform-name AppDPlatform
./bin/platform-admin.sh add-hosts --hosts 10.0.30.45 --credential eventsservice-01 --platform-name AppDPlatform

"bin/platform-admin.sh install-events-service --profile prod --hosts eventsservice-01 eventsservice-02 eventsservice-03  --data-dir /opt/appdynamics/eventsservice --platform-name AppDPlatform"

"bin/platform-admin.sh install-events-service --profile prod --hosts 10.0.30.45 10.0.30.46 10.0.30.47  --data-dir /opt/appdynamics/eventsservice --platform-name AppDPlatform"


eventsservice-01 10.0.30.xx
eventsservice-02 10.0.30.xx
eventsservice-03 10.0.30.xx


scp ~/.ssh/myserver.pub host1:/tmp
scp ~/.ssh/myserver.pub host2:/tmp
scp ~/.ssh/myserver.pub host3:/tmp

cat /tmp/appd-analytics.pub >> .ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys



 bin/platform-admin.sh submit-job --platform-name AppDPlatform --service events-service --job stop
 bin/platform-admin.sh submit-job --platform-name AppDPlatform --service events-service --job start

bin/platform-admin.sh submit-job --platform-name AppDPlatform --service events-service --job restart-cluster

bin/platform-admin.sh list-hosts
./bin/platform-admin.sh list-nodes --service events-service
./bin/platform-admin.sh show-events-service-health 
 bin/platform-admin.sh retrieve-events-service-logs
 


cd /opt/appdynamics/platform/product/events-service/processor
bin/events-service.sh stop -f && rm -r events-service-api-store.id && rm -r elasticsearch.id
nohup ./bin/events-service.sh start -p ./conf/events-service-api-store.properties &

ea95542c-7c24-4c0e-9934-9c7bf389525b

sudo <installation_dir>/events-service/processor/bin/tool/tune-system.sh
chmod +x tune-system.sh 
./tune-system.sh

 curl http://10.0.30.45:9080/_ping 

appdynamics.on.premise.event.service.url
https://10.0.30.60:9443/v1

curl http://10.0.30.47:9081/healthcheck?pretty=true
./bin/events-service.sh check-health -hp localhost:9081

ad.es.node.unicast.hosts=eventsservice-01:9300,eventsservice-02:9300,eventsservice-03:9300



bin/events-service.sh --service events-service --job install -p conf\events-service-api-store.properties

 netstat -ant | grep "9080\|9081\|9200\|9300"

 ps -ef | grep "event"



===================================================================

bin/platform-admin.sh install-events-service --profile prod --hosts <Event_Node_IP> --data-dir “/home/dgisvcdyn/appdynamics” --platform-name DHFLGI-APPD
bin/platform-admin.sh install-events-service --profile Prod --hosts 10.0.30.43 --data-dir “/opt/appdynamics/eventsservice” --platform-name AppDPlatform



 "" ./bin/platform-admin.sh submit-job --service events-service --job install --args serviceActionHost=10.0.30.45 profile=Prod ""


bin/platform-admin.sh submit-job --job uninstall --service events-service --platform-name  AppDPlatform  --hosts 10.0.30.45





 vim /root/.ssh/id_rsa



ssh-keygen -t rsa -b 2048 -N '' -m pem



sudo netstat -tulpn | grep LISTEN
How to make service startup on linux





/opt/appdynamics/platform
Database Port: 3377 (default)
Enable Https Connection: n
Enterprise Console Port: 9191 (default)

========================================================
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



Select Installation Type: 1 (Demo)
Database Port: 3388 (default)
HTTP Port: 7001 (default)
HTTPS Port: 7002 (default)

http://[your-ip-address]:7001/eumaggregator/ping


cd /opt/appdynamics/eum/eum-processor/bin/
vim eum.properties


analytics.enabled=true
analytics.serverHost=[your-ip-address] #That should be the Events Server IP Address
analytics.accountAccessKey=[eum_key] (the one collected in step 2)


./bin/platform-admin.sh retrieve-events-service-logs
./bin/platform-admin.sh list-events-service-nodes
./bin/platform-admin.sh show-events-service-health
 http://[your-ip-address]:9080/_ping //ping Event services 
/opt/appdynamics/platform/product/events-service/processor/conf (properties)


ps -ef | grep -i eum | grep -v grep



sudo netstat -tulpn | grep LISTEN

sudo ln -s /path/to/phantomjs /usr/local/bin/

/opt/appdynamics/platform/product/controller/reporting_service/reports/node_modules/phantomjs-prebuilt/lib/phantom/bin/phantomjs




command you can use to test connectivity?

curl -v https://<controllerHost>:<port>/controller
telnet <controllerHost>
traceroute <controllerHost>






Uncheck all the boxes on Web Service.
Scroll down to find the Servlet settings.
Check the box Enable Servlet Filter Detection (all three boxes should be checked on Servlet settings).

Select the Call Graph Settings tab from the Instrumentation window.
Scroll down until you see the SQL Capture Settings.




https://github.com/sherifadel90/AppDynamicsPlatformInstallation/blob/master/README.md

https://docs.appdynamics.com/display/PRO43/EUM+Server+Requirements



eum-processor-launcher.vmoptions
-Xmx6471m
-Xms6471m


***************************************************************

bin/platform-admin.sh submit-job --platform-name AppDPlatform --service events-service --job restart-node --args nodeActionHost=10.0.30.45


http://192.168.174.129:8090/controller
https://github.com/sherifadel90/AppDynamicsPlatformInstallation



################################################################################
keytool -import -trustcacerts -v -alias events_service -file /path/to/CA-cert.txt -keystore cacerts.jks




 Enable the file descriptor and process limits as follows: 
Open the following file for editing: /etc/pam.d/common-session inside login file

 Add the line: session required pam_limits.so

JVM Runtime does not support Modules


source code (.Java) Compilar code.class JVM naitve code 




l->T-kiH932_   password 
https://community.appdynamics.com/t5/Controller-SaaS-On-Premise/Controller-installation-Disk-Space-issue/m-p/38520#M2024

selfservice-free-account 

#============================ Share Definitions ============              


 cd /opt/appdynamics/eum/eum-processor
 ./bin/provision-license /opt/appdynamics/platform/product/controller/license.lic

Validating host and port connection information...
