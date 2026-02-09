# Imagem personalizada do nginx, instala o ping e o curl para comunicação com outros containers
# Substitui a configuração padrão pelo nginx.conf


FROM nginx:latest

RUN apt-get update && \
    apt-get install -y iputils-ping curl

COPY nginx.conf /etc/nginx/nginx.conf

