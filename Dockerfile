FROM amd64/debian:bullseye-20201012-slim

RUN apt-get -y update
RUN apt-get install -y openjdk-11-jre weasyprint
RUN apt-get -y clean
    
RUN ln -sf /usr/lib/jvm/java-11-openjdk-amd64/bin/java /usr/bin/java
    
ENTRYPOINT ["/usr/bin/java", "-jar"]
