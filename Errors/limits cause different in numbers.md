limits

 

> # Problem statement:
>
> You\'ve noticed that the number of calls is different than the number of snapshots, correct me if I\'m wrong.
>
>  
>
> **Analysis & observations**:
>
> In the logs I found:
>
> \[AD Thread Pool-Global1\] 30 Oct 2023 01:45:27,007 WARN ServiceEndPointADDRegistrar - ADD MessagingMessageListenerAdapter:InvalidateCashEvent_JMS has been flagged for blacklisting. Registration will not be re-attempted until agent reset.
>
> \[AD Thread Pool-Global1\] 30 Oct 2023 01:45:27,007 WARN ServiceEndPointADDRegistrar - ADD MessagingMessageListenerAdapter:InvalidateCashEvent failed to register w/ the Controller
>
> \[AD Thread Pool-Global1\] 30 Oct 2023 01:45:27,007 ERROR ServiceEndPointADDRegistrar - Failed to register ADDs
>
> \[ThreadPoolTaskExecutor-1\] 30 Oct 2023 02:45:28,406 ERROR WriterMaster - Internal buffers are full. So far failed \[1\] time(s) while offering messages to the write queue.
>
>  
>
> I\'m not sure if I can help you with the analytics but for now we will focus on this errors in the logs
>
>  
>
> **Next steps**:

1.  About this ADD error: This looks like a limit hit issue. Can you please:\
    1. Log into **admin.jsp\
    **2. Search for *Platform* keyword (see attached screenshot)\
    3. Check the values set for the two properties. If false, please set it to true. \
    4. Once enabled, please check the limits set on 

>               a. ***Default Limits*** page
>
>               b. ***By Account*** page
>
>       5. In either of the pages, the limit should be set to 4000. Please change it to a higher value.
>
>  
>
> ***Note:*** Please make sure you have same value across - **Controller Configurations**, **Default Limits** and **By Account**
>
>  
>
> Please let me know about the results and if the problem still persist please provide the fresh debug logs
>
>  

