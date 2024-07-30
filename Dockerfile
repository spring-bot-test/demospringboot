FROM openjdk:18-jdk-alpine
WORKDIR /app
COPY . /app/
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
