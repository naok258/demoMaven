FROM eclipse-temurin:17-jdk-alpine
ARG JAR_FILE=target/demoMaven-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080
CMD ["java","-jar","/app.jar"]