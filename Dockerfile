FROM openjdk:11.0.15-jdk

EXPOSE 8080
EXPOSE 8778

COPY java11-homework-mock-0.0.1-SNAPSHOT.jar /java11-homework-mock.jar
COPY jolokia-jvm.jar /jolokia-jvm.jar

CMD ["java", "-javaagent:jolokia-jvm.jar", "-jar", "java11-homework-mock.jar"]