
If you encounter issues with the AppDynamics Machine Agent not appearing on the controller UI or facing other problems, follow these troubleshooting steps:

## Additional Considerations

Before troubleshooting further, consider the following:

1. **Ensure Ports Accessibility**: 
   - Make sure that the necessary ports required by the Machine Agent are open and accessible on your system.

2. **Check Permissions**:
   - Verify that the Machine Agent has the correct permissions to access the required files and directories.

3. **Environment Variables**:
   - Ensure that the Machine Agent has the necessary environment variables set, such as the AppDynamics Controller host, port, and credentials.

4. **Controller Registration**:
   - Confirm that the Machine Agent is registered with the correct AppDynamics Controller.

## Troubleshooting Steps

1. **Check Agent Process Status**:
   - If the agent does not appear on the controller UI, first, check if the Machine Agent process is still running on the server by running the following command:
```bash
	ps -ef | grep machineagent
 ```

2. **Change Log Level and Collect Logs**:
   - If the process is still running, follow these steps:
     1. Navigate to the log4j.xml file located in `<machine_agent_home>/conf/logging`.
     2. Change the log level from "info" to "trace" for "com.singularity" and "com.appdynamics".
     3. Change the size from 5000 to 50000 in `<SizeBasedTriggeringPolicy size="50000 KB"/>`.
     4. Do not restart the agent after making these changes.
     5. Collect the logs for 10 minutes while the agent is running.

3. **Zip and Attach Logs**:
   - After collecting the logs, zip the entire logs folder present at `<machine_agent_home>/logs/` and attach it to your support request or investigation.

## Additional Tips

- If you have completed all of these steps and are still having issues, check the Machine Agent logs for any error messages that could provide more insight into the issue.
