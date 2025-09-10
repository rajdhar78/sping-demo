# Use Amazon Corretto 17 from AWS public ECR
FROM public.ecr.aws/amazoncorretto/amazoncorretto:17

# Install curl (if needed)
RUN yum install -y curl \
    && yum clean all

# Create a volume for temp files
VOLUME /tmp

# Copy the Spring Boot JAR into the image
COPY target/*.jar app.jar

# Run the application
ENTRYPOINT ["java","-jar","/app.jar"]
