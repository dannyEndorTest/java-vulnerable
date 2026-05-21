FROM eclipse-temurin:11-jdk-alpine
WORKDIR /app
COPY pom.xml ./
COPY src ./src
RUN mvn -B -o package || true
CMD ["java", "-cp", "src/main/java", "com.example.Application"]
