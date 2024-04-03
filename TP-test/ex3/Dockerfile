FROM debian:latest

RUN apt update && \
    apt upgrade -y && \
    apt install -y curl nano

CMD ["sh", "-c", "nano index.html && cat index.html"]
