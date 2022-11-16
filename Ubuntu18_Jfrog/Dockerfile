FROM ubuntu:18.04
RUN echo 1
RUN mkdir -p /app
RUN mkdir -p /install
WORKDIR /install
COPY ./jfrog-artifactory-oss-7.46.11-linux.tar.gz .
RUN tar -zvxf jfrog-artifactory-oss-7.46.11-linux.tar.gz -C /app
RUN useradd -m jfrog
RUN chown -R jfrog /app 
COPY ./start.sh /home/jfrog/start.sh
RUN chown jfrog /home/jfrog/start.sh
USER jfrog
WORKDIR /home/jfrog

RUN mkdir -p cd /app/artifactory-oss-7.46.11/app/artifactory/tomcat/logs
#ENV JAVA_HOME /app/artifactory-oss-7.46.11/app/third-party/java
ENTRYPOINT [ "./start.sh"]