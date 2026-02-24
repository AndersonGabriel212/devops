# Projeto Docker-Vagrant-Ansible

Aluno: Anderson Gabriel Souza do Nascimento

O projeto consiste em criar um ambiente de servidor automatizado utilizando o conceito de Infraestrutura como Código (IaC). O objetivo final é que, ao executar um único comando, todo o servidor seja montado, configurado e a aplicação Wordpress esteja rodando em containers
Requisitos: Vagrant, VirtualBox e Ansible previamente instalados

1. Fluxo das etapas:

 O projeto funciona em uma "reação em cadeia":

.Vagrant: Cria a Máquina Virtual (VM) e chama o Ansible.

.Ansible: Entra na VM, instala o Docker e executa o Docker-compose.

.Docker: Sobe os containers (Banco de Dados, Wordpress e Proxy) para rodar o site.


- Passo a passo:

1. git clone https://github.com/AndersonGabriel212/devops.git
 cd devops

2. Execução do vagrant
vagrant up

3. Acesse o WordPress
Abra o navegador, vá para: http://192.168.56.108:8080 e você verá a página de instalação do WordPress.


. Arquivos do Projeto:

- Vagrantfile - Cria a máquina virtual com Debian
- playbook_ansible.yml - Instala Docker e sobe os containers
- docker-compose.yml - Configura os containers WordPress, MySQL e Nginx
- Dockerfile - Cria a imagem personalizada do Nginx
- nginx.conf - Configura o balanceamento de carga

Imagem Docker personalizada:

Criei uma imagem do Nginx com: balanceamento de carga (camada 4) e ferramentas ping e curl instaladas. Está disponível no Docker Hub: anderson19995/nginx-lb-wordpress
