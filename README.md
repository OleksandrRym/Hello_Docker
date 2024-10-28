## Hello Docker!
## Today I will show you how to create an image and upload it to DockerHub in 2 steps


## 1. Creating a Docker file in IDE

### Dockerfile

```dockerfile
FROM openjdk:23 
COPY target/demo-docker-0.0.1-SNAPSHOT.jar demo-docker.jar
ENTRYPOINT ["java", "-jar","demo-docker.jar"]
```
After in ide terminal write "mvn clean package"


## 2. Write commands for creating and pushing an image


### Open the terminal and select your project folder 
```
docker build -t demo-dpcker .   
```
### Check whether the image is build
```
docker image ls 
```
### Run
```
docker run -p 8080:8080 demo-docker
```

### Rename, Push, Pull
```
docker image tag demo-docker nickname/demo-docker   //Rename
docker image push nickname/demo-docker              //Push
docker pull nickname/demo-docker                    //Pull
```

