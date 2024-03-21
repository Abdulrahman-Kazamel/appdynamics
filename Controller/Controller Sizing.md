## Controller Sizing:

1- Monitor System Resources:
    Check the available disk space with the command ```df -h```.
    Check the available memory with the command ```free -m```.
    Check the CPU utilization with the command ```top```.
    Check the network bandwidth with the command ```bmon```.

2- Review the AppDynamics Controller log files for any error or warning messages related to sizing issues.

3- Consider increasing the Controller sizing if you see high utilization of disk space, memory, CPU, or network bandwidth.

4- Get the count of nodes and metrics in the controller database:

```
cd /opt/appdynamics/platform/product/controller/bin
./controller.sh login-db
```
```sh
select from_unixtime(ts_min*60), count(distinct(node_id)), count(*) from metricdata_min where ts_min > (select max(ts_min) - 10
from metricdata_min) group by 1 order by 1;
```

Based on the count of nodes and metrics, 
determine the appropriate controller size (demo, small, medium, or large) and add 20-30k for EUM BRUM or mobile app increase.

5- Continuously monitor the performance of your controller and adjust the size as needed. 
   You can use the AppDynamics Dashboards and Reports to view the performance metrics of your controller.

For more information, see the AppDynamics documentation at:[here](
https://docs.appdynamics.com/display/PRO44/Controller+System+Requirements#ControllerSystemRequirements-ControllerSizing).


 The matrix for controller sizing can be found in the playbook directory 
```
/opt/appdynamics/platform/platform-admin/archives/controller/20.11.1-1963/playbooks
```

 The data directory for the controller's database is 
 
```
/opt/appdynamics/platform/product/controller/db/data
```

 Controller database:

 - Change to the controller directory using `` cd opt/appdynamics/platform/product/controller/``.
 - Connect to the database using ``./bin/controller.sh login-db``
 - To show the databases, run ``show databases``.
 - To use a specific database, run ``use controller``.
 - To show tables, run `show tables`.
 
  To start the controller and glassfish server together, run 
 ```
 ./bin/startcontroller.sh
 ```
 To start each component alone, run ``./bin/controller.sh start-appserver`` or ``./bin/controller.sh start-db``
 
 Controller as a service to start automatically.
```
cd /opt/appdynamics/platform/products/controller/controller-ha/
./set_mysql_password_file.sh -p password
./init/install-init.sh
```
