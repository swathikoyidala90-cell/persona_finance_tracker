# Use OpenJDK 17 (or the version you used locally)
FROM eclipse-temurin:17-jdk


# Set working directory inside the container
WORKDIR /app

# Copy project files into container
COPY . .

# Build the Spring Boot app
RUN ./mvnw clean package -DskipTests

# Run the application
CMD ["java", "-jar", "target/*.jar"]
