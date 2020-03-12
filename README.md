# Nginx-Letsencrypt Docker

domain test: example.loc

docker build -t test-nginx-letsencrypt -f Dockerfile .

docker run -v $PWD/certs:/etc/letsencrypt -e DOMAIN=example.loc -e EMAIL=trungg.dev@abc.com -p 80:80 -p 443:443 -d test-nginx-letsencrypt:latest



domain: exampless.gq

docker build -t minhtrung/nginx-letsencrypt -f Dockerfile .

docker run -v $PWD/certs:/etc/letsencrypt -e DOMAIN=exampless.gq -e EMAIL=trungg.dev@abc.com -p 80:80 -p 443:443 -d minhtrung/nginx-letsencrypt:latest


