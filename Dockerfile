FROM n8nio/n8n

# Créer le dossier data en tant que root
USER root
RUN mkdir -p /data && chmod -R 775 /data

# Utiliser l'utilisateur node intégré de l'image n8n (ID 1000)
USER 1000

# Définir le répertoire de travail
WORKDIR /data

# Démarrer n8n
CMD ["n8n"]


