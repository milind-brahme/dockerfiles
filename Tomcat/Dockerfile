FROM tomcat:9.0
RUN apt-get update
RUN apt-get install vim -y
COPY ./tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY ./context.xml  /usr/local/tomcat/conf/tomcat-users.xml
RUN apt-get install tomcat9-admin -y
RUN rmdir /usr/local/tomcat/webapps
RUN mv /usr/local/tomcat/webapps.dist /usr/local/tomcat/webapps