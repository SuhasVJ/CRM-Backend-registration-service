# Use lightweight Java 17 image
FROM openjdk:17-jdk-slim

# Create app directory inside container
WORKDIR /app

# Copy the Spring Boot jar file into the container
COPY target/CRM-Backend-registration-service-0.0.1-SNAPSHOT.jar app.jar

# Expose port 8080 to the outside world
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
