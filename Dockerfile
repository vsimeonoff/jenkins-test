FROM java:8-jre
ADD target/jenkins-test-0.0.1.jar app.jar

ENTRYPOINT ["sh", "-c", "java -Xmx256m -jar /app.jar"]

EXPOSE 8080