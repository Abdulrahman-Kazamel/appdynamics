1. **Identify the Mounted Path**: Determine the mounted path where the AppDynamics controller is installed, for example, `/dev/mapper/centos-root`.
    
2. **Monitor Disk I/O Performance**: 
    Use the `iostat` command to monitor disk I/O performance on the mounted path:

```bash
# Check mounted / path 
df -h  
# Run iostat to monitor disk I/O performance 
yum -y install sysstat
nohup iostat -myxd <mount> 5 720 > /tmp/iostat.out 2>/tmp/iostat.err &
#for example
nohup iostat -myxd /dev/mapper/centos-root 5 720 > /tmp/iostat.out 2>/tmp/iostat.err &

tail -f /tmp/iostat.out
```

*Replace `<mount>` with the mounted path identified in the previous step.
This command will run the `iostat` command for 720 samples of 5-second intervals, saving the output to `/tmp/iostat.out` and errors to `/tmp/iostat.err`. 
`nohup` is used to run the command in the background.*

**Monitor Write Latency**: 
Monitor the write latency, indicated by the `w_await` metric, in the output of the `iostat` command:

   
```bash
   # Continuously monitor the iostat error file
   tail -f /tmp/iostat.err
   #run this command for 1 hour and keep an eye on w-await
```

*This command continuously monitors the `/tmp/iostat.err` file and displays updates in real-time. The `w_await` metric indicates the average time (in milliseconds) for a write operation to complete.*

 **Compare Write Latency**: 
 Compare the `w_await` metric to the desired maximum write latency, e.g., 3ms. If the `w_await` value consistently exceeds 3ms, consider increasing resources such as disk I/O or memory to improve performance.

 **Continuous Monitoring**:
  Continuously monitor the disk I/O performance to ensure it meets the desired maximum write latency requirement. Adjust resources as necessary to maintain optimal performance.
