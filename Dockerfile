FROM tomcat:9.0.98-jdk8-corretto

RUN rm -rf /usr/local/tomcat/webapps/*

COPY lib/* /usr/local/tomcat/lib/

EXPOSE 8089 8090 8091 8092

#TESTADO
