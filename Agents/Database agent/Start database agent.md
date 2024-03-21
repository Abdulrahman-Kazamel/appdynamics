
### Change directory to where the AppDynamics Database Agent is located ```
shell cd /opt/appdynamics/dbagent


### Start the Database Agent as a background process

```
nohup java -Xmx1536m -Dappdynamics.agent.maxMetrics=300000 -Ddbagent.name=DBMon-Lab-Agent -jar db-agent.jar &
```

### Verify if the Database Agent is running by using the ps command

```
ps -ef | grep db-agent
```
