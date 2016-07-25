FROM davidcaste/alpine-tomcat:latest

WORKDIR /opt/tomcat/webapps/
RUN mkdir mydemoapp
WORKDIR /opt/tomcat/webapps/mydemoapp

RUN echo "Demo app deployed on Alpine Tomcat in a Docker container" > index.html

CMD bash /opt/tomcat/bin/catalina.sh run
