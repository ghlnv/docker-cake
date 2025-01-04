# File: docker_create_mysql57.sh
# Created: Friday, 20th September 2024 7:16:18 pm
# Author: Giorano LN

export $(grep -v '^#' .env | xargs)

docker run --name mysql57 -p 3307:3306 \
-v /home/giordano/dev/docker/mysql57:/var/lib/mysql \
-e MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD \
-d mysql:5.7
