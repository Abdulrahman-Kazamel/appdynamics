
ssh-keygen

ssh-keygen -t rsa -b 2048 -N \'\' -m pem

ssh-copy-id root@10.0.30.44


bin/platform-admin.sh add-credential \--credential-name eventsservice-01 \--type ssh \--user-name root \--ssh-key-file /root/.ssh/appd-analytics.pem

bin/platform-admin.sh add-credential \--credential-name 10.0.30.45 \--type ssh \--user-name root \--ssh-key-file /root/.ssh/appd-analytics.pem

 
bin/platform-admin.sh add-hosts \--host-file \<file path to host file\> \--credential \<credential name\>

 
/opt/appdynamics/platform/product/controller/db/data
 

bin/platform-admin.sh remove-dead-hosts \--hosts \<host name\>

 

 

./bin/platform-admin.sh add-hosts \--hosts eventsservice \--credential \"Events Service\" \--platform-name AppDPlatform

./bin/platform-admin.sh add-hosts \--hosts eventsservice-01 \--credential eventsservice-01 \--platform-name AppDPlatform

./bin/platform-admin.sh add-hosts \--hosts 10.0.30.45 \--credential eventsservice-01 \--platform-name AppDPlatform

 

 

\"bin/platform-admin.sh install-events-service \--profile prod \--hosts eventsservice-01 eventsservice-02 eventsservice-03 \--data-dir /opt/appdynamics/eventsservice \--platform-name AppDPlatform\"

 

bin/platform-admin.sh submit-job \--platform-name AppDPlatform \--service events-service \--job stop

bin/platform-admin.sh submit-job \--platform-name AppDPlatform \--service events-service \--job start

 

 

appdynamics.on.premise.event.service.key 404fed9b-2e45-4e96-81e5-64d65b92f499

appdynamics.es.eum.key 70aef14e-e189-46cf-98eb-8c2780a4661a

 

 

 

 

 
