#Version: 0.0.1
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
RUN git clone https://github.com/chxuan/vimplus.git ~/.vimplus
WORKDIR  ~/.vimplus
RUN cd  ~/.vimplus && ./install.sh
