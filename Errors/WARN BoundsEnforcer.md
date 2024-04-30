WARN BoundsEnforcer - BoundsEnforcer for collection com.singularity.ee.agent.util.bounded.collections.BoundedConcurrentR

eferenceHashMap with service name TransactionMonitoringService and property name SqlCacheHolder-connectionVsZosSSID-limit has exceeded maximum size of 550 entries.

### Add below Node Property to the agent:
```bash

property name: SqlCacheHolder-connectionVsZosSSID-limit
description: SqlCacheHolder-connectionVsZosSSID-limit
type: Integer
Value: (default is 550) increase it to 800 or 900

property name: SqlCacheHolder-connectionVsURL-limit
description: SqlCacheHolder-connectionVsURL-limit
type: Integer
Value: (default is 550) increase it to 800 or 900

```


https://community.appdynamics.com/t5/Java-Java-Agent-Installation-JVM/Java-app-agent-warnings/m-p/40339


In most cases this is due to some type of limit that has been reached which then in some instances completely stops the monitoring of BT's until the agent is reset or the JVM is restarted.

You can look in the logs for errors like this, where you find the keyword "exceeded"

WARN BoundsEnforcer - BoundsEnforcer for collection com.singularity.ee.agent.util.bounded.collections.BoundedConcurrentReferenceHashMap with service name TransactionMonitoringService and property name SqlCacheHolder-connectionVsZosSSID-limit has exceeded maximum size of 3300 entries

Have a look at the logs and you will most likely find which limit is being reached and then depending on what limit it is, either increase the limit or resolve the problem on why it's causing the limit to be reached.

https://community.appdynamics.com/t5/Java-Java-Agent-Installation-JVM/BTs-and-snapshots-are-not-being-captured/td-p/49869
