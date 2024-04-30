
###  Java Agent Configuration Properties 

*Note:*  the bypassed properties as (**System Property:** -`Dappdynamics.agent.tierName`) is case sensitive   
https://docs.appdynamics.com/appd/23.x/latest/en/application-monitoring/install-app-server-agents/java-agent/administer-the-java-agent/java-agent-configuration-properties



this useful troubleshoot steps  copied from https://community.appdynamics.com/t5/Knowledge-Base/Why-aren-t-Application-Agents-reporting-to-the-Controller/ta-p/26579

If your Application Agent is not reporting data to the Controller, checking the following items on the machine where the Agent is installed:

1. [Is the Agent log empty?](https://community.appdynamics.com/t5/Knowledge-Base/Why-aren-t-Application-Agents-reporting-to-the-Controller/ta-p/26579#AgentLogEmpty)
2. [Are there network connectivity issues?](https://community.appdynamics.com/t5/Knowledge-Base/Why-aren-t-Application-Agents-reporting-to-the-Controller/ta-p/26579#NetworkConnectivity)
3. [Are there 401 Unauthorized error messages in the Agent logs?](https://community.appdynamics.com/t5/Knowledge-Base/Why-aren-t-Application-Agents-reporting-to-the-Controller/ta-p/26579#Error401)
4. [Is the `ssl-enabled` property value set to true?](https://community.appdynamics.com/t5/Knowledge-Base/Why-aren-t-Application-Agents-reporting-to-the-Controller/ta-p/26579#SSLEnabled)
5. [Are the application, tier, and node names correct?](https://community.appdynamics.com/t5/Knowledge-Base/Why-aren-t-Application-Agents-reporting-to-the-Controller/ta-p/26579#AppTierNodeName)
6. [Are you using a multi-tenant Controller?](https://community.appdynamics.com/t5/Knowledge-Base/Why-aren-t-Application-Agents-reporting-to-the-Controller/ta-p/26579#MultiTenantController)
7. [Are there license-related errors?](https://community.appdynamics.com/t5/Knowledge-Base/Why-aren-t-Application-Agents-reporting-to-the-Controller/ta-p/26579#LicenseErrors)

### 1. Is the Agent log empty?

- If no data is being reported to the Controller, it’s possible that the user who is starting the application server doesn’t have the necessary permissions on the Agent directory. The user requires read, write and execute permissions. The Agent should also be installed with the same user with which the application process is running.
- Example: You may use chown -R user:group appdynamics and your user is "jboss" chown -R jboss:jboss appdynamics. This gives the Application Agent user “jboss” the complete ability to navigate the `/opt/appdynamics` folders and sub folders. If user "jboss" doesn’t have the permission to navigate to root-owned folders within AppDynamics, the Agent wouldn’t be able to write to log files that are required by the application.
- To resolve this issue, check the permissions in the Agent directory and sub-directories. Example: `<AgentDir>/ver4.x.x.x/`

### 2. Are there network connectivity issues?

- Use the following command to test connectivity:  
    
    curl -v https://<controllerHost>:<port>/controller
    telnet <controllerHost>
    traceroute <controllerHost> 
    
- Check with your Network engineer to resolve connectivity issues between the Agent and Controller.

### 3. Are there 401 Unauthorized error messages in the Agent logs?

- This error message usually indicates that the account name or access key are missing or incorrectly configured.

### 4. Is the ssl-enabled property value set to true?

- If the Agent is using SSL port 8181 and you see the following error message in the logs, check that the `ssl-enabled` property has a value of **true** in the `controller-info.xml` file or any parameters configured in startup file.  
    
    [Thread-0] 22 Nov 2017 09:09:43,469 ERROR ConfigurationChannel - Exception: athenetest.saas.appdynamics.com:443 failed to respond org.apache.http.NoHttpResponseException: athenetest.saas.appdynamics.com:443 failed to respond
    
- Ensure that `SSLEnabled` is set to true for HTTPS, and **false** for HTTP.

### 5. Are the application, tier, and node names correct?

- These are mandatory configuration parameters for an Application Agent. Look at Agent logs for errors like this:  
    ![Screen Shot 2018-06-14 at 11.11.26 AM.png](https://community.appdynamics.com/t5/image/serverpage/image-id/4860i096501C9C6ED3693/image-size/large?v=v2&px=999 "Screen Shot 2018-06-14 at 11.11.26 AM.png")

### 6. Are you using a multi-tenant Controller?

- If yes, check that the account name is accurate.

### 7. Are there license-related errors?

- Check the Agent logs for license-related errors and verify if the license count limit has been reached:  
    
    WARN ConfigurationChannel - ResponseReadException creating Response Wrapper [e], : com.singularity.ee.rest.b: Error in controller in processing binary request AppAgent Config Data  - Agent license request denied.
    
- If you see a license-related error, follow the steps outlined in [Why am I seeing license limit notifications?](https://community.appdynamics.com/t5/Knowledge-Base/Why-am-I-seeing-license-limit-notifications/ta-p/34481)

Additional troubleshooting resources:

- [Can you guide me to resources for agent-related issues?](https://community.appdynamics.com/t5/Knowledge-Base/Can-you-guide-me-to-resources-for-agent-related-issues/ta-p/32589)
- [Troubleshooting Agent Issues - FAQs](https://community.appdynamics.com/t5/Knowledge-Base/Troubleshooting-Agent-Issues-FAQs/ta-p/30583)
- [Troubleshooting Agent Issues - Installation and Start-up](https://community.appdynamics.com/t5/Knowledge-Base/Troubleshooting-Agent-Issues-Installation-and-Start-up/ta-p/30328)
- [Why is the Java Agent not reporting to the Controller?](https://community.appdynamics.com/t5/Knowledge-Base/Why-is-the-Java-Agent-not-reporting-to-the-Controller/ta-p/13974)
-


## check 
1.check the processes running and if appdynamics is running
2.you can also check by agent service status 
3.check the correct file path to the agent
-Dappdynamics.controller.hostName (property case sensitive)
https://docs.appdynamics.com/appd/23.x/latest/en/application-monitoring/install-app-server-agents/java-agent/administer-the-java-agent/java-agent-configuration-properties

4. check if controller-info.xml attribute values are correct and are in correct case for some arguments(like access-key)

5. Also check if the user has relevant permissions to all the folders in the agent. (write for conf and logs folder)

### tune-java-agent-performance
https://docs.appdynamics.com/appd/23.x/latest/en/application-monitoring/install-app-server-agents/java-agent/administer-the-java-agent/tune-java-agent-performance