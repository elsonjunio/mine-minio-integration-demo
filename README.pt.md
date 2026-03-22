**🇧🇷 Português** | [🇬🇧 English](./README.md)

# Mine Build — Console de Armazenamento

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](./LICENSE)

Plataforma de gerenciamento de armazenamento S3-compatível, auto-hospedada, construída sobre o MinIO. Inclui autenticação via Keycloak, backend Python (FastAPI), frontend Angular e um agente de IA opcional.

---

## Arquitetura

```
┌─────────────────────────────────────────────────────────┐
│                       Navegador                         │
└──────────────────────┬──────────────────────────────────┘
                       │ :8080
              ┌────────▼────────┐
              │   UI (nginx)    │  SPA Angular + proxy reverso
              └──┬──────────┬───┘
           /api/ │          │ /agent/
     ┌───────────▼──┐  ┌────▼────────────┐
     │   Backend    │  │  Agent (opc.)   │  ← profile Docker: agent
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

| Serviço   | Imagem / Fonte                             | Porta(s)        | Descrição                             |
|-----------|--------------------------------------------|-----------------|---------------------------------------|
| ui        | `elsonjunio/mine-storage-console`          | 8080            | SPA Angular servida pelo nginx        |
| backend   | `elsonjunio/mine-storage-console`          | 8000            | FastAPI + adaptador MinIO             |
| agent     | `elsonjunio/mine-ai-agent-service`         | 8001            | Agente de IA — **opcional**           |
| minio     | `minio/minio:RELEASE.2025-09-07T16-13-09Z` | 9010 / 9011     | API S3 / Console de administração     |
| keycloak  | `keycloak/keycloak:24.0`                   | 8081            | Provedor de identidade OpenID Connect |
| postgres  | `postgres:16`                              | —               | Banco de dados do Keycloak            |
| redis     | `redis:7-alpine`                           | 6379            | Camada de cache                       |

---

## Pré-requisitos

- [Docker](https://docs.docker.com/get-docker/) ≥ 24
- Plugin [Docker Compose](https://docs.docker.com/compose/) (incluso no Docker Desktop)
- Acesso à internet na primeira build (imagens e código-fonte são baixados do GitHub)

---

## Início Rápido

### 1. Clone este repositório

```bash
git clone https://github.com/elsonjunio/mine-minio-integration-demo.git
cd mine-build
```

### 2. Suba o stack principal

```bash
docker compose up -d
```

Todos os serviços, exceto o `agent`, são iniciados. Aguarde cerca de 60 segundos para que o Keycloak conclua a inicialização na primeira execução.

### 3. Acesse as interfaces

| Interface              | URL                         | Credenciais padrão           |
|------------------------|-----------------------------|------------------------------|
| Console de Armazenamento | http://localhost:8080     | *(login via Keycloak)*       |
| Docs da API Backend    | http://localhost:8000/docs  | —                            |
| Admin do Keycloak      | http://localhost:8081       | `admin` / `admin`            |
| Console MinIO          | http://localhost:9011       | `minioadmin` / `senha_forte` |

---

## Opcional: Agente de IA

O agente de IA conecta-se a um LLM local via [LM Studio](https://lmstudio.ai/) e oferece interação em linguagem natural com o backend de armazenamento através de MCP.

### Subir com o agente

```bash
docker compose --profile agent up -d
```

### Habilitar o chat do agente no frontend

O frontend só exibe o chat do agente quando a variável `API_AGENT_BASE_URL` está definida. No `docker-compose.yaml` ela vem comentada por padrão. Descomente-a no serviço `ui` para ativar o chat:

```yaml
environment:
  API_BASE_URL: /api
  API_AGENT_BASE_URL: /agent   # descomente esta linha
