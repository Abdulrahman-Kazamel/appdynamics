Some Quires

UNIQUE SESSIONS
 
```mysql
SELECT distinctcount(segments.httpData.sessionId) AS \"Unique Sessions\" FROM transactions WHERE segments.userData.Version = \"version_1.0\"`
```

Offer Given

```mysql
SELECT ((filter(count(\*), where segments.userData.UserStep = \"Offers\") \* 1.0) / (filter(count(\*), where segments.userData.UserStep = \"Authenticate\"))) \* 100 AS \"% Users Seeing Offers\" FROM transactions WHERE segments.userData.Version = \"version_1.0\"
```


Offer Conversion

```mysql
SELECT ((filter(count(\*), where segments.userData.UserStep = \"Convert Offer\") \* 1.0) / (filter(count(\*), where segments.userData.UserStep = \"Authenticate\"))) \* 100 AS \"% Conversion\" FROM transactions WHERE segments.userData.Version = \"version_1.0\"
```


offer converted

```mysql
SELECT count(\*) AS \"Offers Converted\" FROM transactions WHERE segments.userData.UserStep = \"Convert Offer\" and segments.userData.Version = \"version_1.0\"
```

offer revenue

```mysql
SELECT sum(segments.userData.\`Offer-Converted-Value\`) AS \"Offers Revenue\" FROM transactions WHERE segments.userData.UserStep = \"Convert Offer\" and segments.userData.Version = \"version_1.0\"
```

 
```mysql
SELECT funnel(segments.httpData.sessionId, segments.userData.UserStep = \"Authenticate\" AND segments.userData.Version = \"version_1.0\", segments.userData.UserStep = \"Account Profile\", segments.userData.UserStep = \"Offers\", segments.userData.UserStep = \"Convert Offer\") AS \"Authenticate,Account Profile,Receive Offer,Convert Offer\" FROM transactions WHERE application = \"Auto-Dialer\"
```

 
```mysql
SELECT segmants.userData.servicename, TransactionName, count(\*) FROM transactions WHERE application = \"\" segmants.userData.serviceName IS NOT null LIMIT 300
```


```mysql
The ADQL query is as follows: SELECT series(eventTimestamp, \'10m\'), count(transactionName) AS \"Failed Transactions\" FROM transactions WHERE application = \"my_et\" AND userExperience = \"ERROR\" AND transactionName = \"/AkwaKart/recharge.POST\"
```

 
```mysql
select \* from transactions where application = foo and transactionName = bar and tier = baz and primaryKey IS NOT NULL
```


```mysql
SELECT count(\*) FROM transactions WHERE application = \"Supercar-Trader\" AND transactionName = \"/Supercar-Trader/sell.jsp\" AND segments.httpData.sessionId IS NOT NULL
```

((And segmants.userdata.correlationID))


```mysql
Select count(\*) from transactions where application = \"application name\" AND segments.tier = \"tier name\" AND segments.node = \"node name\" AND transactionName = \"RequestProcessor.process\"
```



```mysql
Select distinct(segments.node), count(\*) from transactions where application = \"application name\" AND transactionName = \"RequestProcessor.process\"
```

 