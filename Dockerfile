FROM n8nio/n8n

# Crée le répertoire de données à la main (au lieu d'utiliser VOLUME)
RUN mkdir -p /data && chown node:node /data

# Définis l'utilisateur node pour éviter les erreurs EACCES
USER node

# Répertoire de travail
WORKDIR /data

# Démarre n8n
CMD ["n8n"]

