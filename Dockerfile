FROM openjdk:18-jdk-alpine
WORKDIR /app
COPY target/spring-boot-example-*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
