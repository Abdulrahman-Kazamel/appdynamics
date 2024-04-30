

\[root@eum mysql\]# cd /opt/appdynamics/eum/eum-processor

\[root@eum eum-processor\]# ./bin/eum.sh start

Using EUM_HOME: /opt/appdynamics/eum/eum-processor

Using EUM_PID: pid.txt

Existing PID file found during start.

Removing/clearing stale PID file.

EUM Processor started (PID=24081).

\[root@eum eum-processor\]# INFO \[2024-01-18 08:35:31,272\] org.eclipse.jetty.util.log: Logging initialized \@2873ms to org.eclipse.jetty.util.log.Slf4jLog

INFO \[2024-01-18 08:35:31,352\] io.dropwizard.server.DefaultServerFactory: Registering jersey handler with root path prefix: /

INFO \[2024-01-18 08:35:31,354\] io.dropwizard.server.DefaultServerFactory: Registering admin handler with root path prefix: /

java.lang.RuntimeException: Failed to update Analytics events. Please see log for details of errors!

at com.appdynamics.eum.processor.EUMProcessorServerApplication.prepareAnalyticsAccounts(EUMProcessorServerApplication.java:419)

at com.appdynamics.eum.processor.EUMProcessorServerApplication.run(EUMProcessorServerApplication.java:302)

at com.appdynamics.eum.processor.EUMProcessorServerApplication.run(EUMProcessorServerApplication.java:236)

at io.dropwizard.cli.EnvironmentCommand.run(EnvironmentCommand.java:59)

at io.dropwizard.cli.ConfiguredCommand.run(ConfiguredCommand.java:98)

at io.dropwizard.cli.Cli.run(Cli.java:78)

at io.dropwizard.Application.run(Application.java:94)

at com.appdynamics.eumcloud.EUMProcessorServer.main(EUMProcessorServer.java:40)

Error Starting EUM Processor Serverjava.lang.RuntimeException: Failed to update Analytics events. Please see log for details of errors!

java.lang.RuntimeException: Failed to update Analytics events. Please see log for details of errors!

at com.appdynamics.eum.processor.EUMProcessorServerApplication.prepareAnalyticsAccounts(EUMProcessorServerApplication.java:419)

at com.appdynamics.eum.processor.EUMProcessorServerApplication.run(EUMProcessorServerApplication.java:302)

at com.appdynamics.eum.processor.EUMProcessorServerApplication.run(EUMProcessorServerApplication.java:236)

at io.dropwizard.cli.EnvironmentCommand.run(EnvironmentCommand.java:59)

at io.dropwizard.cli.ConfiguredCommand.run(ConfiguredCommand.java:98)

at io.dropwizard.cli.Cli.run(Cli.java:78)

at io.dropwizard.Application.run(Application.java:94)

at com.appdynamics.eumcloud.EUMProcessorServer.main(EUMProcessorServer.java:40)

\[root@eum eum-processor\]#

\[root@eum eum-processor\]#

\[root@eum eum-processor\]# cd /opt/appdynamics/

\[root@eum appdynamics\]# ll

total 2527004

drwxr-xr-x 13 root root 270 Jan 1 23:51 eum

-rw-r\--r\-- 1 root root 2587645217 Jan 15 16:48 eum_bak.tar.z

-rw-r\--r\-- 1 root root 3078 Jan 1 23:53 license.lic

drwxr\--r\-- 3 root root 21 Jan 16 21:16 platform

\[root@eum appdynamics\]# cd eum

\[root@eum eum\]# ll

total 232

drwxr-xr-x 3 root root 69 Jan 1 23:47 archives

drwxr-xr-x 2 root root 6 Jan 1 23:46 backup

-rwxr-xr-x 1 root root 724 Jul 20 08:46 check-nix-distro.sh

drwxr-xr-x 6 root root 4096 Jan 18 10:35 data

drwxr-xr-x 5 root root 40 Jan 18 10:35 eum-processor

