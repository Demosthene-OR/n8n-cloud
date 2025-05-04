FROM n8nio/n8n

# Crée le dossier data sans changer d'utilisateur ni ownership
chmod 777 /data

# Définit le dossier de travail
WORKDIR /data

# Démarre n8n normalement
CMD ["n8n"]



