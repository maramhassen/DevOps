# Utiliser ton image locale pour éviter Docker Hub
FROM maramhassen/alpine5arctic2:1.1.1

# Installer tout ce dont tu as besoin
RUN apk add --no-cache openjdk11-jre bash curl

# Copier ton application
COPY . /app
WORKDIR /app

# Commande par défaut
CMD ["java", "-jar", "mon-projet.jar"]
