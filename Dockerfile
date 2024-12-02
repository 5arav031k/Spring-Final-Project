FROM openjdk:17 AS build
WORKDIR /workspace/app

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app-jira.jar

ARG CONFIG_FILE=src/main/resources/application-secrets.properties
COPY ${CONFIG_FILE} src/main/resources/application-secrets.properties

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app-jira.jar"]