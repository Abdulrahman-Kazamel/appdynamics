
```
upstream controllers {
 server 172.20.20.124:8090 fail_timeout=5s max_fails=3;
  }
server {
 listen 8090;
 location / {
 proxy_pass http://controllers;
 }
}
```