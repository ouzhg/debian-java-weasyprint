FROM amd64/debian:bullseye-20201012-slim

RUN mkdir -p /usr/share/man/man1 && \ 
    apt-get -y update && \
    apt-get install -y --no-install-recommends openjdk-11-jre-headless weasyprint fonts-noto fonts-noto-cjk && \
    apt-get -y clean && \
    ln -sf /usr/lib/jvm/java-11-openjdk-amd64/bin/java /usr/bin/java && \
    rm -rf /var/lib/apt/lists/*
    
ENTRYPOINT ["/usr/bin/java", "-jar"]
