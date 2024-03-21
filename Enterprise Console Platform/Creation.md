*1- Creating the platform:*
```bash
./platform-admin.sh create-platform --name <AppDPlatform> --installation-dir /opt/appdynamics/platform/product
```

*2- Adding credentials:*
```bash
./platform-admin.sh add-credential --credential-name <clicredential> --type ssh --user-name <root> --ssh-key-file /root/.ssh/id_rsa
```

*3- Adding hosts:*
```bash
./platform-admin.sh add-hosts --hosts <platformadmin>  ==> name of platformadin
```

*4- remove-dead-hosts*
```bash
bin/platform-admin.sh remove-dead-hosts --hosts <host name>
./bin/platform-admin.sh add-hosts --hosts eventsservice --credential "Events Service" --platform-name AppDPlatform
```
    
*5- Installing the Controller:*
```bash
./platform-admin.sh submit-job --service controller/Eventservices --job install/update/upgrade --args controllerPrimaryHost=<platformadmin> controllerAdminUsername=admin controllerAdminPassword=password controllerRootUserPassword=password mysqlRootPassword=password
```
     
*6- Checking the Controller's status:*
```bash
curl http://controller-ip:8090/controller/rest/serverstatus
```

*7- Verifying the applications:*
```bash
curl --user admin@customer1:password http://controller-ip:8090/controller/rest/applications
```

Note: Ensure that you replace the placeholders such as <platformadmin>, controller-ip, and password with actual values before running the commands.


### Adding SSH Passwordless Login

```bash 
scp ~/.ssh/myserver.pub host1:/tmp
scp ~/.ssh/myserver.pub host2:/tmp
scp ~/.ssh/myserver.pub host3:/tmp

cat /tmp/appd-analytics.pub >> .ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

# or skip all above by one coomand
ssh-copy-id user@server 
```


*8- install event service *
```bash
bin/platform-admin.sh install-events-service --profile prod --hosts eventsservice-01 eventsservice-02 eventsservice-03  --data-dir /opt/appdynamics/eventsservice --platform-name AppDPlatform
```

*start and stop the cluster*
``` shell
 bin/platform-admin.sh submit-job --platform-name AppDPlatform --service events-service --job stop
 bin/platform-admin.sh submit-job --platform-name AppDPlatform --service events-service --job start
bin/platform-admin.sh submit-job --platform-name AppDPlatform --service events-service --job restart-cluster
```

 *list event service nodes nodes*
```bash
bin/platform-admin.sh list-hosts
./bin/platform-admin.sh list-nodes --service events-service
./bin/platform-admin.sh show-events-service-health 
 bin/platform-admin.sh retrieve-events-service-logs
```
 

### stop start each node of event service manually 

```bash
cd /opt/appdynamics/platform/product/events-service/processor
bin/events-service.sh stop -f && rm -r events-service-api-store.id && rm -r elasticsearch.id
nohup ./bin/events-service.sh start -p ./conf/events-service-api-store.properties &
```
### tune event service

```bash
sudo <installation_dir>/events-service/processor/bin/tool/tune-system.sh
chmod +x tune-system.sh 
./tune-system.sh
```

###  Checking Logs for Enterprise Console
```shell
tail -f /opt/appdynamics/platform/platform-admin/logs/platform-admin-server.log
```