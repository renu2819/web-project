#using from

FROM ubuntu
LABEL maintainer=aashi
RUN apt update && apt install nginx -y
COPY  my-website  /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
