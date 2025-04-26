FROM tomcat:9.0-jdk11
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/myweb-8.6.5.war /usr/local/tomcat/webapps/*
Expose 8081
CMD ["catalina.sh", "run"]
