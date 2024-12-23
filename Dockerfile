# Utilisation de l'image OpenJDK 17
FROM openjdk:17

# Exposer le port 8080 (par défaut pour Spring Boot)
EXPOSE 8080

# Copier le fichier JAR généré dans le conteneur
ADD target/springboot-images-new.jar springboot-images-new.jar

# Spécifier la commande d'exécution de l'application Spring Boot
ENTRYPOINT ["java", "-jar", "/springboot-images-new.jar"]
