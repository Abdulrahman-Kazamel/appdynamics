

1- Install two instances of the AppDynamics Controller, one as the Master and one as the Slave.

2- Configure the database replicator for Master and Slave setup.

3- Run the following command to activate the HA modules:
   ```sh
   ./bin/platform-admin.sh submit-job --service controller --job activate-ha-modules 
   ```
   
   • Activate HA Module : You need to activate the HA Modules to ensure the EC is no longer going to
     be in the path of the HA process. As part of the new EC design, EC no longer handle the failover
     process.

4- The Watchdog process runs on both the Master and the Slave Controller, 
   monitoring each other and automatically performing a failover if the other Controller goes down.
   
5- The Master Controller and the Slave Controller must be connected to a common database and data is synced between them using R-sync.


You need to consider this: 

   It is important to note that AppDynamics HA only works in Active-Passive mode,
   with one Controller active at a time and two databases up, and moving data between them using R-sync. 
   The Slave Controller uses the Watchdog to always monitor the Master and perform a failover if it becomes unhealthy.

   • HA Servers should have identical OS, CPU, disk and Ram.
   • Login shell must be bash (/bin/bash)
   • Port 3388 must be opened between the controllers (this is for DB replication)
   • Time Synchronization – Use NTP
   • The two HA hosts must have identical writable paths managed by remote user
   • HA Licenses for the secondary Controller


