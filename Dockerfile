# Step 1: Use Maven to build the Java app
FROM maven:3.8.5-openjdk-11 AS build
WORKDIR /app

# Copy project files
COPY . .

# Build the app (creates JAR inside /app/target)
RUN mvn clean package -DskipTests

# Step 2: Use a smaller JDK image for running
FROM openjdk:11-jre-slim
WORKDIR /app

# Copy JAR from build stage
COPY --from=build /app/target/habitica-demo-1.0-SNAPSHOT-jar-with-dependencies.jar app.jar

# Run the app
ENTRYPOINT ["java", "-jar", "app.jar"]

