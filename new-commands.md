







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
