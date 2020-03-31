FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y \
    vim-tiny \
    ssh

RUN echo "chmod 600 ~/.ssh/config ~/.ssh/*.pem" >> /root/.bashrc

CMD [ "tail", "-f", "/dev/null" ]
