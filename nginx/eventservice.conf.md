
```bash
# Upstream for events-service-api                                                                     
upstream events-service-api {                                                                         
    server 100.100.20.102:9080;
    server 100.100.20.103:9080;                                                                       
    server 100.100.20.104:9080;   
    keepalive 15;                                                                                      
}                                                                                                                                                                        

# Upstream for events-service-api-health                                                                                                                                 

upstream events-service-api-health {                                                                                                                                     

    server 100.100.20.102:9081;   
    server 100.100.20.103:9081;   
    server 100.100.20.104:9081;                                                                       
    keepalive 15;                                                                                      
}                                                                                                                                                                        

# Upstream for events-service-api-trans                                                                                                                                  

upstream events-service-api-trans {                                                                   
    server 100.100.20.102:9200;                                    
    server 100.100.20.103:9200; 
    server 100.100.20.104:9200;
    keepalive 15;                                                                                                                                                        

}                                                                                                                                                                        

# Server block for events-service-api on port 9080                                                                                                                       

server {                                                                                                   
    listen 9080;                                                                                      
    location / {                                                                                                                                                        
        proxy_pass http://events-service-api;                                                                 proxy_http_version 1.1;                                                                               proxy_set_header Connection "Keep-Alive";                                                             proxy_set_header Proxy-Connection "Keep-Alive";                                                                                                                  

    }                                                                                                                                                                    

}                                                                                                                                                                        

# Server block for events-service-api-health on port 9081                                                                                                                

server {                                                                                                                                                                 

    listen 9081;                                                                                                                                                         

    location / {                                                                                                                                                         
        proxy_pass http://events-service-api-health;  
        proxy_http_version 1.1;                                                                       
        proxy_set_header Connection "Keep-Alive";                                                     
        proxy_set_header Proxy-Connection "Keep-Alive";                                                
    }                                                                                                 
}                                                                                                                                                                        
# Server block for events-service-api-transfer on port 9200                                                                                                            
server {                                                                                                                                                                 
    listen 9200;                                                                                                                                                        
    location / {                                                                                                                                                         

        proxy_pass http://events-service-api-trans;                                                   
        proxy_http_version 1.1;                                                                       
        proxy_set_header Connection "Keep-Alive";                                                     
        proxy_set_header Proxy-Connection "Keep-Alive";                                                                                                                  

    }                                                                                                                                                                    

}

```