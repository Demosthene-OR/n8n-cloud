FROM n8nio/n8n


# Définit le dossier de travail
WORKDIR /home/node

# Assure-toi que le répertoire de config existe et appartient à l'utilisateur node
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

# Définit l'utilisateur node (comme recommandé par l'image officielle)
USER node

# Définit le point d'entrée explicite (important pour Railway)
ENTRYPOINT ["/tini", "--"]

# Lance n8n
CMD ["n8n"]

