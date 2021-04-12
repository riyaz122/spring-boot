FROM openjdk:8-alpine

# Required for starting application up.
RUN apk update && apk add /bin/sh

RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app

COPY /var/lib/jenkins/workspace/pipeline kubernetes/target/helloworld-1.1.jar $PROJECT_HOME/helloworld-1.1.jar

WORKDIR $PROJECT_HOME

CMD ["java" ,"-jar","./helloworld-1.1.jar"]
