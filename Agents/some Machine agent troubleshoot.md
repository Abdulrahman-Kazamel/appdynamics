
  -Xmx1024m


-   If the agent does not appear on the controller UI, is the machine agent process still running on the server? run ps -ef \| grep machineagent

-   If the process is still running, Then change the log level from \"info\" to \"trace\" in the log4j.xml at \<machine_agent_home\>/conf/logging for "com.singularity" and "com.appdynamics". And change the size from 5000 to 50000 \<SizeBasedTriggeringPolicy size=\"50000 KB\"/\> 

-   Do not restart the agent and Collect the logs for 10 mins.

-   Zip and attach the logs folder present at \<machine_agent_home\>/

