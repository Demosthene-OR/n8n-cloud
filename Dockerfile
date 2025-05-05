FROM n8nio/n8n

ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin

# Volume de config monté à runtime
VOLUME ["/home/node/.n8n"]

CMD ["n8n"]




