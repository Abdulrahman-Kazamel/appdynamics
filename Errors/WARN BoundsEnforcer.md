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
