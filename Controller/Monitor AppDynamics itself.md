1- Ensure the internal java agent has been deployed during the controller installation. 
   The agent location is 
   ```
   <controller_home>/appserver/glassfish/domains/domain1/appagent
   ```

2- Access the self-monitoring URL using the following link from browser incognito mode: 
   ```
   http://<controller_host>:8090/controller?enableAccounts=true
   ```

3- Login with the following credentials:
    Account: system
    Username: root
    Password: <password>
    
4- Once you are logged in, you can monitor the controller and its environment using the AppDynamics internal java agent.
  
  
# Note:
  Before proceeding with these steps, make sure you have the correct permissions and access to the controller environment.
