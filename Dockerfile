FROM eclipse-temurin:17-jdk-alpine
VOLUME /target
ARG JAR_FILE=demoMaven-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]

