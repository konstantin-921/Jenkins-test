FROM ubuntu:xenial-20180228

RUN apt-get -y update
RUN apt-get -y install apache2

COPY index.html /var/www/html/

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80