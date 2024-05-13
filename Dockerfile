FROM eclipse-temurin:17-jdk-alpine
ARG JAR_FILE=target/demoMaven-0.0.1-SNAPSHOT.jar.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]