18 Jan 2024 10:40:10.370 +0200 main AD.BulkUpdateAPICaller INFO finished bulk update for event type \[BrowserResourceRecord\], response \[statusCo

de=COMPLETED, statusMessage=No accounts were found for the given event type, errorStack=\], url \[<http://100.100.20.110:9080/v3/events/BrowserResourceRecord/_bulk?timeout=>

3600000\]

18 Jan 2024 10:40:10.371 +0200 main AD.BulkUpdateAPICaller INFO Start updating MobileNonFatalIssueRecord

18 Jan 2024 10:40:10.380 +0200 main AD.BulkUpdateAPICaller INFO successfully sent bulk update request for event type \[MobileNonFatalIssueRecord\]

for all accounts - status code \[200\]

18 Jan 2024 10:40:10.381 +0200 main AD.BulkUpdateAPICaller INFO finished bulk update for event type \[MobileNonFatalIssueRecord\], response \[stat

usCode=COMPLETED, statusMessage=No accounts were found for the given event type, errorStack=\], url \[<http://100.100.20.110:9080/v3/events/MobileNonFatalIssueRecord/_bulk>?

timeout=3600000\]

18 Jan 2024 10:40:10.381 +0200 main AD.BulkUpdateAPICaller INFO Start updating SynthBrowserRecord

18 Jan 2024 10:40:10.390 +0200 main AD.BulkUpdateAPICaller INFO successfully sent bulk update request for event type \[SynthBrowserRecord\] for al

l accounts - status code \[200\]

18 Jan 2024 10:40:10.390 +0200 main AD.BulkUpdateAPICaller INFO finished bulk update for event type \[SynthBrowserRecord\], response \[statusCode=

COMPLETED, statusMessage=No accounts were found for the given event type, errorStack=\], url \[<http://100.100.20.110:9080/v3/events/SynthBrowserRecord/_bulk?timeout=360000>

0\]

18 Jan 2024 10:40:10.391 +0200 main AD.BulkUpdateAPICaller INFO Start updating SessionRecord

18 Jan 2024 10:40:10.409 +0200 main AD.BulkUpdateAPICaller INFO successfully sent bulk update request for event type \[SessionRecord\] for all acc

ounts - status code \[202\]

18 Jan 2024 10:40:10.415 +0200 main AD.BulkUpdateAPICaller INFO Current status of updating for event type \[SessionRecord\], response \[statusCode

=INPROGRESS, statusMessage=In progress, errorStack=\], url \[/v3/events/SessionRecord/\_bulk/9a69c76b6b934bbd97e44318085ffd8d\]

18 Jan 2024 10:40:11.373 +0200 main AD.BulkUpdateAPICaller INFO finished bulk update for event type \[SessionRecord\], response \[statusCode=COMPL

ETED, statusMessage=Completed, errorStack=\], url \[<http://100.100.20.110:9080/v3/events/SessionRecord/_bulk?timeout=3600000>\]

18 Jan 2024 10:40:11.379 +0200 main AD.ALL ERROR

\| Error Starting EUM Processor Server

\| java.lang.RuntimeException: Failed to update Analytics events. Please see log for details of errors!

\| at com.appdynamics.eum.processor.EUMProcessorServerApplication.prepareAnalyticsAccounts(EUMProcessorServerApplication.java:419)

\| at com.appdynamics.eum.processor.EUMProcessorServerApplication.run(EUMProcessorServerApplication.java:302)

\| at com.appdynamics.eum.processor.EUMProcessorServerApplication.run(EUMProcessorServerApplication.java:236)

\| at io.dropwizard.cli.EnvironmentCommand.run(EnvironmentCommand.java:59)

\| at io.dropwizard.cli.ConfiguredCommand.run(ConfiguredCommand.java:98)

\| at io.dropwizard.cli.Cli.run(Cli.java:78)

\| at io.dropwizard.Application.run(Application.java:94)

\| at com.appdynamics.eumcloud.EUMProcessorServer.main(EUMProcessorServer.java:40)

\|

+\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\--
