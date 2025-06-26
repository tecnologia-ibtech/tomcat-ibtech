FROM tomcat:9-jdk8

RUN rm -rf /usr/local/tomcat/webapps/*

COPY lib/* /usr/local/tomcat/lib/

EXPOSE 8089 8090 8091 8092

#TESTADO
