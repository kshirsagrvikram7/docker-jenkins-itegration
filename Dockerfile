# Start with a base image containing Java runtime
FROM openjdk:8

# Add Maintainer Info
LABEL maintainer="kshirsagarvikram7@gmail.com"

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8080

# The application's jar file
ARG JAR_FILE=target/docker-jenkins-itegration.jar

# Add the application's jar to the container
ADD ${JAR_FILE} docker-jenkins-itegration.jar

ENTRYPOINT ["java","-jar","/docker-jenkins-itegration.jar"]