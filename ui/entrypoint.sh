#!/bin/sh
set -e

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

exec "$@"