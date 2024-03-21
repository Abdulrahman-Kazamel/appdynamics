**Controller Setting Values**

 

cd \[CONTROLLER_HOME\]

bin/controller.sh login-db

USE controller;

```mysql
SELECT \* FROM account \\G;

SELECT \* FROM global_configuration WHERE name IN (\"appdynamics.on.premise.event.service.key\",\"appdynamics.es.eum.key\",\"appdynamics.on.premise.event.service.url\",\"eum.cloud.host\",\"eum.es.host\") \\G;

```
 



 
