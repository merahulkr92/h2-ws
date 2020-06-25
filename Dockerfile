#stage 1

FROM maven:3.5-jdk-8-alpine
WORKDIR /app
COPY . .
RUN mvn clean install

#stage 2
FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD ./app/target/h2-angular-0.0.1-SNAPSHOT.jar h2-ws.jar
ENTRYPOINT ["java","-jar","/h2-ws.jar"]