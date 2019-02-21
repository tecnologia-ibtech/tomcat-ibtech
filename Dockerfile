FROM tomcat:9.0.16-jre8

RUN rm -rf /usr/local/tomcat/webapps/*

COPY lib/* /usr/local/tomcat/lib/
