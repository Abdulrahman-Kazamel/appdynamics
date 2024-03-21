in the last lab 01-installation, you might not find data loaded in the drop-down menu and in the search tab.
to solve this issue you need to follow the steps in the new version created by Maven.
https://github.com/Appdynamics/DevNet-Labs/tree/master/applications/Supercar-Trader

# repo data below 

This app uses Maven for the build. To get a build environment working:

Have Git installed and working

Get Maven installed

Get the tar.gz or zip package from the Maven site
Unpack somewhere on your file system, e.g. "/opt/maven/apache-maven-3.3.9/"
Add the Maven bin directory to your path, e.g. in "vi .bash_profile" add:

 `export M2_HOME=/opt/maven/apache-maven-3.3.9
  export M2=$M2_HOME/bin
  export PATH=$PATH:$M2`
  
Login and out of your shell to get the new path or 
`source .bash_profile`
Test using the command "mvn". This should run Maven and indicate "Build Failure"
Use Git to obtain the source code


 git clone https://github.com/Appdynamics/DevNet-Labs.git
 
Change to the /applications/Supercar-Trader/ directory and then execute the following for the build


 `mvn install`
This should run and leave "Supercar-Trader.war" in the "target/" directory

# deploy the new application created by "mvn install" command in the Tomcat manager App
"/opt/appdynamics/DevNet-Labs/applications/Supercar-Trader/target/Supercar-Trader.war"

# A very important thing is to set the Supercar-Trader MySQL root password to "Welcome1!"
`cd /opt/appdynamics/DevNet-Labs/applications/Supercar-Trader/src/main/resources/db`

`mysql -u root -pWelcome1! < mysql-01.sql
 mysql -u root -pWelcome1! < mysql-02.sql
 mysql -u root -pWelcome1! < mysql-03.sql`

# reboot your server 