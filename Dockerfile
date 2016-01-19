FROM tomcat:7.0.64-jre8

RUN echo "deb http://http.debian.net/debian jessie contrib" >> /etc/apt/sources.list && \
    echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections && \
    apt-get update && \
    apt-get install -y libfreetype6 \
                       libfontconfig \
                       ttf-mscorefonts-installer && \
    mkdir -p /home/ibtech/apache-tomcat/logs && \
    rm -f /usr/local/tomcat/logs && \
    ln -s /home/ibtech/apache-tomcat/logs /usr/local/tomcat/logs
  
COPY lib/* /usr/local/tomcat/lib/
