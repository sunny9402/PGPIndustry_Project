FROM tomcat:9.0
LABEL maintainer="SunnyEdurekaProject"
RUN mkdir -p /pgpedureka/
COPY PGPPipeline/ .
EXPOSE 8080
COPY /target/ABCtechnologies-1.0.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]

