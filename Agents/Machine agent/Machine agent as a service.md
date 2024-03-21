
```
sudo nano /etc/systemd/system/appdynamics-machine-agent.service
```

**Edit the Service Unit File**: Add the following content to the `appdynamics-machine-agent.service` file:

```bash
[Unit]
Description=AppDynamics Machine Agent 
After=network.target 

[Service]
Type=simple
#Modify the `ExecStart` line to match the path of your Java installation and the location of the Machine Agent JAR file.
ExecStart=/usr/bin/java -jar /opt/appdynamics/machineagent/machineagent.jar
Restart=always
RestartSec=3 

[Install]
WantedBy=multi-user.target
```

```
sudo systemctl daemon-reload
```

## start and enable your service 

```
sudo systemctl start appdynamics-machine-agent
sudo systemctl enable appdynamics-machine-agent
sudo systemctl status appdynamics-machine-agent
```
