
## ERROR

( 20/ 26) Load Events Service cluster configuration: SUCCESS
( 21/ 26) Load all ES cluster hosts into execution context.: SUCCESS
( 22/ 26) es_cluster_health_stage: FAILED
Events Service installation failed.
Failure occurred: es_cluster_health_stage
Error message:
Unable to check health of Events Service hosts [eventsservice, eventsservice-02, eventsservice-03] through port 9080.
   }
}


Caused by: com.fasterxml.jackson.databind.exc.ValueInstantiationException: Cannot construct instance of `com.appdynamics.common.framework.version.CalendarVersion`, problem: 4.5.2.20651is not a valid calendar version




 [ERROR]  [main]  [c.a.common.framework.AbstractApp]  Severe error occurred while starting application [events-service-api-store]. Shutdown procedure will commence soon
com.google.inject.ProvisionException: Unable to provision, see the following errors:

1) Error in custom provider, java.lang.IllegalArgumentException: Service key not provided in any source.
  at com.appdynamics.analytics.client.module.ServiceKeyProviderModule.provideServiceKey(ServiceKeyProviderModule.java:47)
  at com.appdynamics.analytics.client.module.ServiceKeyProviderModule.provideServiceKey(ServiceKeyProviderModule.java:47)
  while locating com.appdynamics.analytics.client.module.ServiceKey
    for parameter 4 at com.appdynamics.analytics.processor.slm.resource.SlmResourceModule.createSlmConfigService(SlmResourceModule.java:57)
  at com.appdynamics.analytics.processor.slm.resource.SlmResourceModule.createSlmConfigService(SlmResourceModule.java:57)
  at com.appdynamics.analytics.processor.slm.resource.SlmResourceModule.createSlmConfigService(SlmResourceModule.java:57)
  while locating com.appdynamics.analytics.processor.slm.service.performance.SlmPerfConfigService
    for parameter 1 at com.appdynamics.analytics.processor.slm.resource.SlmResourceModule.onStart(SlmResourceModule.java:114)
  while locating com.appdynamics.analytics.processor.slm.resource.SlmResourceModule
Caused by: java.lang.IllegalArgumentException: Service key not provided in any source.
        at com.appdynamics.analytics.client.module.ServiceKeyProviderModule.provideServiceKey(ServiceKeyProviderModule.java:49)
        at com.appdynamics.analytics.client.module.ServiceKeyProviderModule$$FastClassByGuice$$2e553554.invoke(<generated>)
        at com.google.inject.internal.ProviderMethod$FastClassProviderMethod.doProvision(ProviderMethod.java:272)
        at com.google.inject.internal.ProviderMethod.get(ProviderMethod.java:172)





java.lang.IllegalArgumentException: Service key not provided in any source
  
  
  ##  Soltion
   I don't remeber for now as this is old but I remember to check everything and contact me  and this might be becauce 
   Events Service is unable to start due to a missing service key.
   The "Service key not provided in any source" error message indicates that the required key for accessing the service is not present. 
   To resolve this issue, you need to make sure that you have the correct service key configured for the Events Service. 
   This key can usually be found in the AppDynamics configuration files, or it can be obtained from the AppDynamics support team.
   Once you have the correct key, you should update the configuration files with the key and restart the Events Service.
