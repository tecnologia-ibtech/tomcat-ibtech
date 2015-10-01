FROM tomcat:7.0.64-jre8

COPY lib/* /usr/local/tomcat/lib/

RUN mkdir -p /home/ibtech/apache-tomcat/ && \
    ln -s /usr/local/tomcat/logs /home/ibtech/apache-tomcat/logs
