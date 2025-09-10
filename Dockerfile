FROM eclipse-temurin:17-jdk-alpine
RUN apk add curl
VOLUME /tmp
EXPOSE 8080
ADD target/spring-deploy-aws.jar spring-deploy-aws.jar
ENTRYPOINT ["java","-jar","/spring-deploy-aws.jar"]
