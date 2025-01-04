docker build -t php56 -f Dockerfile.php56 .
docker run -d -p 56:80 -v /home/giordano/dev/www:/var/www/html --name php56 php56
