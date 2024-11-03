# Hello Docker 🐳
## Today I will show you how to create an image and upload it to DockerHub in 2 steps

## 1. Creating a Dockerfile in IDE

### Dockerfile

```dockerfile
FROM openjdk:23 
COPY target/demo-docker-0.0.1-SNAPSHOT.jar demo-docker.jar
ENTRYPOINT ["java", "-jar","demo-docker.jar"]
```

In this Dockerfile:

- `FROM openjdk:23`: Specifies that the base image will be OpenJDK version 23.
- `COPY target/demo-docker-0.0.1-SNAPSHOT.jar demo-docker.jar`: Copies the JAR file from your project into the container, renaming it to `demo-docker.jar`.
- `ENTRYPOINT ["java", "-jar","demo-docker.jar"]`: Specifies the command that will be executed when the container starts, in this case, running the JAR file.

After creating the Dockerfile, open the IDE terminal and run the following command:

```bash
mvn clean package
```

This command will compile your project and create the JAR file.

## 2. Commands for Creating and Pushing an Image
### Open the terminal and select your project folder 
```bash
docker build -t demo-docker .   
```

This command builds the Docker image based on your Dockerfile. The `-t demo-docker` option assigns a tag to the image.
<br><br>
### Check whether the image is built
```bash
docker image ls 
```

This command lists all Docker images on your machine, allowing you to verify if your image was created successfully.
<br><br>
### Run
```bash
docker run -p 8080:8080 demo-docker
```

This command runs a container based on the `demo-docker` image, mapping port 8080 of your local environment to port 8080 of the container, allowing you to access the service.
<br><br>
### Rename, Push, Pull
```bash
docker image tag demo-docker nickname/demo-docker   // Rename
```
This command renames your image from `demo-docker` to `nickname/demo-docker`, where `nickname` is your DockerHub username.

```bash
docker image push nickname/demo-docker              // Push
```
This command uploads your image to your account on DockerHub.

```bash
docker pull nickname/demo-docker                    // Pull
```
This command retrieves the image from DockerHub to your local machine.

