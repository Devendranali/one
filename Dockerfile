# Use the official Tomcat base image with JDK 11
FROM tomcat:9.0-jdk11

# Remove any pre-existing web applications to ensure clean deployment
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file into the Tomcat webapps directory as ROOT.war
COPY target/myweb-8.6.5.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8081 to access the application
EXPOSE 8081

# Start Tomcat when the container runs
CMD ["catalina.sh", "run"]
