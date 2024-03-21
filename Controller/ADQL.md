 

 

> Could you please:

1.  Tell me, how is the **segments.userData.servicename** created? Since this is a custom userData, how is it captured? Please share a snipped,

2.  Can we try the following SQL qurry, and see if the issue is still the same:

>  
>
> SELECT segments.userData.servicename, transactionName, count(\*) from transactions WHERE application = \"subscription\" AND segments.userData.servicename IS NOT null OR segments.userData.servicename != \"null\" LIMIT 2000
>
>  
>
> SELECT segments.userData.servicename, transactionName, count(\*) from transactions WHERE application = \"subscription\" AND segments.userData.servicename != \"null\" LIMIT 2000
>
>  

>
>  
>
> SELECT count(\*) FROM transactions WHERE application = \"Supercar-Trader\"
>
>  
>
> Select count(\*) from transactions where application = \"application name\" AND segments.tier = \"tier name\" AND segments.node = \"node name\" AND transactionName = \"RequestProcessor.process\"
>
>  
>
> SELECT count(\*) FROM transactions WHERE application = \"Supercar-Trader\" AND segments.tier = \"Web-Portal\" AND segments.node = \"Web-Portal_Node-01\"
>
>  
>
> Select distinct(segments.node), count(\*) from transactions where application = \"application name\" AND transactionName = \"RequestProcessor.process\"
>
>  
>
> SELECT distinct (segments.node), count(\*) FROM transactions WHERE application = \"Supercar-Trader\"
>
>  
>
> #Show User Experience is reported in analytics
>
> Select transactionName, requestGUID, userExperience from transactions where application = \"application name\" AND segments.tier = \"tier name\" AND segments.node = \"node name\" AND transactionName = \"RequestProcessor.process\"
>
>  
>
>  

