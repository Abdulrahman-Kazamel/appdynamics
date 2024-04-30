# ERROR
```error
Setup requires at least 3573430 KB of free space to install, but the selected drive only has 1450032 KB available.
```

# Solution
Check if the required data directories have sufficient space:
```bash
df -h 
```
if you don't have sufficient space,  modify property 

```bash
controller_data_min_disk_space_in_mb in file controller-medium.groovy to lower value
at /platform-admin/archives/controller/<4.5>/playbooks/controller                                                                                                
```
