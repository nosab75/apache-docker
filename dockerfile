FROM ubuntu:24.04
RUN apt update && apt install -y apache2 && \
    rm -rf /var/lib/apt/lists/* && apt clean
CMD ["apachectl","-D","FOREGROUND"]
