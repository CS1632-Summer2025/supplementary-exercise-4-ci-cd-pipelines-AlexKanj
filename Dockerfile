# Stage 1: Build the app with Maven
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package

# Stage 2: Run the app using the packaged JAR
FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY --from=build /app/target/rentacat-solution-1.0.0.jar app.jar

# Optional: expose a port if this becomes a server
# EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
