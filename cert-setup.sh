#
# this will create and setup the certificates for the nginx container here 
# and place the certifiacates in /data/certbot/letsencrypt 

docker run --rm --name temp_certbot \
    -v ./data/certbot/letsencrypt:/etc/letsencrypt \
    -v ./data/certbot/www:/tmp/letsencrypt \
    -v ./data/servers-data/certbot/log:/var/log \
    certbot/certbot:v1.8.0 \
    certonly --webroot --agree-tos --renew-by-default \
    --preferred-challenges http-01 --server https://acme-v02.api.letsencrypt.org/directory \
    --text --email ej.best@outlook.com \
    -w /tmp/letsencrypt -d nextresearch.io


