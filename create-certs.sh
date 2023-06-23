mkdir certificates
cd certificates
#openssl genrsa -out privatekey.pem 2048
#openssl req -key privatekey.pem -new -out nextresearch.csr
#openssl x509 -signkey privatekey.pem -in nextresearch.csr -req -days 365 -out certificate.crt
# non-interactive and 10 years expiration
openssl req -x509 -newkey rsa:4096 -keyout privatekey.pem -out certificate.crt -sha256 -days 3650 -nodes -subj "/C=XX/ST=USA/L=CityName/O=Nextresearch/OU=Devops/CN=nextresearch.io"
cd ..
