# Start with a base image containing Java runtime
FROM openjdk:11-slim

# Add maintainer info
LABEL maintainer="Frota Silveira <frota.gm@gmail.com>"

# The application's jar file (set by dockerfile-maven-plugin in pom.xml)
ARG JAR_FILE

# Add the application's jar to the container
COPY ${JAR_FILE} app.jar

# Execute the application
ENTRYPOINT ["java", "-jar", "/app.jar"]
