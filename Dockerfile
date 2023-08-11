FROM maven:3.8.4-openjdk-17 AS build

COPY ./ ./

RUN mvn clean install -DskipTests

CMD ["java", "-jar", "target/comanda-0.0.1-SNAPSHOT.jar"]