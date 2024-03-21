##   Controller Sizing:

**Monitor System Resources:**

    - Check the available disk space with the command `df -h`.
    - Check the available memory with the command `free -m`.
    - Check the CPU utilization with the command `top`.
    - Check the network bandwidth with the command `bmon`.

**Review Controller Log Files:**
- Check the AppDynamics Controller log files for any error or warning messages related to sizing issues.

**Consider Sizing Adjustment:**

- Increase the Controller sizing if you observe high utilization of disk space, memory, CPU, or network bandwidth.

### Get the count of nodes and metrics in the controller database:
**Access the Controller's database:**
```bash
cd /opt/appdynamics/platform/product/controller/bin
./controller.sh login-db
```

```mysql
select from_unixtime(ts_min*60), count(distinct(node_id)), count(*) from metricdata_min where ts_min > (select max(ts_min) - 10
from metricdata_min) group by 1 order by 1;
```

*Based on the count of nodes and metrics, 
determine the appropriate controller size (demo, small, medium, or large) and add 20-30k for EUM BRUM or mobile app increase.

 Continuously monitor the performance of your controller and adjust the size as needed. 
   You can use the AppDynamics Dashboards and Reports to view the performance metrics of your controller.

**Additional Resources:**

- Refer to the [AppDynamics documentation](https://docs.appdynamics.com/display/PRO44/Controller+System+Requirements#ControllerSystemRequirements-ControllerSizing) for detailed information.
- Find the matrix for controller sizing in the playbook directory: `/opt/appdynamics/platform/platform-admin/archives/controller/20.11.1-1963/playbooks`.



 *The data directory for the controller's database 
 
```
/opt/appdynamics/platform/product/controller/db/data
```

 **Controller Database Management:**

- Controller database management:
    - Change to the controller directory using `cd opt/appdynamics/platform/product/controller/`.
    - Connect to the database using `./bin/controller.sh login-db`.
    - Show databases with `show databases`.
    - Use a specific database with `use controller`.
    - Show tables with `show tables`.