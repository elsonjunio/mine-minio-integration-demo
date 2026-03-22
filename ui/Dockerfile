# -------- STAGE 1: build angular --------
FROM node:20-alpine AS build

ARG VERSION=v0.1.0
WORKDIR /build

RUN apk add --no-cache git

# clone do repositório
RUN git clone --depth 1 --branch ${VERSION} https://github.com/elsonjunio/mine-storage-console.git .

WORKDIR /build/mine_ui

RUN npm install
RUN npm run build

# -------- STAGE 2: runtime --------
FROM nginx:1.27-alpine

# remover config default
RUN rm -rf /usr/share/nginx/html/*

# copiar build
COPY --from=build /build/mine_ui/dist/mine_ui/browser /usr/share/nginx/html

COPY nginx.conf /etc/nginx/conf.d/default.conf

# copiar entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]