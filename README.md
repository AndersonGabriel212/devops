# Projeto Docker

Aluno

Projeto foi desenvolvido para a disciplina de Administração de Sistemas Abertos. O objetivo é criar uma infraestrutura automatizada para rodar um site WordPress usando Docker, com provisionamento feito pelo Vagrant e configuração automatizada pelo Ansible.

Requisitos: Vagrant, VirtualBox e Ansible previamente instalados

- Passo a passo:

1. git clone https://github.com/AndersonGabriel212/devops.git
 cd devops

2. Execução do vagrant
vagrant up

3. Acesse o WordPress
Abra o navegador, vá para: http://192.168.56.138:8080 e você verá a página de instalação do WordPress.

Arquivos do Projeto:

Vagrantfile - Cria a máquina virtual com Debian

playbook_ansible.yml - Instala Docker e sobe os containers

docker-compose.yml - Configura os containers WordPress, MySQL e Nginx

Dockerfile - Cria a imagem personalizada do Nginx

nginx.conf - Configura o balanceamento de carga

Imagem Docker personalizada:

Criei uma imagem do Nginx com: balanceamento de carga (camada 4) e ferramentas ping e curl instaladas. Está disponível no Docker Hub: anderson19995/nginx-lb-wordpress
