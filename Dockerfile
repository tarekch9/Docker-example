# Verwende ein offizielles Node.js-Laufzeit-Image als Basisimage
FROM node:14

# Setze das Arbeitsverzeichnis im Container
WORKDIR /app

# Kopiere die package.json und package-lock.json Dateien in das Arbeitsverzeichnis
COPY package*.json ./

# Installiere die Node.js-Abhängigkeiten
RUN npm install

# Kopiere den Rest der Anwendung in das Arbeitsverzeichnis
COPY . .

# Exponiere den Port, auf dem die Anwendung laufen wird
EXPOSE 3000

# Definiere den Befehl zum Starten der Anwendung
CMD ["npm", "start"]
