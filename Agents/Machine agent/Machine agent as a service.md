## the best practice to set agent as a service 

*to run machine agent as part of start up, copy /etc/init.d and /etc/sysconfig files to your system /etc*

 *check the correct path of you agent home and user in sysconfg file*



==============================================================

### the below is built by community and I have tested it and worked for me but the best practice is above

```bash
vi /etc/systemd/system/appdynamics-machine-agent.service
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

```bash
sudo systemctl daemon-reload
```

## start and enable your service 

```bash
sudo systemctl start appdynamics-machine-agent
sudo systemctl enable appdynamics-machine-agent
sudo systemctl status appdynamics-machine-agent
```
