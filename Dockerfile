FROM maven:3.8-jdk-11 AS build

WORKDIR /project

COPY ./package.json .
COPY ./javaapp/ /project

RUN npm install package.json
RUN mvn clean package

FROM openjdk:11-jre-slim

WORKDIR /app

COPY --from=build /project/target/helloworld-1.0-SNAPSHOT.jar ./

CMD ["java", "-jar", "./helloworld-1.0-SNAPSHOT.jar"]
