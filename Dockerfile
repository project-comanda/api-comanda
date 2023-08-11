FROM maven:3.8.4-openjdk-17 AS build

COPY ./ ./

RUN mvn clean install

CMD ["java", "-jar", "target/*.jar"]