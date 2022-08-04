 FROM ubuntu:20.04
 RUN apt update
 RUN apt install -y default-jdk
 WORKDIR /etc/projects
 RUN apt install -y maven
 RUN apt install -y git
 RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
 WORKDIR boxfuse-sample-java-war-hello
 RUN mvn package -e
# RUN mkdir /usr/share/tomcat9/conf
# RUN ln -s /etc/tomcat9/server.xml /usr/share/tomcat9/conf/server.xml

