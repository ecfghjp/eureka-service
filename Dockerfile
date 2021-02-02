#Download node docker image java
#Build app#

# RUN stage
#
FROM openjdk:11-jre-slim
COPY target/*.jar /app/service-registry.jar
WORKDIR /app
CMD ["java","-jar","/app/service-registry.jar"]
#ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -jar /app/service-registry.jar" ]
