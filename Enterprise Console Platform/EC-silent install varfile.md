*edit the below and save it into ec.varfile*

```bash
serverHostName=HOST_NAME\
sys.languageId=en\
disableEULA=true

platformAdmin.port=9191\
platformAdmin.databasePort=3377\
platformAdmin.dataDir=/opt/appdynamics/platform/mysql/data\
platformAdmin.databasePassword=ENTER_PASSWORD\
platformAdmin.databaseRootPassword=ENTER_PASSWORD\
platformAdmin.adminPassword=ENTER_PASSWORD\
platformAdmin.useHttps\$Boolean=false\
sys.installationDir=/opt/appdynamics/platform
```
 
```bash
./platform-setup-64bit-linux.sh -q -varfile \~/ec.varfile
```

*From \<https://docs.appdynamics.com/appd/onprem/24.x/latest/en/enterprise-console/install-the-enterprise-console>*
