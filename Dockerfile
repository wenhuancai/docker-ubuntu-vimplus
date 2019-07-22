#nux-amd64.tar.gzVersion: 0.0.1
From ubuntu:18.04
MAINTAINER WenHuan Cai "452939854@qq.com"
RUN apt-get update 
RUN apt-get install -y sudo
RUN apt-get install -y git
RUN apt-get install -y lsb-core
RUN adduser --disabled-password --gecos '' cwh
RUN adduser cwh sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER cwh
WORKDIR ~
RUN git clone https://github.com/chxuan/vimplus.git ~/.vimplus
RUN cd  ~/.vimplus && ./install.sh 
RUN sudo curl -O https://dl.google.com/go/go1.12.7.linux-amd64.tar.gz
#COPY go1.12.7.linux-amd64.tar.gz go1.12.7.linux-amd64.tar.gz
RUN sudo tar -C /usr/local -xzf go1.12.7.linux-amd64.tar.gz
RUN export PATH=$PATH:/usr/local/go/bin
RUN sudo rm  go1.12.7.linux-amd64.tar.gz
