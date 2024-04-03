FROM nginx:latest

VOLUME /usr/share/nginx/html/

COPY ./fichier.zip /usr/share/nginx/html/

RUN apt update && \
    apt install -y unzip && \
    rm /usr/share/nginx/html/index.html && \
    unzip /usr/share/nginx/html/fichier.zip -d /usr/share/nginx/html/ && \
    rm /usr/share/nginx/html/fichier.zip