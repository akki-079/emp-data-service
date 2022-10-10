FROM tomcat
ADD target/emp-data-service-1.0.jar /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh","run"]