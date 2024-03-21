
## Error Log Entry
[#|2023-08-23T15:24:09.438+0300|SEVERE|glassfish 4.1|com.sun.jersey.spi.container.ContainerResponse|_ThreadID=174;_ThreadName=http-listener-1(10);_TimeMillis=1692793449438;_LevelValue=1000;|The RuntimeException could not be mapped to a response, re-throwing to the HTTP container

java.lang.RuntimeException: Error occurred while getting bucket Name Prefix {}

at com.appdynamics.sim.controller.biz.cluster.store.S3BlobStore.getBucketNamePrefix(S3BlobStore.java:388)

vbnetCopy code

```
## Additional Information  
- For more details, please refer to the [AppDynamics documentation](https://docs.appdynamics.com/appd/23.x/latest/en/infrastructure-visibility/monitor-kubernetes-with-the-cluster-agent/administer-the-cluster-agent/enable-log-collection-for-failing-pods). 
- If you want to disable this feature, you can set the following properties to "false" via the [Controller Administration Console](https://docs.appdynamics.com/appd/23.x/latest/en/appdynamics-essentials/access-the-administration-console) (admin.jsp) and then verify that the log messages associated with failed HTTP requests to AWS are no longer appearing in the Controller's server.log: 
- 
- | Property Name               | Description                                                                                           | Configuration Location                         | Default Value | |-----------------------------|-------------------------------------------------------------------------------------------------------|------------------------------------------------|---------------| | sim.cluster.logs.capture.enabled | An option to enable or disable log capturing. This option is enabled by default.                  | Controller Administration Console (Root User) | true          | | sim.cluster.logs.s3.enabled | An option to save the logs in the S3 bucket. If you specify the value as false, the logs are saved in the Controller filesystem. | Controller Administration Console (Root User) | true          |  ## Recommendation  Above is a recommendation to fix those errors. 
- ## Error Log Entry
```

23 Aug 2023 13:24:10.859 +0200 Analytics Event Dispatcher Processors-19 AD.AnalyticsPublisherHelp ERROR Error publishing analytics events for [BatchId{accountName='ETISALATEGYPTa0Q2H00000K9X9UUAV', key='13459a...', eumEventType='MobileSnapshot', operation='INSERT', idPath='', mergeFields='[]'}], IO exception com.appdynamics.analytics.client.common.exceptions.ClientException: Could not execute request to [http://10.208.10.36:9080/v3/events/MobileSnapshot/event:org.apache.http.NoHttpResponseException](http://10.208.10.36:9080/v3/events/MobileSnapshot/event:org.apache.http.NoHttpResponseException): 10.208.10.36:9080 failed to respond

sqlCopy code

`## Connectivity Check  Can you please check the connection to Elasticsearch (ES) from the Controller and EUM server using the following command, and share the output:`

curl <ES_URL>:9080/_ping