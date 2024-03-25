the connection refused here is related  of Netviz errors , if you are not using Network Agent , i suggest you disable it through:

1- Agent node propriety from the controller by adding the following:

Name: socket-enabled  
Description: socket-enabled  
Type: Boolean  
Value: false

**2-From the Java Agent:**

Stop the Agent. Open the _netviz-service.properties.xml_ file located in the <java-agent-home>/<ver20.x.x.x>/external-services/netviz/ directory and set below flag as below.  
netviz.dynamic.service.enabled = false​

​OR

Start Java agent with the following JVM property  
-Dappdynamics.socket.collection.bci.enable = false​

rename the log folder then  restarting the agent, then post the logs to see what stopping the agent from detecting business transactions


*https://community.appdynamics.com/t5/Java-Java-Agent-Installation-JVM/JAVA-Agent-failed-Connection-refused-Connection-refused/td-p/41225*