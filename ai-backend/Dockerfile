# -------- build stage --------
FROM python:3.11-slim AS builder

ARG VERSION=v0.1.0

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /build

RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    curl \
    && rm -rf /var/lib/apt/lists/*

# instalar poetry
RUN pip install --no-cache-dir poetry

# baixar código da tag
RUN git clone --depth 1 --branch ${VERSION} https://github.com/elsonjunio/mine-ai-agent-service.git .

# configurar poetry
RUN poetry config virtualenvs.create false

# instalar dependências
RUN poetry install --no-interaction --no-ansi --no-root

# -------- runtime stage --------
FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# instalar curl (útil para healthchecks)
RUN apt-get update && apt-get install -y \
    curl \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# copiar dependências instaladas
COPY --from=builder /usr/local /usr/local

# copiar backend
COPY --from=builder /build/mine_ai_agent_service ./mine_ai_agent_service

EXPOSE 8000

CMD ["uvicorn", "mine_ai_agent_service.main:app", "--host", "0.0.0.0", "--port", "8000"]