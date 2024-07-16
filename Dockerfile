FROM openjdk:11.0.13-slim
EXPOSE 9090
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]