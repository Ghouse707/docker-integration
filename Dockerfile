# Minimal base image with JDK 21
FROM eclipse-temurin:21-jre

WORKDIR /app

# Copy your built JAR file from local system (after IntelliJ builds it)
COPY target/docker-jenkins-integration.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]