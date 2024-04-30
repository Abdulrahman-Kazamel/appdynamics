
### Change directory to the Controller home:

```Shell
cd \[CONTROLLER_HOME\]
bin/controller.sh login-db
```

### Execute MySQL queries to retrieve setting values:

```mysql
USE controller;
SELECT \* FROM account \\G;
SELECT \* FROM global_configuration WHERE name IN (\"appdynamics.on.premise.event.service.key\",\"appdynamics.es.eum.key\",\"appdynamics.on.premise.event.service.url\",\"eum.cloud.host\",\"eum.es.host\") \\G;
```