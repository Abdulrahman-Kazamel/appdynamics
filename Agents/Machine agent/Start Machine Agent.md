## Machine Agent on Linux:
```
# Change to the machine agent bin directory
cd /opt/appdynamics/machineagent/

# Start the machine agent in the background
java -jar machineagent.jar &

# Verify that the machine agent is running
ps -ef | grep machine
```
## Machine Agent on Windows:

```
# Start the machine agent
java -jar machineagent.jar 

# Verify that the machine agent is running
Go to your Windows services and check "AppDynamics Machine Agent" 
```

## Additional Information:

If you need to force the agent to use a specific JRE, you have a couple of options:

1. **Check Java Presence**: Ensure that Java is present in the following directory: `<machine_agent_home>/jre/bin`, and that it is executable.

2. **Using `-j` Parameter**: Alternatively, you can specify the Java location using the `-j` parameter when starting the Machine Agent:

```bash
 <machine_agent_home>/bin/machine-agent -j <path/to/java_location>
```