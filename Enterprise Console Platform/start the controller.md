

To start the controller and glassfish server together, run:
```shell
 ./bin/startcontroller.sh 
```

*To start each component alone, run:*

```shell
./bin/controller.sh start-appserver
./bin/controller.sh start-db
```

*Configure the Controller as a service to start automatically:*

```shell
cd /opt/appdynamics/platform/products/controller/controller-ha/ 
./set_mysql_password_file.sh -p password ./init/install-init.sh
```