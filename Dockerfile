FROM n8nio/n8n

# Copie le script AVANT d’essayer de modifier ses droits
COPY docker-entrypoint.sh /docker-entrypoint.sh

# Rends le script exécutable
RUN chmod +x /docker-entrypoint.sh

# Utilise ce script comme point d’entrée
ENTRYPOINT ["/docker-entrypoint.sh"]




