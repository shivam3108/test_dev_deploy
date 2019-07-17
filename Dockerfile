FROM openjdk:8-jre-alpine

COPY target/graphql_spring_boot_tutorial-0.0.1-SNAPSHOT.jar c2m-test-app.jar

# CMD /usr/bin/java -Xmx400m -Xms400m -jar graphql_spring_boot_tutorial-0.0.1-SNAPSHOT.jar \


# commit 2
# commit 3
#commit 4
#COMMIT 5

ENV JAVA_OPTS="-Xms512m -Xmx1024m"

ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar c2m-test-app.jar

EXPOSE 8080
