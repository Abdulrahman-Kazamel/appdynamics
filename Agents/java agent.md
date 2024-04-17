
```bash

# in each jvm startup file add this and do not add tiername or node name in the controllerinfo.xml
JAVA_OPTS="-javaagent:/opt/appdynamics/java-appagent/javaagent.jar -Dappdynamics.agent.tierName=tier-appname - Dappdynamics.agent.nodeName=UI"

# the *application-name* or any common argument as *tier-name* have set before this step in the controllerinfo.xml 
# more details here

https://community.appdynamics.com/t5/Knowledge-Base/How-do-I-instrument-multiple-JVMs-on-a-single-machine/ta-p/26265


```