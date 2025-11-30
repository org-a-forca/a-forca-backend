FROM eclipse-temurin:11-jdk
ADD target/aforca-admin-api-docker.jar aforca-admin-api-docker.jar
ENTRYPOINT ["java", "-jar", "aforca-admin-api-docker.jar"]
EXPOSE 8080