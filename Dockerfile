 FROM ubuntu:20.04
 RUN apt update
 RUN apt install -y default-jdk
 RUN apt install -y tomcat9
 EXPOSE 80
 RUN apt install -y maven
 RUN apt install -y git
 RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
 RUN cp  boxfuse-sample-java-war-hello
 RUN mvn package
 CMD [“catalina.sh”, “run”]
