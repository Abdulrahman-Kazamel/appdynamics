
`sudo yum install java`
`java -version`
`cd /usr/lib/jvm/java-path/` press tab this path and copy it to .bash_profile
`vim .bash_profile`
add this line 
export JAVA_HOME=full path you got from step three
save and run this command `source .bash_profile`
make sure by 
```bash

echo $JAVA_HOME
# the output should be the path you entered above 
```
also `yum install java-devel -y` as this package solved some issues later 