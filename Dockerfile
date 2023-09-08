FROM centos:centos7
MAINTAINER "Vaishali G Shejul"
RUN yum install httpd -y
RUN yum install git -y
RUN yum install docker -y
ADD hello.py
COPY hello.py /var/www/html/
ENV DocumentRoot=/var/www/html/
EXPOSE 80
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]
