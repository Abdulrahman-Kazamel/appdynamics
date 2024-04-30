
### to grep Un Assigned indexes

```bash 
curl -XGET localhost:9200/\_cat/shards?h=index,shard,prirep,state,unassigned.reason\| grep UNASSIGNED
```

### Manually assign each node by

```bash
curl -XPOST \'nginx:9200/\_cluster/reroute\' -d \'{

\"commands\" : \[ {

\"allocate\" : {

\"index\" : \"appdynamics_api_keys_v1\",

\"shard\" : 0,

\"node\" : \"100.100.20.103\",

\"allow_primary\" : true

}

}

\]}\'
```
