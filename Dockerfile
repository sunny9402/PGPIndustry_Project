FROM tomcat:8.0
LABEL maintainer="SunnyEdurekaProject"
RUN mkdir -p /pgpedureka/
COPY target/ .
EXPOSE 8080
ADD /target/ABCtechnologies-1.0.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
