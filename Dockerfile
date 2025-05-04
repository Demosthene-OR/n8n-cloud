# Utilise l'image officielle de n8n
FROM n8nio/n8n

# Optionnel : tu peux définir des variables d'environnement ici
ENV N8N_BASIC_AUTH_USER=olivier.renouard1103@gmail.com
ENV N8N_BASIC_AUTH_PASSWORD=sR110362$


# Port exposé par défaut
EXPOSE 5678
