FROM openjdk:23
COPY target/demo-docker-0.0.1-SNAPSHOT.jar demo-docker.jar
ENTRYPOINT ["java", "-jar","demo-docker.jar"]




