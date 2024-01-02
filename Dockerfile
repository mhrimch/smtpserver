# Verwenden Sie das offizielle OpenJDK-17-Image als Basis
FROM openjdk:17-jdk-alpine

# Festlegen des Arbeitsverzeichnisses im Container
WORKDIR /app

# Kopieren der JAR-Datei Ihrer Spring Boot-Anwendung in das Arbeitsverzeichnis
COPY target/*.jar /app/app.jar

# Exponieren des Ports, auf dem Ihre Anwendung läuft (angepasst je nach Ihrer Spring Boot-Anwendungskonfiguration)
EXPOSE 8888

# Kommando zum Ausführen Ihrer Anwendung beim Start des Containers
CMD ["java", "-jar", "app.jar"]
