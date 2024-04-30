# Configuring AppDynamics Database Agent as a Service

To configure the AppDynamics Database Agent as a service on Linux, follow these steps:

1. **Create the Init Script**:

```bash
#!/bin/bash
# Init file for AppDynamics Database Agent
# chkconfig: 2345 60 25
# description: Database agent for AppDynamics

# Set the Java install directory
JAVA="/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.382.b05-1.el7_9.x86_64"

# Set the agent's install directory
AGENT_HOME="/opt/appdynamics/dbagent"
AGENT="$AGENT_HOME/db-agent.jar"

# Set a unique name for the Controller (required when a machine agent is also running on the same hardware)
AGENT_OPTIONS="-Dappdynamics.agent.uniqueHostId='unique host ID'"

# Agent Options
AGENT_OPTIONS=""
#AGENT_OPTIONS="$AGENT_OPTIONS -Dappdynamics.agent.logging.dir="
#AGENT_OPTIONS="$AGENT_OPTIONS -Dmetric.http.listener=true | false"
#AGENT_OPTIONS="$AGENT_OPTIONS -Dmetric.http.listener.port=<port>"
#AGENT_OPTIONS="$AGENT_OPTIONS -Ddbagent.name=<db_agent_name>"

start() {
    nohup $JAVA $AGENT_OPTIONS -Xmx1536m -jar $AGENT > /dev/null 2>&1 &
}

stop() {
    ps -opid,cmd | egrep "[0-9]+ $JAVA.*db-agent" | awk '{print $1}' | xargs --no-run-if-empty kill -9
}

case "$1" in
start)
    start
    ;;
stop)
    stop
    ;;
restart)
    stop
    start
    ;;
*)
    echo "Usage: $0 start|stop|restart"
esac
```

**Change File Permissions and Move to init.d**:
```
chmod 755 db-agent mv db-agent /etc/init.d/
```

**Add to System Services and Enable Autostart**:
```
chkconfig --add db-agent chkconfig --level 2345 db-agent on
```

*From \<<https://docs.appdynamics.com/appd/22.x/files/22.4/en/168012320/168012321/1/1641511806000/StartDatabaseAgent.txt>\>*
