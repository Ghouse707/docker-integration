# Minimal base image with JDK 21
FROM eclipse-temurin:21-jre


# Copy your built JAR file from local system (after IntelliJ builds it)
COPY target/docker-jenkins-integration-sample.jar docker-jenkins-integration-sample.jar

EXPOSE 8081

ENTRYPOINT ["java", "-jar", "/docker-jenkins-integration-sample.jar"]