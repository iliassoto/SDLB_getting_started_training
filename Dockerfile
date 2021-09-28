#
# Build stage
#
FROM maven:3.6.0-jdk-11-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml -Phadoop-3.2 package

#
# Package stage
#
FROM openjdk:11-jre-slim
COPY --from=build /home/app/target/getting-started-1.0.jar /opt/app/getting-started.jar
COPY --from=build /home/app/target/lib/*.jar /opt/app/lib/
ENTRYPOINT ["java","-Duser.dir=/mnt/data","-cp","/opt/app/getting-started.jar:/opt/app/lib/*","io.smartdatalake.app.LocalSmartDataLakeBuilder"]