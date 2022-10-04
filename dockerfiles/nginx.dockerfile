#we create this dockerfile to make sure we copy a snapshot of our configuration 
# and code into the image and we r not relying on just the bind mount, as it helps us only durking development
FROM nginx:stable-alpine

WORKDIR /etc/nginx/conf.d

COPY nginx/nginx.conf .

RUN mv nginx.conf default.conf

WORKDIR /var/www/html

COPY src .

#nginx has a default command so we dont have to specify it here