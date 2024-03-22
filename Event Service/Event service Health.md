
```bash
curl <http://localhost:9081/healthcheck?pretty=true>
curl -s \'<http://localhost:9200/_cat/allocation?v>\'
curl -s \'<http://localhost:9200/_cat/nodes?v>\'
curl -s \'<http://localhost:9200/_cat/health?v>\'


./bin/platform-admin.sh retrieve-events-service-logs
./bin/platform-admin.sh list-events-service-nodes
./bin/platform-admin.sh show-events-service-health
 # in the browser write
 # http://[your-ip-address]:9080/_ping //pong Event services or nginx 
```