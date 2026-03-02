
FROM eclipse-temurin:21

WORKDIR /app

# Descargar el jar desde una URL pública
ADD https://github.com/yjvanegas/TestOCB_API/releases/download/1.12.0/fineract-provider-1.12.0-SNAPSHOT.jar /app/app.jar

COPY pentaho/lib/ /app/lib/
COPY pentaho/reports/ /app/pentahoReports/

EXPOSE 8080

ENTRYPOINT ["java","-Dloader.path=/app/lib","-Xmx1024m","-jar","/app/app.jar"]
