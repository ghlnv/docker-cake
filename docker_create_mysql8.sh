# File: /docker_create_mysql8.sh
# Created: Friday, 20th September 2024 7:15:56 pm
# Author: Giordano LN

export $(grep -v '^#' .env | xargs)

docker run --name mysql8 -p 3308:3306 \
-v /home/giordano/dev/docker/mysql8:/var/lib/mysql \
-v /home/giordano/dev/docker/my.cnf:/etc/my.cnf \
-e MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD \
-d mysql:8
