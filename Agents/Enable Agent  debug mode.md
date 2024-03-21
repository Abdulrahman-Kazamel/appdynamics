

To enable debug mode for the Java Agent, you can choose one of the following options:

## Option 1: Collect Debug Logs from Controller UI

Recommended option is Option 1.

1. Navigate to the Controller UI and collect debug logs from the UI. Refer to the attached screenshot image. Wait for logs request to be completed then download the logs.

## Option 2: Enable Debug Level Capture

Follow these steps to enable debug level capture from the agent installing directory:

1. Edit the log4j2.xml file located at `<agent-install-dir>/ver23.x.x/conf/logging`.
2. To turn debug logging ON, replace "info" with "debug" in log4j2.xml file as shown below:

```xml
<!-- to control the logging level of the agent log files, change "level" attribute. level="all|trace|debug|info|warn|error" -->
<AsyncLogger name="com.singularity" level="debug" additivity="false">
    <AppenderRef ref="DefaultAppender"/>
    <AppenderRef ref="RESTAppender"/>
</AsyncLogger>
```

3. Allow the agent to run for 10 minutes.
4. Zip the entire folder located at `<agent_installation_dir>/ver23.x.x/logs/<node>` and send us the log files.
5. After collecting logs, change the "debug" back to "info" in log4j2.xml.