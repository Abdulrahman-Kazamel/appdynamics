

> \[#\|2023-08-23T15:24:09.438+0300\|SEVERE\|glassfish 4.1\|com.sun.jersey.spi.container.ContainerResponse\|\_ThreadID=174;\_ThreadName=http-listener-1(10);\_TimeMillis=1692793449438;\_LevelValue=1000;\|The RuntimeException could not be mapped to a response, re-throwing to the HTTP container
>
> java.lang.RuntimeException: Error occurred while getting bucket Name Prefix {}
>
> at com.appdynamics.sim.controller.biz.cluster.store.S3BlobStore.getBucketNamePrefix(S3BlobStore.java:388)
>
>  


-   Please see the link below for more details:  <https://docs.appdynamics.com/appd/23.x/latest/en/infrastructure-visibility/monitor-kubernetes-with-the-cluster-agent/administer-the-cluster-agent/enable-log-collection-for-failing-pods>

-   If you wish to disable this feature, you can set the following properties to \"false\" through the [Controller Administration Console](https://docs.appdynamics.com/appd/23.x/latest/en/appdynamics-essentials/access-the-administration-console) (admin.jsp) and then verify the log messages tied to failed HTTP requests to AWS  are no longer appearing in the Controller\'s  server.log:

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 20%" />
<col style="width: 38%" />
<col style="width: 7%" />
</colgroup>
<thead>
<tr class="header">
<th>sim.cluster.logs.capture.enabled</th>
<th><p>An option to enable or disable log capturing.</p>
<p>This option is enabled by default.</p></th>
<th><p>Controller Administration Console with root user permission</p>
<p>You can configure this setting at both account level (<strong>Account Settings</strong>) and Controller level (<strong>Controller Settings</strong>)</p></th>
<th>true</th>
</tr>
</thead>
<tbody>
</tbody>
</table>

<table style="width:100%;">
<colgroup>
<col style="width: 28%" />
<col style="width: 32%" />
<col style="width: 31%" />
<col style="width: 7%" />
</colgroup>
<thead>
<tr class="header">
<th>sim.cluster.logs.s3.enabled</th>
<th>An option to save the logs in the S3 bucket. If you specify the value as false, the logs are saved in the Controller filesystem.</th>
<th>Controller Administration Console with root user permission (<strong>Controller Settings</strong>)</th>
<th><p>true</p>
<p> </p></th>
</tr>
</thead>
<tbody>
</tbody>
</table>

-   Above is a recommendation to fix those errors.

>  
>
> 23 Aug 2023 13:24:10.859 +0200 Analytics Event Dispatcher Processors-19 AD.AnalyticsPublisherHelp ERROR Error publishing analytics events for \[BatchId{accountName=\'ETISALATEGYPTa0Q2H00000K9X9UUAV\', key=\'13459a\...\', eumEventType=\'MobileSnapshot\', operation=\'INSERT\', idPath=\'\', mergeFields=\'\[\]\'}\], IO exception com.appdynamics.analytics.client.common.exceptions.ClientException: Could not execute request to <http://10.208.10.36:9080/v3/events/MobileSnapshot/event:org.apache.http.NoHttpResponseException>: 10.208.10.36:9080 failed to respond

-   Can you please check the connection to ES from Controller and EUM server using below, please share the output:

> curl \<ES_URL\>:9080/\_ping
>
