FROM tomcat:9.0-jre8-alpine

RUN rm -rf /usr/local/tomcat/webapps/*

COPY lib/* /usr/local/tomcat/lib/
