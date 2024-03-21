

This feature is only available in SaaS controller. Its not available in on-prem controller that you seem to be using unfotunately.

[https://docs.appdynamics.com/appd/21.x/latest/en/application-monitoring/business-transactions/monito\...](https://docs.appdynamics.com/appd/21.x/latest/en/application-monitoring/business-transactions/monitor-the-performance-of-business-transactions/automated-transaction-diagnostics)

Seems like its enabled in your environment. Please set the microservice.snapshot.analysis.enabled flag to false from admin.jsp page to disable this feature so that you stop seeing this message.

 

*From \<<https://community.appdynamics.com/t5/Controller-SaaS-On-Premises/cannot-fetch-transaction-Diagnostics-issues/td-p/51891>\>*

 
#cannotfetch transaction Diagnostics issues
 
