
```log
[appdynamics-analytics-writer0] 11 Jan 2024 15:01:06,166  WARN EventsServiceSink - Error occurred while attempting to send data to [http://10.208.10.36:9080]. Retry attempts remaining [1199]java.net.SocketException: Connection resetat sun.nio.ch.NioSocketImpl.implRead(NioSocketImpl.java:323) ~[?:?]
```
Could you, please, run the following command from Webservices 112 node in order to check the connectivity ?
```shell
curl http://10.208.10.36:9080/_ping
```


up-w
check my controller sizing 
what is w wait 

convert all camtasia videos

Byte-code instrumentation  Call-stack sampling

The Java agent, which instruments programs running on the JVM, adds bytecode to methods to gather data using many different frameworks.

.NET agents use the AppDynamics Agent Coordinator Service to collect the .NET agent data and send it to the Controller  Collects machine-level metrics

Default period for Controller to mark node "historical" is 20 days of inactivity the Controller considers a node historical after about 20 days of inactivity  Default period for deletion from Controller is 30 dates of inactivity

Remember that if you are using license pools, the Account Access key will be different for each pool.

Deploying agents manually is a pretty straightforward process. Automating their deployment is fairly simple, as well, and there are a tools to help you do this.
For Unix/Linux systems, there are third-party tools such as Chef or Puppet that you can use.


in covid time there were appdynamics courses availbale for free but i didn't get the ability to get exam voucher, 

Must have at least three nodes to avoid Elasticsearch’s “Split Brain” problem:



The customer can use their license provisioning to estimate their capacity requirements.  Customers using agent-based licensing: Use the number of Transaction Analytics licenses to estimate.  Customers using infrastructure-based licensing: Use the number of Enterprise Licenses. o 1 Tx. Analytics license unit (ABL) = 2.5 Enterprise license units (IBL).  AppDynamics Professional Services representative can help determine whether or not you need to scale up the Events Service.



what is the difference between outliers and anomaly 

dbagent ha 

dummy agent

how to enable log mointering in appdynamics

Ajax
some api with postman 
what is beacons
what is adrum.js and adrumext.js.



i need mail server

how to set ccr in elastic

try inspect dcloud again

all jvms
jms protocol ? HTTP headers and JMS message properties

man ps and ps -elf and -aux

### Java Profiling Tools - Proactive Alerting

 Java Profiling Metrics

Application Latency

Business Transaction Latency

Code Call Stack Latency

JVM Health

SQL Statement Latency

Java Container Metrics

JVM Run-Time Metrics

NoSQL Query Latency

Applicaton MBean Metrics

why not replacing self moniter with adding agent reporting to the controller to let it appear next to organization application
disadvantage  license consumption 


FROM openjdk:8-jre-slim

COPY myapp.jar /app
COPY AppServerAgent/ /opt/appdynamics

ENV APPDYNAMICS_AGENT_APPLICATION_NAME=test-app
ENV APPDYNAMICS_AGENT_TIER_NAME=test-tier
ENV APPDYNAMICS_AGENT_ACCOUNT_NAME=cream202403310308582
ENV APPDYNAMICS_AGENT_ACCOUNT_ACCESS_KEY=n2yqf81cazux
ENV APPDYNAMICS_CONTROLLER_HOST_NAME=cream202403310308582
ENV APPDYNAMICS_CONTROLLER_PORT=443
ENV APPDYNAMICS_CONTROLLER_SSL_ENABLED=yes
ENV APPDYNAMICS_JAVA_AGENT_REUSE_NODE_NAME=true
ENV APPDYNAMICS_JAVA_AGENT_REUSE_NODE_NAME_PREFIX=true

COPY ./startup.sh /startup.sh
RUN chmod +x /startup.sh
ENTRYPOINT ["/bin/bash", "/startup.sh"]



# remember to configure lab with tier and node in the startup just for testing

page 55 


```
/eventsservice/processor/conf/events-service-api-store.properties
ad.accountmanager.key.controller: This should equal value of the appdynamics.on.premise.event.service.key that we got from the Controller. ii. ad.accountmanager.key.eum: This should equal the value of appdynamics.es.eum.key that we got from the controller.
```



check 

```bash
#Change the permissions of the file to be executable: 
chmod u+x /opt/appdynamics/database-agent/dbagent.sh 
#3. Start the agent: 
 /opt/appdynamics/database-agent/dbagent.sh start

Under /opt/appdynamics/database-agent/logs, view the file agent.log. 7. Look for a line that says “Agent - Started MovieZtream Database Agent HA Pair successfully”.

#the above agent name in db-HA-setup 
```

page72

eum.properties File Instructions 1. While still connected to the EUM host via ssh, navigate to the bin directory: cd /opt/appdynamics/eum/eum-processor/bin 2. Using vi or nano, open the EUM Properties file for editing: eum.properties 3. Set the parameters in this file as follows: a. analytics.enabled: true b. analytics.serverHost: [xxxx.nginx.labs.appd] c. analytics.accountAccessKey: [Same API key as set against appdynamics.es.eum.key in the controller Admin Console, and against ad.accountmanager.key.eum in events-service-apistore.properties on the ES nodes.] 4. Save and close the EUM Properties file.


i need to check eum server license in etisalat

```bash
## Navigate to the eum-processor directory: 
cd /opt/appdynamics/eum/eum-processor 
## Run the following commands to shut down the EUM server: 
bin/eum.sh stop 
export JAVA_HOME=/opt/appdynamics/eum/jre 

cd /opt/appdynamics/eum/orcha/orcha-manager/bin/
./orcha-manager -d mysql.groovy -p ../../playbooks/mysql-orcha/stop-mysql.orcha -o ../conf/orcha.properties -c local

```


5. Back up the EUM server software directory to an archive file:
tar zcvf eum_bak.tar.z eum



### The size of the JVM heap can affect performance and should be adjusted if needed:

- A heap that is too small will cause excess garbage collections and increases the chances of `OutOfMemory` exceptions.
- A heap that is too big will delay garbage collection and stress the operating system when needing to page the JVM process to cope with large amounts of live data.



 -Dappdynamics.agent.tierName=Web-Portal -Dappdynamics.agent

.nodeName=Web-Portal_Node-01


we want to export data from events and and push it to a different way 
test joins from appdynamics mysql itself