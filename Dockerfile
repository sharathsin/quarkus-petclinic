# Use a base image with Java and Git installed
FROM adoptopenjdk:11-jdk-hotspot as build

# Install Git
RUN apt-get update && \
    apt-get install -y git

# Clone the project from GitHub
RUN git clone https://github.com/sharathsin/quarkus-petclinic.git /app

# Navigate to the project directory
WORKDIR /app

# Build the project with Maven Wrapper (./mvnw)
RUN ./mvnw clean compile

# Use a smaller base image for the runtime
FROM adoptopenjdk:11-jre-hotspot

# Copy the built jar file from the build image


# Set the startup command
CMD ["java", "-jar", "/app/target/quarkus-app/quarkus-run.jar"]
