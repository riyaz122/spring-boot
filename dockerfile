FROM openjdk:8-alpine

# Required for starting application up.
RUN apk update && apk add /bin/sh

RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app

COPY /var/lib/jenkins/.m2/repository/com/coveros/demo/helloworld/1.1/helloworld-1.1.jar $PROJECT_HOME/helloworld-1.1.jar

WORKDIR $PROJECT_HOME

CMD ["java" ,"-jar","./helloworld-1.1.jar"]
