[🇧🇷 Português](./README.pt.md) | **🇬🇧 English**

# Mine Build — Storage Console

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](./LICENSE)

A self-hosted S3-compatible storage management platform built on MinIO, with Keycloak-based authentication, a Python REST backend, an Angular frontend, and an optional AI agent.

---

## Architecture

```
┌─────────────────────────────────────────────────────────┐
│                        Browser                          │
└──────────────────────┬──────────────────────────────────┘
                       │ :8080
              ┌────────▼────────┐
              │   UI (nginx)    │  Angular SPA + reverse proxy
              └──┬──────────┬───┘
           /api/ │          │ /agent/
     ┌───────────▼──┐  ┌────▼────────────┐
     │   Backend    │  │  Agent (opt.)   │  ← Docker profile: agent
     │  :8000       │  │  :8001          │
     └──┬──┬──┬─────┘  └────────────────┘
        │  │  │
   ┌────┘  │  └──────────┐
   ▼       ▼             ▼
MinIO   Keycloak       Redis
:9010   :8081          :6379
        │
        ▼
     Postgres
```

| Service   | Image / Source                             | Port(s)         | Description                        |
|-----------|--------------------------------------------|-----------------|------------------------------------|
| ui        | `elsonjunio/mine-storage-console`          | 8080            | Angular SPA served by nginx        |
| backend   | `elsonjunio/mine-storage-console`          | 8000            | FastAPI + MinIO adapter            |
| agent     | `elsonjunio/mine-ai-agent-service`         | 8001            | AI agent — **optional**            |
| minio     | `minio/minio:RELEASE.2025-09-07T16-13-09Z` | 9010 / 9011     | S3 API / Admin console             |
| keycloak  | `keycloak/keycloak:24.0`                   | 8081            | OpenID Connect identity provider   |
| postgres  | `postgres:16`                              | —               | Keycloak database                  |
| redis     | `redis:7-alpine`                           | 6379            | Cache layer                        |

