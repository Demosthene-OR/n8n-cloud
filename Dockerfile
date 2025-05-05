FROM n8nio/n8n

# Travailler dans le bon répertoire
WORKDIR /home/node

# Crée le répertoire avant que le volume le masque
RUN mkdir -p /home/node/.n8n

# Copie un script d’entrée qui corrigera les permissions au runtime
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

# Utilise node pour exécuter
USER node

ENTRYPOINT ["/tini", "--"]
CMD ["/docker-entrypoint.sh"]


