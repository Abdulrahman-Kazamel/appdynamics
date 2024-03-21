 **Elastic Search Cluster Checks - 
 Please console into any one of the nodes in your Events Service cluster, run the following as one single curl command**,
 it will generate a text file with name your_hostname_status.txt in current working directory and attach it in the ticket note -

 

*Note [#1](https://help.appdynamics.com/hc/requests/1)**: The node(s) which you run the curl commands on must have the property  ad.es.node.http.enabled set to true in it\'s events-service-api-store.properties file and the host must be listening on TCP port 9200. 
This can be checked by running the command 
```bash
netstat -ant | grep "LISTEN" | grep "9200"
```
Refer [this community article](https://community.appdynamics.com/t5/Knowledge-Base/How-do-I-enable-the-Events-Service-debugging-port/ta-p/26128#.XUdYJFlCoAc.link) to temporarily enable it.)*



Please run below command as one single command , which will generate a text file with name your_hostname_config.txt and attach in ticket note -

```Shell
echo -e "1.Hostname: $(hostname) \n----\n 2.Health Check:\n $(curl -s 'http://localhost:9081/healthcheck?pretty=true') \n----\n 3.Account:\n $(curl -s 'http://localhost:9200/appdynamics_accounts/_search?pretty=true') \n----\n4.Account_v2:\n $(curl -s 'http://localhost:9200/appdynamics_accounts_v2/_search?pretty=true&size=100') \n----\n5.Nodes Status: \n $(curl -s 'http://localhost:9200/_cat/nodes?v') \n----\n6.Indices Status:\n $(curl -s 'http://localhost:9200/_cat/indices?v') \n----\n7.Shards Status:\n $(curl -s 'http://localhost:9200/_cat/shards?v') \n----\n8.Allocation Status:\n $(curl -s 'http://localhost:9200/_cat/allocation?v') \n----\n9.Event Type Metadata Status:\n $(curl -s 'http://localhost:9200/event_type_metadata/event_type_metadata/_search?pretty=true&size=100') \n----\n10.Unassigned Shards Reason:\n $(curl -s -XGET http://localhost:9200/_cat/shards?h=index,shard,prirep,state,unassigned.reason | grep -i unassigned) " >> $(hostname)_es_node_status_$(date +"%Y_%m_%d_%I_%M_%p").txt
```
 


