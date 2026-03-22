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
RUN git clone --depth 1 --branch ${VERSION} https://github.com/elsonjunio/mine-storage-console.git .

# configurar poetry
RUN poetry config virtualenvs.create false

# instalar dependências
RUN poetry install --no-interaction --no-ansi --no-root

# copiar port do MinIO
RUN pip install https://github.com/elsonjunio/mine-adapter-minio/releases/download/v0.1.4/mine_adapter_minio-0.1.4-py3-none-any.whl



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
COPY --from=builder /build/mine_backend ./mine_backend

# copiar cliente mc do MinIO
COPY --from=minio/mc /usr/bin/mc /usr/bin/mc

RUN chmod +x /usr/bin/mc

EXPOSE 8000

CMD ["uvicorn", "mine_backend.main:app", "--host", "0.0.0.0", "--port", "8000"]