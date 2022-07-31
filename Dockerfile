 FROM ubuntu:20.04
 RUN apt update
 RUN apt install -y default-jdk
 RUN apt install -y tomcat9
 EXPOSE 80
 RUN apt install -y maven
 RUN apt install -y git
 RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
 RUN cd boxfuse-sample-java-war-hello
 RUN mvn package
 RUN cp /target/hello-1.0 /var/lib/tomcat9/webapps/
 CMD [“catalina.sh”, “run”]