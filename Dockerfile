FROM centos

MAINTAINER JaiPrakash

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -O http://apachemirror.wuchna.com/tomcat/tomcat-8/v8.5.49/bin/apache-tomcat-8.5.49.tar.gz 
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-8.5.49/* /opt/tomcat/.
RUN yum -y install java
RUN java -version

WORKDIR /opt/tomcat/webapps
COPY target/durga.war durga.war

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
