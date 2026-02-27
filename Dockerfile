
FROM eclipse-temurin:21

WORKDIR /app

# Descargar el jar desde una URL pública
ADD https://github.com/yjvanegas/TestOCB_API/releases/download/1.12.0/fineract-provider-1.12.0-SNAPSHOT.jar /app/app.jar

EXPOSE 8080

ENTRYPOINT ["java","-Xmx1024m","-jar","/app/app.jar"]
