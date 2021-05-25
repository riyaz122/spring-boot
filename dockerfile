FROM hello-world

# Required for starting application u
RUN apt-get update

COPY target/helloworld-1.1.jar $PROJECT_HOME/helloworld-1.1.jar

WORKDIR $PROJECT_HOME

CMD ["java" ,"-jar","./helloworld-1.1.jar"]
