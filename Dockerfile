# docker build -t tiago-nginx .
# docker run --name tiago-nginx -p 80:80 -v ~/tiago_nginx/nginx.conf:/etc/nginx/nginx.conf:ro tiago-nginx
# docker run --name tiago-nginx --net=host -v ~/tiago_nginx/nginx.conf:/etc/nginx/nginx.conf:ro tiago-nginx

FROM nginx

COPY nginx.conf /etc/nginx/nginx.conf
