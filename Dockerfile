FROM maven:3.8-jdk-11 AS build

WORKDIR /project

COPY ./coa-2.0.3.tar .
COPY ./javaapp/ /project

RUN npm install coa-2.0.3.tar
RUN mvn clean package

FROM openjdk:11-jre-slim

WORKDIR /app

COPY --from=build /project/target/helloworld-1.0-SNAPSHOT.jar ./

CMD ["java", "-jar", "./helloworld-1.0-SNAPSHOT.jar"]
