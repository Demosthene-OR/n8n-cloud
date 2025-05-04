FROM n8nio/n8n


# Définit le dossier de travail
WORKDIR /data

# Définit le point d'entrée explicite (important pour Railway)
ENTRYPOINT ["/tini", "--"]

# Lance n8n
CMD ["n8n"]

