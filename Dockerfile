# Use an OpenJDK base image to run your Spring Boot app
FROM openjdk:21-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the compiled Spring Boot JAR file into the container
# Replace 'your-app-name.jar' with the actual name of your JAR file generated during the build process
COPY target/SpringThymeleaf2-0.0.1-SNAPSHOT.jar /app/SpringThymeleaf2.jar

# Expose the port that your app will run on
EXPOSE 9000

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "SpringThymeleaf2.jar"]
