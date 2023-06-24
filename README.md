# nginx-container-https

##### Docker is required
 - this command from docker.io
<pre>
curl -fsSL https://get.docker.com -o get-docker.sh
</pre>

##### Steps to Setup 
1. setup certificates
2. docker-compose 
<pre>git clone https://github.com/ejbest66/nginx-container-https
cd nginx-container-https
bash cert-setup.sh
docker-compose build
docker-compose up -d
curl -k https:/localhost
</pre>

##### Other details
in browser - check valid certificate

