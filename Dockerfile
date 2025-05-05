FROM n8nio/n8n

# Copie le script custom d'entrée
COPY docker-entrypoint.sh /docker-entrypoint.sh

# Rends-le exécutable
RUN chmod +x /docker-entrypoint.sh

# Utilise ce script comme point d’entrée
ENTRYPOINT ["/docker-entrypoint.sh"]