```

Em seguida, reinicie o container da UI:

```bash
docker compose up -d ui
```

### Configurar o provedor de LLM

Antes de subir, edite as variáveis de ambiente do serviço `agent` no `docker-compose.yaml`:

```yaml
LMSTUDIO_URL: 'http://<seu-host-lmstudio>:1234/v1'
LMSTUDIO_MODEL: 'google/gemma-3n-e4b'
LMSTUDIO_EMBEDDING_MODEL: 'text-embedding-nomic-embed-text-v1.5'
```

O agente expõe sua API na porta **8001** e também é acessível pela UI em `/agent/`.

> **Observação:** o nginx resolve o hostname `agent` de forma preguiçosa (no momento da requisição, não na inicialização), portanto o container da UI sobe normalmente mesmo quando o profile `agent` não está ativo. Requisições para `/agent/*` retornam `502` enquanto o agente não estiver rodando.

---

## Detalhes dos Serviços

### Backend (`./backend`)

- **Framework:** FastAPI (Python 3.11)
- **Fonte:** [`elsonjunio/mine-storage-console`](https://github.com/elsonjunio/mine-storage-console) — tag definida pelo build arg `VERSION` (padrão `v0.1.3`)
- **Adaptador MinIO:** wheel [`mine-adapter-minio`](https://github.com/elsonjunio/mine-adapter-minio) instalado durante a build
- **Expõe:** endpoint MCP em `/mcp` (consumido pelo agente)

Variáveis de ambiente relevantes:

| Variável                 | Descrição                                        |
|--------------------------|--------------------------------------------------|
| `S3_ENDPOINT`            | Host:porta do MinIO (`minio:9000`)               |
| `S3_ACCESS_KEY`          | Usuário root do MinIO                            |
| `S3_SECRET_KEY`          | Senha root do MinIO                              |
| `KEYCLOAK_URL`           | URL base do Keycloak                             |
| `KEYCLOAK_REALM`         | Nome do realm (`infra`)                          |
| `KEYCLOAK_CLIENT_SECRET` | Secret do client no Keycloak                     |
| `INTERNAL_TOKEN_SECRET`  | Segredo compartilhado com o agente               |
| `REDIS_HOST`             | Hostname do Redis                                |

### Frontend (`./ui`)

- **Framework:** Angular (Node 20, build feito durante a criação da imagem)
- **Fonte:** [`elsonjunio/mine-storage-console`](https://github.com/elsonjunio/mine-storage-console) — tag definida pelo build arg `VERSION` (padrão `v0.1.4`)
- **Config em runtime:** o script `entrypoint.sh` gera `/usr/share/nginx/html/config.json` a partir das variáveis de ambiente ao iniciar o container — não é necessário rebuildar a imagem para alterar os endpoints

Variáveis de ambiente relevantes:

| Variável              | Descrição                                    |
|-----------------------|----------------------------------------------|
| `API_BASE_URL`        | Prefixo da API do backend (padrão `/api`)    |
| `API_AGENT_BASE_URL`  | Prefixo da API do agente (padrão `/agent`)   |
| `KEYCLOAK_URL`        | URL pública do Keycloak                      |
| `KEYCLOAK_REALM`      | Nome do realm                                |
| `KEYCLOAK_CLIENT_ID`  | Client ID OIDC do frontend                   |

### Agente de IA (`./ai-backend`)

- **Framework:** FastAPI (Python 3.11)
- **Fonte:** [`elsonjunio/mine-ai-agent-service`](https://github.com/elsonjunio/mine-ai-agent-service) — tag definida pelo build arg `VERSION` (padrão `v0.1.0`)
- **Profile:** `agent` — não iniciado por padrão
- **Volume de dados:** `./mine-ia-data` → `/app/data` (índices FAISS + resumos de funções)

Variáveis de ambiente relevantes:

| Variável                   | Descrição                                         |
|----------------------------|---------------------------------------------------|
| `MODEL_PROVIDER`           | Provedor de LLM (`lmstudio`)                      |
| `LMSTUDIO_URL`             | Endpoint compatível com OpenAI do LM Studio       |
| `LMSTUDIO_MODEL`           | Identificador do modelo de chat                   |
| `LMSTUDIO_EMBEDDING_MODEL` | Identificador do modelo de embeddings             |
| `MCP_URLS`                 | Array JSON com os endpoints MCP a conectar        |
| `INTERNAL_TOKEN_SECRET`    | Deve ser igual ao `INTERNAL_TOKEN_SECRET` do backend |

---

## Atualizando Versões dos Serviços

Cada imagem é construída a partir de uma tag Git específica. Para atualizar, altere o build arg `VERSION` no `docker-compose.yaml` e reconstrua:

```bash
# Exemplo: atualizar o backend para v0.1.4
# No docker-compose.yaml, defina VERSION: v0.1.4 em backend.build.args

docker compose build backend
docker compose up -d backend
```

Para forçar uma build limpa, ignorando o cache do Docker:

```bash
docker compose build --no-cache <serviço>
```

---

## Estrutura do Repositório

```
mine-build/
├── docker-compose.yaml     # Definição completa do stack
├── .gitignore
├── README.md               # Versão em inglês
├── README.pt.md            # Este arquivo (português)
├── backend/
│   └── Dockerfile          # Build do backend mine-storage-console
├── ai-backend/
│   └── Dockerfile          # Build do mine-ai-agent-service
├── ui/
│   ├── Dockerfile          # Build da UI Angular
│   ├── nginx.conf          # Configuração do proxy reverso
│   └── entrypoint.sh       # Gerador do config.json em runtime
├── db-init/
│   └── keycloak_dump.sql   # Seed do realm Keycloak (carregado na 1ª execução)
├── minio/                  # Volume de dados do MinIO (ignorado pelo git)
└── mine-ia-data/           # Volume de dados do agente (ignorado pelo git)
```

---

## Solução de Problemas

**Keycloak demora muito / backend não sobe**
Na primeira execução, o Keycloak executa uma migração completa do banco de dados. Os serviços `backend` e `minio` aguardam o healthcheck do Keycloak. Aguarde até 2 minutos no primeiro start.

**Agente retorna 502 pela UI**
O profile `agent` não está ativo. Inicie com:
```bash
docker compose --profile agent up -d agent
```
Verifique o status com `docker compose ps`.

**Login SSO no MinIO falha**
Certifique-se de que o Keycloak está acessível em `http://keycloak:8080` dentro da rede Docker e que o client `minio` existe no realm `infra` com a URI de redirecionamento `http://localhost:9011/oauth_callback`.

**Aviso sobre credenciais**
As credenciais padrão no `docker-compose.yaml` são apenas para desenvolvimento local. Altere todos os segredos (`KEYCLOAK_CLIENT_SECRET`, `INTERNAL_TOKEN_SECRET`, `S3_SECRET_KEY`, `KEYCLOAK_ADMIN_PASSWORD`) antes de qualquer deploy em produção ou ambiente compartilhado.

---

## Avisos de Marca Registrada

**MinIO®** é uma marca registrada da [MinIO, Inc.](https://min.io/)

Este projeto **não é afiliado, endossado ou patrocinado pela MinIO, Inc.** de nenhuma forma. O uso do nome e da marca MinIO nesta documentação é puramente descritivo (uso nominal permitido) para identificar o componente de software de terceiros do qual este projeto depende.

- Este projeto utiliza a imagem Docker oficial `minio/minio`, distribuída pela MinIO, Inc. sob a licença [GNU AGPL v3](https://www.gnu.org/licenses/agpl-3.0.html).
- "Mine Build" e "Mine" (conforme utilizados no nome deste projeto e de seus componentes) não são afiliados à marca MinIO®.
- Ao redistribuir ou implantar publicamente este stack, certifique-se de que seu uso está em conformidade com a [Política de Marcas Registradas da MinIO](https://min.io/compliance).

Todas as demais marcas registradas mencionadas (Keycloak, Docker, Angular, Redis, PostgreSQL) são propriedade de seus respectivos donos.

O código-fonte do **Mine Build** (Dockerfiles, arquivos de configuração e scripts neste repositório) é disponibilizado sob a [Licença MIT](./LICENSE). Esta licença se aplica apenas ao conteúdo original deste repositório e não se estende a componentes de terceiros (MinIO, Keycloak, etc.), que são regidos por suas próprias licenças.
