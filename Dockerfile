# docker build -t tiago-nginx .
# docker run --name tiago-nginx -p 80:80 -v ~/tiago_nginx/nginx.conf:/etc/nginx/nginx.conf:ro tiago-nginx
# docker run --name tiago-nginx --net=host -v ~/tiago_nginx/nginx.conf:/etc/nginx/nginx.conf:ro tiago-nginx

FROM nginx

COPY nginx.conf /etc/nginx/nginx.conf


# Trick your computer into thinking it owns a specific domain and test things
# To test you can edit /etc/hosts on your local machine, like this: (sudo required)
#127.0.0.1    example.com
#127.0.0.1    subdomain.example.com
#
