#!/bin/bash
# Fixer les permissions au lancement (Railway écrase les permissions sinon)
mkdir -p /home/node/.n8n
chmod 700 /home/node/.n8n
touch /home/node/.n8n/config
chmod 600 /home/node/.n8n/config

# Lancer n8n
exec n8n
