FROM tomcat:8.5-jre8  

RUN echo "export JAVA_OPTS=\"-Dapp.env=staging\"" > /usr/local/tomcat/bin/setenv.sh  
COPY ./pgstudio.war /usr/local/tomcat/webapps/pgstudio.war
COPY ./server.xml /usr/local/tomcat/conf/

CMD ["catalina.sh", "run"]  
