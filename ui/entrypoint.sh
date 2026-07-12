#!/bin/sh
set -e

# --- config.json for Angular ---
CONFIG_FILE=/usr/share/nginx/html/config.json

cat <<EOF > $CONFIG_FILE
{
  "apiBaseUrl": "${API_BASE_URL:-http://localhost:8000}",
  "agentBackendUrl": "${API_AGENT_BASE_URL:-}",
  "keycloakUrl": "${KEYCLOAK_URL:-https://auth.ews.tec.br}",
  "keycloakRealm": "${KEYCLOAK_REALM:-infra}",
  "keycloakClientId": "${KEYCLOAK_CLIENT_ID:-minio}"
}
EOF

echo "Config generated:"
cat $CONFIG_FILE

# --- nginx.conf from template ---
export NGINX_RESOLVER="${NGINX_RESOLVER:-127.0.0.11}"
export NGINX_BACKEND_URL="${NGINX_BACKEND_URL:-http://backend:8000}"
export NGINX_AGENT_URL="${NGINX_AGENT_URL:-http://agent:8000}"

envsubst '${NGINX_RESOLVER} ${NGINX_BACKEND_URL} ${NGINX_AGENT_URL}' \
  < /etc/nginx/conf.d/default.conf.template \
  > /etc/nginx/conf.d/default.conf

exec "$@"
