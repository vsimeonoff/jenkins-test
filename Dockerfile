FROM java:8-jre
ADD target/jenkins-test-0.0.1.jar app.jar

RUN wget -P /tmp/ https://get.docker.com/builds/Linux/x86_64/docker-1.12.6.tgz && \
    tar -xvf /tmp/docker-1.12.6.tgz --directory /tmp/ && \
    mv /tmp/docker/docker /usr/local/bin

ENTRYPOINT ["sh", "-c", "java -Xmx256m -jar /app.jar"]

EXPOSE 8080