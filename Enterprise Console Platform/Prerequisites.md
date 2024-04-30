Before setting up AppDynamics, it is important to validate and configure the following prerequisites on each host in the environment.

*1- Enable Reverse Host Lookups:*
```bash 
sudo echo "hosts: files dns" >> /etc/nsswitch.conf
```

*2- Configure Host Records:*
```bash
vim /etc/hosts
#make sure to make all hosts resovable to each other
``` 

*3- Configure Ulimits (file descriptors) :*
```bash
ulimit -S -n
ulimit -H -u
# the output must be same to values below, so please update it and relogin to your shell
```

```bash
vim /etc/security/limits.d/appdynamics.conf

root     soft    nofile          96000
root     hard    nofile          96000
root     hard	 nproc 		     65535
root    soft 	nproc	         65535 
root    soft    memlock         unlimited
root    hard    memlock         unlimited
```


*4- Check Controller Disk Space:*
   Check the disk space of the controller ```df -h``` as it is profile dependent.

*5- Check the RAM and  swap space:*
   ```bash 
   free -h
   swapon -s
   ```
–  Check the RAM on the Controller to ensure it meets the profile requirements.
–  Ensure there is at least 10GB swap of free space available for the Controllers.
–  #### I personally recommend to turn it off the swap in the whole system
  
```bash
   swapoff -a
   vi /etc/fstab 
   # please add `#` to swap line to stop it to run againt system restart 
```

   
*6- Check /tmp space:*
   ```bash
   df -h /tmp
   ``` 
   - Ensure there is at least 1GB of free space available for the Enterprise Console.
   

   
*7- Create passwordless SSH connection:*
    - copy privet key of the enterprise console in a Notepad for later use in the GUI steps.
    - This Should Happen Between Enterprise and each controllers Vise-Versa and for R-sync to not fail.
    
### Adding SSH Passwordless Login

```bash 
scp ~/.ssh/myserver.pub host1:/tmp
scp ~/.ssh/myserver.pub host2:/tmp
scp ~/.ssh/myserver.pub host3:/tmp

cat /tmp/appd-analytics.pub >> .ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

# or skip all above by one coomand
ssh-copy-id user@server 
```



``` bash
# testing corect passwordless configarion
ssh hostname
# or
ssh hostname "echo success"
``` 


10- in centos Server these are important packages
```bash
 sudo yum install libaio1 -y
 sudo yum install numactl -y
 sudo yum install tzdata -y
 sudo yum install libncurses5 -y
 sudo yum install glibc -y
 sudo yum install curl -y
 sudo yum install netstat -y
 sudo yum install sysstat -y
 sudo yum install ntp -y 
 
 # or just as one line
 sudo yum install libaio1 numactl tzdata libncurses5 glibc curl netstat sysstat ntp -y

```
 
![[some-validations.png]]

![[controller sizing query.png]]