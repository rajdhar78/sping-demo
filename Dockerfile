# Use standard Amazon Corretto 17 image from public ECR
FROM public.ecr.aws/amazoncorretto/amazoncorretto:17
RUN apk add --no-cache curl
VOLUME /tmp
COPY target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
