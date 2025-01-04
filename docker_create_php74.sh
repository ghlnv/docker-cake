docker build -t php74 -f Dockerfile.php74 .
docker run -d -p 74:80 -v /home/giordano/dev/www:/var/www/html --name php74 php74
