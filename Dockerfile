FROM tomcat:8.0-alpin
LABEL maintainer="SunnyEdurekaProject"
RUN mkdir -p /pgpedureka/
COPY PGPPipeline/ .
EXPOSE 8080
COPY /target/ABCtechnologies-1.0.war /usr/local/tomcat/webapps/
CMD["catalina.sh", "run"]

