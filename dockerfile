FROM ubuntu

# Installer Apache2
RUN apt update && \
    apt install -y apache2 && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

# Démarrer Apache en avant-plan
CMD ["apachectl", "-D", "FOREGROUND"]
