## Validation and Configuration of Prerequisites for AppDynamics
Before setting up AppDynamics, it is important to validate and configure the following prerequisites on each host in the environment.

1- Enable Reverse Host Lookups:
```sudo echo "hosts: files dns" >> /etc/nsswitch.conf```

2- Configure Host Records:
```vim /etc/hosts``` 

3- Configure Ulimits (file descriptors) :
```
ulimit -S -n
ulimit -H -u
```
and by editig
```
vim /etc/security/limits.d/appdynamics.conf
```
```
root     soft    nofile          96000
root     hard    nofile          96000
root     hard	 nproc 		65535
root    soft 	nproc	 65535 
root    soft    memlock         unlimited
root    hard    memlock         unlimited
```

4- Check Controller Disk Space:
   Check the disk space of the controller ```df -h``` as it is profile dependent.

5- Check swap space:
   ```swapon -s```   – Ensure there is at least 10GB of free space available for the Controllers.

   
6- Check /tmp space:
   ```df -h /tmp``` - Ensure there is at least 1GB of free space available for the Enterprise Console.
   
7- Check the RAM
```free -h```
   Check the RAM on the Controller to ensure it meets the profile requirements.
   
8- Create passwordless SSH connection:
    - copy privet key in a Notepad for later use in the GUI steps.
    - This Should Happen Between Enterprise and each controllers Vise-Versa and for R-sync to not fail.
    
    
    ssh-keygen -t rsa
    ssh-copy-id <user>@<other-controller-ip>
    

9- Test connectivity by ```ssh hostname``` 
or by ```ssh hostname "echo success"``` 

10- in centos Server these are important packages
```
 sudo yum install libaio1
 sudo yum install numactl
 sudo yum install tzdata
 sudo yum install libncurses5
 sudo yum install glibc 
```




  
