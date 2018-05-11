# Docker Nginx Example
This is an example project that explains how to use nginx with docker.   
You can find the file structure of `nginx.conf` here. Don't forget to change it.   
[Reference](https://hub.docker.com/_/nginx/)

## Build the container
```
docker build -t docker_nginx .
```     

## Run the container
Considering that you cloned the project on your home folder
```
docker run --name docker_nginx --net=host -v ~/docker_nginx/nginx.conf:/etc/nginx/nginx.conf:ro docker_nginx
```

## (For Testing) Changing /etc/hosts
Trick your computer into thinking it owns a specific domain and test things   
To test you can edit /etc/hosts on your local machine, like this: (sudo required)
```
127.0.0.1    example.com
127.0.0.1    subdomain.example.com
```
