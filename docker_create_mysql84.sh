#!/bin/bash

# File: /docker_create_mysql84.sh
# Created: Wednesday, 1st April 2026 4:17:51 pm
# Author: Giordano LN

# Carregar variáveis do .env (no mesmo diretório do script)
export $(grep -v '^#' .env | xargs)

# Rodar container MySQL 8.4
docker run --name mysql84 \
	-p 33084:3306 \
	-v ./mysql84:/var/lib/mysql \
	-v ./my.cnf:/etc/my.cnf \
	-e MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD \
	-d mysql:8.4