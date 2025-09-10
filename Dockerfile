FROM public.ecr.aws/amazoncorretto/amazoncorretto:17-alpine-jdk
RUN apk add curl
VOLUME /tmp
EXPOSE 8080
ADD target/spring-deploy-aws.jar spring-deploy-aws.jar
ENTRYPOINT ["java","-jar","/spring-deploy-aws.jar"]
