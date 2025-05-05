#!/bin/bash
# Fix permissions at runtime
mkdir -p /home/node/.n8n
chmod 700 /home/node/.n8n
touch /home/node/.n8n/config
chmod 600 /home/node/.n8n/config

# Start n8n
exec n8n

