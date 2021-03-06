FROM ubuntu
RUN apt-get update -y && apt-get install nginx -y && rm /var/www/html/*.html
COPY index.html /usr/share/nginx
COPY index.html /var/www/html/
EXPOSE 80
CMD nginx -g 'daemon off;'
