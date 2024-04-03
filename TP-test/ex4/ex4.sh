docker build -t ex4 .
docker run -p 8080:80 ex4
curl localhost:8080
docker inspect peaceful_keller