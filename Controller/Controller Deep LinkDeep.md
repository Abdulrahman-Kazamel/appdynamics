
Controller Deep link are embedded links you see in alerts and are configured to be external URL access to the controller. 
Deep link can be changed either via Enterprise console (CLI or GUI) or Glassfish domain.xml file for older controller versions.

```shell
./platform-admin.sh update-service-configurations --service controller --job update-configs --args controllerExternalUrl=<serverprotocol>://<controller-host>:<controller-port>./platform-admin.sh update-service-configurations --service controller --job update-configs --args controllerExternalUrl=http://apm.newgenbank.com:8090
```

the same from Enterprise GUI configuration tab External URL