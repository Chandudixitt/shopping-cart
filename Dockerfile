# Use the official Tomcat image from the Docker Hub
FROM tomcat:9.0

# Remove the default ROOT web application
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy the WAR file to the webapps directory
COPY onlinebookstore.war /usr/local/tomcat/webapps/ROOT.war

# Expose the port Tomcat is running on
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
