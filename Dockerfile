FROM eclipse-temurin:8-jre
EXPOSE 8080
COPY target/*.jar /usr/app/app.jar
WORKDIR /usr/app
ENTRYPOINT ["java", "-jar", "app.jar"]
