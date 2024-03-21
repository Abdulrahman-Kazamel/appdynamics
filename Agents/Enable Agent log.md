

> Chose one of these option. Recommended option is Option 1.
>
>  
>
> Option 1 :  Please navigate to controller UI and collect debug logs from controller UI (refer to the attached screenshot image). Wait for logs request to be completed then download the logs.
>
>  
>
> Option 2:  Please enable DEBUG level capture from the agent installing directory using the below steps
>
>  
>
>  
>
> Steps for enabling java agent debug mode:

-   Edit log4j2.xml file located here: \<agent-install-dir\>/ver23.x.x/conf/logging.

-   to turn debug logging ON, replace \"info\" with \"debug\" in log4j2.xml file (as shown below).

> \<!\-- to control the logging level of the agent log files, change \"level\" attribute. level=\"all\|trace\|debug\|info\|warn\|error\"\--\>
>
> \<AsyncLogger name=\"com.singularity\" level=\"debug\" additivity=\"false\"\>
>
> \<AppenderRef ref=\"DefaultAppender\"/\>
>
> \<AppenderRef ref=\"RESTAppender\"/\>
>
> \</AsyncLogger\>

-   allow the agent to run for 10mins and send us over the log files (zip the entire folder - \<agent_installation_dir\>/ver23.x.x/logs/\<node\>)

-   change the \'debug\' back to \'info\' in log4j2.xml.

>  

