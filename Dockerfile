FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/h2-angular-0.0.1-SNAPSHOT.jar h2-ws.jar
ENTRYPOINT ["java","-jar","/h2-ws.jar"]