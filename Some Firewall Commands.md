# Disable and stop firewalld
```
sudo systemctl stop firewalld
sudo systemctl disable firewalld
sudo systemctl mask --now firewalld
```

# Install iptables and enable it
```
yum install iptables-services
systemctl enable iptables
```

# Configure iptables
```
iptables -A INPUT -p tcp -m tcp --dport 9080 -m conntrack --ctstate NEW -j ACCEPT
iptables -A INPUT -p tcp -m tcp --dport 9081 -m conntrack --ctstate NEW -j ACCEPT
iptables -A INPUT -p tcp -m tcp --dport 9300:9400 -m conntrack --ctstate NEW -j ACCEPT
iptables-save
```

# Save the iptables configuration
```
service iptables save
```

# Verify the iptables configuration
```
netstat -anp | grep LISTEN | grep :9080
```

# Open port 9080 using firewall-cmd
```
firewall-cmd --zone=public --add-port=9080/tcp --permanent
```

# Open port 9080 using ufw
```
sudo ufw allow 9080/tcp
```

# Enable SSH
```
sudo ufw allow 22/tcp
sudo ufw reload
```

# Install EPEL and UFW
```
yum install -y epel-release
yum install -y ufw
```

# Kill any processes using ports 80 and 443
```
sudo fuser -k 80/tcp
sudo fuser -k 443/tcp
```
