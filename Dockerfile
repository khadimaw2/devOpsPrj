#image officielle Node.js
FROM node:18-alpine

#Répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers package.json et package-lock.json pour installer les dépendances
COPY package*.json ./

# Installation les dépendances
RUN npm install

# Copier tout le code source
COPY . .

# Exposer le port utilisé par ton application
EXPOSE 3000

# Commande pour démarrer l'application
CMD ["npm", "start"]
