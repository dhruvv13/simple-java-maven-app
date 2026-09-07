FROM eclipse-temurin:21-jre
EXPOSE 8080
COPY target/*.jar /usr/app/app.jar
WORKDIR /usr/app
# Yeh infinite loop app ko zinda rakhega taaki pod CrashLoopBackOff me na jaye
ENTRYPOINT ["sh", "-c", "java -jar app.jar && tail -f /dev/null"]
