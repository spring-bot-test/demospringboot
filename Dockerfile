FROM maven:3.8.6-openjdk-18 AS build
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline
COPY src ./src
RUN mvn clean package -DskipTests

#Create the final image
FROM openjdk:18-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
RUN chown -R spring:spring /app
USER spring:spring
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]