---

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/) ≥ 24
- [Docker Compose](https://docs.docker.com/compose/) plugin (included in Docker Desktop)
- Internet access during the first build (images and source code are pulled from GitHub)

---

## Quick Start

### 1. Clone this repository

```bash
git clone <this-repo-url>
cd mine-build
```

### 2. Start the core stack

```bash
docker compose up -d
```

All services except `agent` are started. Wait about 60 seconds for Keycloak to finish its first-run initialization.

### 3. Access the interfaces

| Interface          | URL                         | Default credentials          |
|--------------------|-----------------------------|------------------------------|
| Storage Console UI | http://localhost:8080       | *(Keycloak login)*           |
| Backend API docs   | http://localhost:8000/docs  | —                            |
| Keycloak Admin     | http://localhost:8081       | `admin` / `admin`            |
| MinIO Console      | http://localhost:9011       | `minioadmin` / `senha_forte` |

---

## Optional: AI Agent

The AI agent connects to a local LLM via [LM Studio](https://lmstudio.ai/) and provides natural-language interaction with the storage backend through MCP.

### Start with the agent

```bash
docker compose --profile agent up -d
```

### Enable the agent chat in the UI

The frontend only shows the agent chat when `API_AGENT_BASE_URL` is set. In `docker-compose.yaml` this variable is commented out by default. Uncomment it in the `ui` service to activate the chat:

```yaml
environment:
  API_BASE_URL: /api
  API_AGENT_BASE_URL: /agent   # uncomment this line
```

Then restart the UI container:

```bash
docker compose up -d ui
```

### Configure the LLM provider

Edit the `agent` service environment variables in `docker-compose.yaml` before starting:

```yaml
LMSTUDIO_URL: 'http://<your-lmstudio-host>:1234/v1'
LMSTUDIO_MODEL: 'google/gemma-3n-e4b'
LMSTUDIO_EMBEDDING_MODEL: 'text-embedding-nomic-embed-text-v1.5'
```

The agent exposes its API on port **8001** and is also accessible through the UI at `/agent/`.

> **Note:** nginx resolves the `agent` hostname lazily (at request time, not at startup), so the UI container starts correctly even when the agent profile is not active. Requests to `/agent/*` will return `502` when the agent is not running.

---

## Service Details

### Backend (`./backend`)

- **Framework:** FastAPI (Python 3.11)
- **Source:** [`elsonjunio/mine-storage-console`](https://github.com/elsonjunio/mine-storage-console) — tag set by `VERSION` build arg (default `v0.1.3`)
- **MinIO adapter:** [`mine-adapter-minio`](https://github.com/elsonjunio/mine-adapter-minio) wheel installed at build time
- **Exposes:** MCP endpoint at `/mcp` (consumed by the agent)

Key environment variables:

| Variable                 | Description                              |
|--------------------------|------------------------------------------|
| `S3_ENDPOINT`            | MinIO host:port (`minio:9000`)           |
| `S3_ACCESS_KEY`          | MinIO root user                          |
| `S3_SECRET_KEY`          | MinIO root password                      |
| `KEYCLOAK_URL`           | Keycloak base URL                        |
| `KEYCLOAK_REALM`         | Realm name (`infra`)                     |
| `KEYCLOAK_CLIENT_SECRET` | Client secret for the backend            |
| `INTERNAL_TOKEN_SECRET`  | Shared secret with the agent             |
| `REDIS_HOST`             | Redis hostname                           |

### Frontend (`./ui`)

- **Framework:** Angular (Node 20, built at image build time)
- **Source:** [`elsonjunio/mine-storage-console`](https://github.com/elsonjunio/mine-storage-console) — tag set by `VERSION` build arg (default `v0.1.4`)
- **Runtime config:** `entrypoint.sh` writes `/usr/share/nginx/html/config.json` from environment variables at container start — no image rebuild needed to change endpoints

Key environment variables:

| Variable              | Description                              |
|-----------------------|------------------------------------------|
| `API_BASE_URL`        | Backend API prefix (default `/api`)      |
| `API_AGENT_BASE_URL`  | Agent API prefix (default `/agent`)      |
| `KEYCLOAK_URL`        | Public Keycloak URL                      |
| `KEYCLOAK_REALM`      | Realm name                               |
| `KEYCLOAK_CLIENT_ID`  | Frontend OIDC client ID                  |

### AI Agent (`./ai-backend`)

- **Framework:** FastAPI (Python 3.11)
- **Source:** [`elsonjunio/mine-ai-agent-service`](https://github.com/elsonjunio/mine-ai-agent-service) — tag set by `VERSION` build arg (default `v0.1.0`)
- **Profile:** `agent` — not started by default
- **Data volume:** `./mine-ia-data` → `/app/data` (FAISS indices + function summaries)

Key environment variables:

| Variable                   | Description                                  |
|----------------------------|----------------------------------------------|
| `MODEL_PROVIDER`           | LLM provider (`lmstudio`)                    |
| `LMSTUDIO_URL`             | LM Studio OpenAI-compatible endpoint         |
| `LMSTUDIO_MODEL`           | Chat model identifier                        |
| `LMSTUDIO_EMBEDDING_MODEL` | Embedding model identifier                   |
| `MCP_URLS`                 | JSON array of MCP endpoints to connect to    |
| `INTERNAL_TOKEN_SECRET`    | Must match backend's `INTERNAL_TOKEN_SECRET` |

---

## Upgrading Service Versions

Each service image is built from a specific Git tag. To upgrade, change the `VERSION` build argument in `docker-compose.yaml` and rebuild:

```bash
# Example: upgrade backend to v0.1.4
# In docker-compose.yaml set VERSION: v0.1.4 under backend.build.args

docker compose build backend
docker compose up -d backend
```

Force a clean rebuild if Docker's layer cache causes stale builds:

```bash
docker compose build --no-cache <service>
```

---

## Repository Structure

```
mine-build/
├── docker-compose.yaml     # Full stack definition
├── .gitignore
├── README.md               # This file (English)
├── README.pt.md            # Portuguese version
├── backend/
│   └── Dockerfile          # Builds mine-storage-console backend
├── ai-backend/
│   └── Dockerfile          # Builds mine-ai-agent-service
├── ui/
│   ├── Dockerfile          # Builds Angular UI
│   ├── nginx.conf          # Reverse proxy config
│   └── entrypoint.sh       # Runtime config.json generator
├── db-init/
│   └── keycloak_dump.sql   # Keycloak realm seed (loaded on first run)
├── minio/                  # MinIO data volume (git-ignored)
└── mine-ia-data/           # AI agent data volume (git-ignored)
```

---

## Troubleshooting

**Keycloak takes too long / backend won't start**
Keycloak runs a full database migration on first run. The `backend` and `minio` services wait for its healthcheck to pass. Allow up to 2 minutes on the first start.

**Agent returns 502 through the UI**
The agent profile is not active. Start it with:
```bash
docker compose --profile agent up -d agent
```
Then check the container status with `docker compose ps`.

**MinIO SSO login fails**
Ensure Keycloak is reachable at `http://keycloak:8080` from within the Docker network and that the `minio` client exists in the `infra` realm with the redirect URI `http://localhost:9011/oauth_callback`.

**Credentials warning**
The default credentials in `docker-compose.yaml` are for local development only. Change all secrets (`KEYCLOAK_CLIENT_SECRET`, `INTERNAL_TOKEN_SECRET`, `S3_SECRET_KEY`, `KEYCLOAK_ADMIN_PASSWORD`) before any production or shared deployment.

---

## Trademark Notices

**MinIO®** is a registered trademark of [MinIO, Inc.](https://min.io/)

This project is **not affiliated with, endorsed by, or sponsored by MinIO, Inc.** in any way. The use of the MinIO name and logo in this documentation is purely descriptive (nominative fair use) to identify the third-party software component this project depends on.

- This project uses the official, unmodified `minio/minio` Docker image distributed by MinIO, Inc. under the [GNU AGPL v3](https://www.gnu.org/licenses/agpl-3.0.html) license.
- "Mine Build" and "Mine" (as used in this project's name and component names) are not affiliated with the MinIO® brand.
- If you redistribute or publicly deploy this stack, ensure your own usage complies with [MinIO's Trademark Policy](https://min.io/compliance).

All other trademarks mentioned (Keycloak, Docker, Angular, Redis, PostgreSQL) are the property of their respective owners.

The **Mine Build** source code (Dockerfiles, configuration files, and scripts in this repository) is released under the [MIT License](./LICENSE). This license applies only to the original content in this repository and does not extend to third-party components (MinIO, Keycloak, etc.), which are governed by their own licenses.
