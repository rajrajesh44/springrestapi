FROM openjdk:8-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
ARG JAR_FILE=spring-boot-rest-api/*.jar
COPY --from=build /spring-boot-rest-api/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]