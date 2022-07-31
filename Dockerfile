 FROM ubuntu:20.04
 RUN apt update
 RUN apt install -y default-jdk
 RUN apt install -y tomcat9
 EXPOSE 80
 RUN apt install -y maven
 RUN apt install -y git
 RUN cd /etc/
 RUN mkdir projects
 WORKDIR /etc/projects
 RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
 WORKDIR boxfuse-sample-java-war-hello
 RUN mvn package -e
 WORKDIR target
 RUN pwd
 RUN ls -la
 RUN cp hello-1.0/ /var/lib/tomcat9/webapps/
 CMD [“catalina.sh”, “run”]